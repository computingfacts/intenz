package uk.ac.ebi.intenz.webapp.controller;

import uk.ac.ebi.intenz.domain.exceptions.DomainException;
import uk.ac.ebi.intenz.webapp.utilities.IntEnzMessenger;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.PropertyResourceBundle;
import uk.ac.ebi.intenz.domain.constants.Status;
import uk.ac.ebi.intenz.domain.enzyme.EnzymeClass;
import uk.ac.ebi.intenz.domain.enzyme.EnzymeCommissionNumber;
import uk.ac.ebi.intenz.domain.enzyme.EnzymeEntry;
import uk.ac.ebi.intenz.domain.enzyme.EnzymeSubSubclass;
import uk.ac.ebi.intenz.domain.enzyme.EnzymeSubclass;
import uk.ac.ebi.intenz.domain.enzyme.EnzymeCommissionNumber.Type;
import uk.ac.ebi.intenz.domain.exceptions.EcException;
import uk.ac.ebi.intenz.mapper.EnzymeClassMapper;
import uk.ac.ebi.intenz.mapper.EnzymeEntryMapper;
import uk.ac.ebi.intenz.mapper.EnzymeSubSubclassMapper;
import uk.ac.ebi.intenz.mapper.EnzymeSubclassMapper;
import uk.ac.ebi.rhea.mapper.MapperException;

/**
 * This command processes all inquiries about EC numbers.
 *
 * @author Michael Darsow
 * @version 0.9 - 21-July-2003
 */
public class SearchECCommand extends DatabaseCommand {

  /**
   * @throws ServletException
   * @throws IOException
   */
  public void process() throws ServletException, IOException {
    String paramEc = request.getParameter("ec");
    String paramStatus = request.getParameter("status");
    EnzymeCommissionNumber ec = null;
    String forwardPageName = null;

    if (paramEc == null) {
      closeConnection();

      request.setAttribute("message", "The <b>ec</b> parameter has to be set to be able to search for an EC.");
      forward("/error.jsp");
      return;
    }

    // First check if the given EC is valid.
    try {
      ec = EnzymeCommissionNumber.valueOf(paramEc);
      if (ec == null) {
        closeConnection();

        request.setAttribute("message", "The EC <b>" + paramEc + "</b> you used with this inquiry is not valid.");
        forward("/error.jsp");
        return;
      }
    } catch (EcException e) {
      closeConnection();

      request.setAttribute("message", "The EC <b>" + paramEc + "</b> you used with this inquiry is not valid.");
      forward("/error.jsp");
      return;
    }

    switch (ec.getType()) {
      case CLASS:
        forwardPageName = setClassData(ec);
        break;
      case SUBCLASS:
        forwardPageName = setSubclassData(ec);
        break;
      case SUBSUBCLASS:
        forwardPageName = setSubSubclassData(ec);
        break;
      case ENZYME:
      case PRELIMINARY:
        forwardPageName = setEnzymeData(ec, getStatus(paramStatus, ec));
        break;
    }
    forward(forwardPageName);
  }
  
  /**
   * Adjusts the requested status.
   * @param paramStatus the requested status, if any.
   * @param ec the requested EC number.
   * @return
   */
	private Status getStatus(String paramStatus, EnzymeCommissionNumber ec){
		switch (ec.getType()) {
		case PRELIMINARY:
			return Status.PRELIMINARY;
		default:
			return paramStatus == null?
					Status.APPROVED :
					Status.fromCode(paramStatus);
		}
	}

  private String setClassData(EnzymeCommissionNumber ec) {
    assert ec != null;

    EnzymeClass enzymeClass = findEnzymeClass(ec);
    if (enzymeClass != null) {
      request.setAttribute("result", enzymeClass);
      return "/class.jsp";
    } else {
      if (request.getAttribute("message") != null) {
        return "/error.jsp";
      } else {
        request.setAttribute("message", "No entry found for EC: <b>" + ec.toString() + "</b>.");
        return "/notFound.jsp"; // No result found.
      }
    }
  }

  private String setSubclassData(EnzymeCommissionNumber ec) {
    assert ec != null;

    EnzymeSubclass enzymeSubclass = findEnzymeSubclass(ec);
    if (enzymeSubclass != null) {
      request.setAttribute("result", enzymeSubclass);
      return "/subclass.jsp";
    } else {
      if (request.getAttribute("message") != null) {
        return "/error.jsp";
      } else {
        request.setAttribute("message", "No entry found for EC: <b>" + ec.toString() + "</b>.");
        return "/notFound.jsp"; // No result found.
      }
    }
  }

  private String setSubSubclassData(EnzymeCommissionNumber ec) {
    assert ec != null;

    EnzymeSubSubclass enzymeSubSubclass = findEnzymeSubSubclass(ec);
    if (enzymeSubSubclass != null) {
      request.setAttribute("result", enzymeSubSubclass);
      return "/subsubclass.jsp";
    } else {
      if (request.getAttribute("message") != null) {
        return "/error.jsp";
      } else {
        request.setAttribute("message", "No entry found for EC: <b>" + ec.toString() + "</b>.");
        return "/notFound.jsp"; // No result found.
      }
    }
  }

  private String setEnzymeData(EnzymeCommissionNumber ec, Status status) {
    assert ec != null && status != null;
    EnzymeEntry enzymeEntry = findEnzymeEntry(ec, status);
    if (enzymeEntry != null) {
      request.setAttribute("result", enzymeEntry);
      return "/entry.jsp";
    } else {
      if (request.getAttribute("message") != null) {
        return "/error.jsp";
      } else {
        request.setAttribute("message", "No entry found for EC: <b>" + ec.toString() + "</b>.");
        return "/notFound.jsp"; // No result found.
      }
    }
  }

  /**
   * Calls the according <code>find()</code> method and handles empty results and SQL exceptions.
   *
   * @param ec Number of enzyme class to search for.
   * @return An <code>EnzymeClass</code> instance or <code>null</code>.
   */
  protected EnzymeClass findEnzymeClass(EnzymeCommissionNumber ec) {
    if (ec == null) throw new NullPointerException();

    EnzymeClass enzymeClass = null;
    ServletContext application = request.getSession().getServletContext();
    Map classes = (HashMap) application.getAttribute("classes");

    // Check if object already stored in the cache.
    if (classes.containsKey(ec)) {
      enzymeClass = (EnzymeClass) classes.get(ec);
      try {
        con.close(); // The connection is not needed.
      } catch (SQLException e) {
        IntEnzMessenger.sendError(this.getClass().toString(), e.getMessage(), (String) request.getSession().getAttribute("user"));
        request.setAttribute("message", "The following database error occured:\n" + e.getMessage() +
                                        this.databaseErrorMessage);
        return null;
      }
    } else { // If the object is not stored in the cache load it from the database.
      EnzymeClassMapper classMapper = new EnzymeClassMapper();
      try {
        enzymeClass = classMapper.find(Integer.toString(ec.getEc1()), con);
        if (enzymeClass != null) {
          classes.put(ec, enzymeClass);
          application.setAttribute("classes", classes);
        }
      } catch (SQLException e) {
        IntEnzMessenger.sendError(this.getClass().toString(), e.getMessage(), (String) request.getSession().getAttribute("user"));
        request.setAttribute("message", e.getMessage());
        return null;
      } catch (DomainException e) {
        PropertyResourceBundle applicationProperties = (PropertyResourceBundle) request.getSession().getServletContext().getAttribute("application_properties");
        IntEnzMessenger.sendError(this.getClass().toString(), applicationProperties.getString(e.getMessageKey()), (String) request.getSession().getAttribute("user"));
        request.setAttribute("message", e.getMessage());
        return null;
      } finally {
        try {
          con.close();
        } catch (SQLException e) {
          IntEnzMessenger.sendError(this.getClass().toString(), e.getMessage(), (String) request.getSession().getAttribute("user"));
          request.setAttribute("message", "The following database error occured:\n" + e.getMessage() +
                                          this.databaseErrorMessage);
          return null;
        }

      }
    }

    return enzymeClass;
  }

  /**
   * Calls the according <code>find()</code> method and handles empty results and SQL exceptions.
   *
   * @param ec Number of enzyme class to search for.
   * @return An <code>EnzymeClass</code> instance or <code>null</code>.
   * @throws NullPointerException if any of the parameters is <code>null</code>.
   */
  protected EnzymeSubclass findEnzymeSubclass(EnzymeCommissionNumber ec) {
    if (ec == null) throw new NullPointerException();

    EnzymeSubclass enzymeSubclass = null;
    ServletContext application = request.getSession().getServletContext();
    Map subclasses = (HashMap) application.getAttribute("subclasses");

    // Check if object already stored in the cache.
    if (subclasses.containsKey(ec)) {
      enzymeSubclass = (EnzymeSubclass) subclasses.get(ec);
      try {
        con.close(); // The connection is not needed.
      } catch (SQLException e) {
        IntEnzMessenger.sendError(this.getClass().toString(), e.getMessage(), (String) request.getSession().getAttribute("user"));
        request.setAttribute("message", "The following database error occured:\n" + e.getMessage() +
                                        this.databaseErrorMessage);
        return null;
      }
    } else { // If the object is not stored in the cache load it from the database.
      EnzymeSubclassMapper subclassMapper = new EnzymeSubclassMapper();
      try {
        enzymeSubclass = subclassMapper.find(Integer.toString(ec.getEc1()), Integer.toString(ec.getEc2()), con);
        if (enzymeSubclass != null) {
          subclasses.put(ec, enzymeSubclass);
          application.setAttribute("subclasses", subclasses);
        }
      } catch (SQLException e) {
        IntEnzMessenger.sendError(this.getClass().toString(), e.getMessage(), (String) request.getSession().getAttribute("user"));
        request.setAttribute("message", e.getMessage());
        return null;
      } catch (DomainException e) {
        PropertyResourceBundle applicationProperties = (PropertyResourceBundle) request.getSession().getServletContext().getAttribute("application_properties");
        IntEnzMessenger.sendError(this.getClass().toString(), applicationProperties.getString(e.getMessageKey()), (String) request.getSession().getAttribute("user"));
        request.setAttribute("message", e.getMessage());
        return null;
      } finally {
        try {
          con.close();
        } catch (SQLException e) {
          IntEnzMessenger.sendError(this.getClass().toString(), e.getMessage(), (String) request.getSession().getAttribute("user"));
          request.setAttribute("message", "The following database error occured:\n" + e.getMessage() +
                                          this.databaseErrorMessage);
          return null;
        }
      }
    }

    return enzymeSubclass;
  }

  /**
   * Calls the according <code>find()</code> method and handles empty results and SQL exceptions.
   *
   * @param ec Number of enzyme class to search for.
   * @return An <code>EnzymeClass</code> instance or <code>null</code>.
   * @throws NullPointerException if any of the parameters is <code>null</code>.
   */
  protected EnzymeSubSubclass findEnzymeSubSubclass(EnzymeCommissionNumber ec) {
    if (ec == null) throw new NullPointerException();

    EnzymeSubSubclass enzymeSubSubclass = null;
    ServletContext application = request.getSession().getServletContext();
    Map subsubclasses = (HashMap) application.getAttribute("subsubclasses");

    // Check if object already stored in the cache.
    if (subsubclasses.containsKey(ec)) {
      enzymeSubSubclass = (EnzymeSubSubclass) subsubclasses.get(ec);
      try {
        con.close(); // The connection is not needed.
      } catch (SQLException e) {
        IntEnzMessenger.sendError(this.getClass().toString(), e.getMessage(), (String) request.getSession().getAttribute("user"));
        request.setAttribute("message", "The following database error occured:\n" + e.getMessage() +
                                        this.databaseErrorMessage);
        return null;
      }
    } else { // If the object is not stored in the cache load it from the database.
      EnzymeSubSubclassMapper subSubclassMapper = new EnzymeSubSubclassMapper();
      try {
        enzymeSubSubclass = subSubclassMapper.find(ec.getEc1(), ec.getEc2(), ec.getEc3(), con);
        if (enzymeSubSubclass != null) {
          subsubclasses.put(ec, enzymeSubSubclass);
          application.setAttribute("subsubclasses", subsubclasses);
        }
      } catch (SQLException e) {
        IntEnzMessenger.sendError(this.getClass().toString(), e.getMessage(), (String) request.getSession().getAttribute("user"));
        request.setAttribute("message", e.getMessage());
        return null;
      } catch (DomainException e) {
        PropertyResourceBundle applicationProperties = (PropertyResourceBundle) request.getSession().getServletContext().getAttribute("application_properties");
        IntEnzMessenger.sendError(this.getClass().toString(), applicationProperties.getString(e.getMessageKey()), (String) request.getSession().getAttribute("user"));
        request.setAttribute("message", e.getMessage());
        return null;
      } finally {
        try {
          con.close();
        } catch (SQLException e) {
          IntEnzMessenger.sendError(this.getClass().toString(), e.getMessage(), (String) request.getSession().getAttribute("user"));
          request.setAttribute("message", "The following database error occured:\n" + e.getMessage() +
                                          this.databaseErrorMessage);
          return null;
        }
      }
    }

    return enzymeSubSubclass;
  }

  /**
   * Gets the type of the EC number.
   * <p/>
   * The following types are possible (in [] the value returned by this method):
   * <ul>
   * <li>Class EC (e.g. EC 1) [1]</li>
   * <li>Subclass EC (e.g. EC 1.1) [2]</li>
   * <li>Sub-subclass EC (e.g. EC 1.1.1) [3]</li>
   * <li>Entry EC (e.g. EC 1.1.1.1) [4]</li>
   * </ul>
   *
   * @param ec The EC string.
   * @return Integer code for the type.
   */
  protected int analyseECType(String ec) {
    int count = 0;
    for (StringTokenizer stringTokenizer = new StringTokenizer(ec, "."); stringTokenizer.hasMoreTokens();) {
      stringTokenizer.nextToken();
      count++;
    }

    return count;
  }


  // ------------------- PRIVATE METHODS ------------------------

  /**
   * Calls the according <code>find()</code> method and handles empty results and SQL exceptions.
   *
   * @param ec EC number of enzyme to search for.
   * @param status the enzyme status.
   * @return An <code>EnzymeEntry</code> instance or <code>null</code>.
   * @throws NullPointerException if any of the parameters is <code>null</code>.
   */
  protected EnzymeEntry findEnzymeEntry(EnzymeCommissionNumber ec, Status status) {
    if (ec == null || status == null) throw new NullPointerException();

    EnzymeEntry enzymeEntry = null;
    ServletContext application = request.getSession().getServletContext();
    Map entries = (HashMap) application.getAttribute("entries_ec");

    // Check if object already stored in the cache.
    EnzymeEntryCacheKey key = new EnzymeEntryCacheKey(ec, status);
    if (entries.containsKey(key)) {
      enzymeEntry = (EnzymeEntry) entries.get(key);
      try {
        con.close(); // The connection is not needed.
      } catch (SQLException e) {
        IntEnzMessenger.sendError(this.getClass().toString(), e.getMessage(),
        		(String) request.getSession().getAttribute("user"));
        request.setAttribute("message", "The following database error occured:\n"
        		+ e.getMessage() + this.databaseErrorMessage);
        return null;
      }
    } else {
      EnzymeEntryMapper enzymeEntryMapper = new EnzymeEntryMapper();
      try {
        Long enzyme_id = enzymeEntryMapper.findIDInMappingTable(ec.toString(),
        		status, con);
        if (enzyme_id.longValue() == -1) return null;
        enzymeEntry = enzymeEntryMapper.findById(enzyme_id, con);
        if (enzymeEntry != null) entries.put(key, enzymeEntry);
      } catch (SQLException e) {
        IntEnzMessenger.sendError(this.getClass().toString(), e.getMessage(),
        		(String) request.getSession().getAttribute("user"));
        request.setAttribute("message", e.getMessage());
        return null;
      } catch (MapperException e) {
          IntEnzMessenger.sendError(this.getClass().toString(), e.getMessage(),
          		(String) request.getSession().getAttribute("user"));
          request.setAttribute("message", e.getMessage());
          return null;
      } catch (DomainException e) {
        PropertyResourceBundle applicationProperties =
        	(PropertyResourceBundle) request.getSession().getServletContext()
        		.getAttribute("application_properties");
        IntEnzMessenger.sendError(this.getClass().toString(), 
        		applicationProperties.getString(e.getMessageKey()),
        		(String) request.getSession().getAttribute("user"));
        request.setAttribute("message", e.getMessage());
        return null;
	} finally {
        try {
          con.close();
        } catch (SQLException e) {
          IntEnzMessenger.sendError(this.getClass().toString(), e.getMessage(),
        		  (String) request.getSession().getAttribute("user"));
          request.setAttribute("message", "The following database error occured:\n"
        		  + e.getMessage() + this.databaseErrorMessage);
          return null;
        }
      }
    }

    return enzymeEntry;
  }

  private static class EnzymeEntryCacheKey {
    private EnzymeCommissionNumber ec;
    private Status status;

    public EnzymeEntryCacheKey(EnzymeCommissionNumber ec, Status status) {
      this.ec = ec;
      this.status = status;
    }

    public boolean equals(Object o) {
      if (this == o) return true;
      if (!(o instanceof SearchECCommand.EnzymeEntryCacheKey)) return false;

      final SearchECCommand.EnzymeEntryCacheKey enzymeEntryCacheKey =
    	  (SearchECCommand.EnzymeEntryCacheKey) o;

      if (ec != null ? !ec.equals(enzymeEntryCacheKey.ec) : enzymeEntryCacheKey.ec != null)
    	  return false;
      if (status != null ? !status.equals(enzymeEntryCacheKey.status) : enzymeEntryCacheKey.status != null)
    	  return false;

      return true;
    }

    public int hashCode() {
      int result;
      result = (ec != null ? ec.hashCode() : 0);
      result = 29 * result + (status != null ? status.hashCode() : 0);
      return result;
    }

    public String toString() {
      StringBuffer output = new StringBuffer();
      output.append("EC: ");
      output.append(ec.toString());
      output.append("\n");
      output.append("Status: ");
      output.append(status.toString());
      output.append("\n");
      return output.toString();
    }
  }
}
