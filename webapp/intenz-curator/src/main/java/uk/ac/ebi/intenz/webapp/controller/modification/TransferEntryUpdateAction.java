package uk.ac.ebi.intenz.webapp.controller.modification;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.GregorianCalendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

import uk.ac.ebi.intenz.domain.constants.Status;
import uk.ac.ebi.intenz.domain.enzyme.EnzymeEntry;
import uk.ac.ebi.intenz.domain.exceptions.DomainException;
import uk.ac.ebi.intenz.domain.exceptions.EcException;
import uk.ac.ebi.intenz.mapper.AuditPackageMapper;
import uk.ac.ebi.intenz.mapper.EnzymeEntryMapper;
import uk.ac.ebi.intenz.mapper.EventPackageMapper;
import uk.ac.ebi.intenz.mapper.HistoryEventMapper;
import uk.ac.ebi.intenz.webapp.dtos.EcSearchForm;
import uk.ac.ebi.intenz.webapp.dtos.EnzymeDTO;
import uk.ac.ebi.intenz.webapp.utilities.EntryLockSingleton;
import uk.ac.ebi.intenz.webapp.utilities.UnitOfWork;
import uk.ac.ebi.rhea.mapper.MapperException;

/**
 * This Action updates information of a transferred entry.
 *
 * This Action is invoked whenever a transferred entry is modified regardless of its status. It takes care of all
 * changes of the enzyme's data (actually done by {@link uk.ac.ebi.intenz.webapp.utilities.UnitOfWork}) and updates
 * the transfer events data, i.e. the history line and status of the deleted entry.
 *
 * @author Michael Darsow
 * @version $Revision: 1.3 $ $Date: 2008/11/17 17:14:10 $
 */
public class TransferEntryUpdateAction extends CurationAction {
  private static final Logger LOGGER =
	  Logger.getLogger(TransferEntryUpdateAction.class.getName());
  private static final String SEARCH_BY_EC_ACTION_FWD = "searchEc";

  public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
                               HttpServletResponse response) throws Exception {
    // Do standard checks in the parent's execute method.
    ActionForward forward = super.execute(mapping, form, request, response);
    if (forward != null) return forward;

    ActionMessages errors = new ActionMessages();
    EnzymeDTO enzymeDTO = (EnzymeDTO) form;

    // Validate the entry's lists.
//    IntEnzValidations.validateEnzymeDTOLists(enzymeDTO, errors);
//    if (!errors.isEmpty()) {
//      saveErrors(request, errors);
//      return mapping.getInputForward();
//    }
    
    Connection con = (Connection) request.getSession().getAttribute("connection");
    EntryLockSingleton els = (EntryLockSingleton) request.getSession().getServletContext().getAttribute("entryLock");
    UnitOfWork unitOfWork = (UnitOfWork) request.getSession().getAttribute("uow");
    try {
    	/*
        if (!enzymeDTO.isActive()){
		  EnzymeCommissionNumber targetEc = EnzymeCommissionNumber
				  .valueOf(enzymeDTO.getTransferredToEc());
		  EnzymeEntry targetEntry = new EnzymeEntryMapper().findByEc(
				  targetEc.getEc1(), targetEc.getEc2(),
				  targetEc.getEc3(), targetEc.getEc4(),
				  Status.APPROVED, con);
		  if (targetEntry == null){
		      errors.add("transferredToEc", new ActionMessage(
		    		  "errors.application.ec.nonexisting", targetEc));
		      saveErrors(request, errors);
		      keepToken(request);
		      return mapping.getInputForward();
		  } else if (!targetEntry.isActive()){
		      errors.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage(
		    		  "errors.application.ec.inactive", targetEc));
		      saveErrors(request, errors);
		      keepToken(request);
		      return mapping.getInputForward();
		  }
        }
		*/
        // Set the standard remark in the audit tables.
      AuditPackageMapper auditPackageMapper = new AuditPackageMapper();
      auditPackageMapper.setRemark(AuditPackageMapper.STANDARD_REMARK, con);
      // Commit
      LOGGER.info("Committing form data.");
      unitOfWork.commit(enzymeDTO, con);
      LOGGER.info("Data subimtted");

      if (enzymeDTO.isActive()){
          // Store event.
          LOGGER.info("Updating event.");
          final String historyLine = updateHistoryLineOfDeletedEntry(
        		  new Long(enzymeDTO.getLatestHistoryBeforeId()), con);
          EventPackageMapper eventPackageMapper = new EventPackageMapper();
          eventPackageMapper.updateFutureTransferEvent(
        		  Integer.parseInt(enzymeDTO.getLatestHistoryEventGroupId()),
        		  Integer.parseInt(enzymeDTO.getLatestHistoryEventId()),
        		  enzymeDTO.getLatestHistoryEventNote(), enzymeDTO.getStatusCode(),
        		  historyLine, con);
      } else {
    	  // Modifying notes of already deleted/transferred entry:
    	  Integer afterId = null;
    	  if (enzymeDTO.getTransferredToEc() != null){
    		  EnzymeEntry targetEntry = new EnzymeEntryMapper().findByEc(
    				  enzymeDTO.getTransferredToEc(), Status.APPROVED, con);
    		  afterId = targetEntry.getId().intValue();
    	  }
    	  HistoryEventMapper hem = new HistoryEventMapper();
//    	  hem.updateEventNote(Integer.valueOf(enzymeDTO.getLatestHistoryEventId()),
//    			  Integer.valueOf(enzymeDTO.getLatestHistoryEventGroupId()),
//    			  enzymeDTO.getLatestHistoryEventNote(), con);
    	  hem.updateEvent(Integer.valueOf(enzymeDTO.getLatestHistoryEventId()),
    			  Integer.valueOf(enzymeDTO.getLatestHistoryEventGroupId()),
				  enzymeDTO.getLatestHistoryEventNote(),
				  Integer.valueOf(enzymeDTO.getId()), afterId, con);
      }
      con.commit();

      LOGGER.info("Transfer event updated.");
    } catch (EcException e) {
      errors.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage("errors.application.ec.invalid", enzymeDTO.getTransferredEc()));
      saveErrors(request, errors);
      keepToken(request);
      return mapping.getInputForward();
    } catch (Exception e){
        con.rollback();
        throw e;
    } finally { // release lock
      els.releaseLock(enzymeDTO.getId());
      LOGGER.info("Lock of EC " + enzymeDTO.getEc() + " (ID: " + enzymeDTO.getEc() + " released.");
    }

    // Forward to 'searchEc' Action to show both entries.
    LOGGER.info("Searching for EC " + enzymeDTO.getEc());
    EcSearchForm ecSearchForm = new EcSearchForm();
    ecSearchForm.setEc(enzymeDTO.getEc());
    request.setAttribute("ecSearchForm", ecSearchForm);
    return mapping.findForward(SEARCH_BY_EC_ACTION_FWD);
  }

  /**
   * Updates the history line of the deleted entry by extending it with <b>', deleted <current year>'</b> (e.g.
   * <b>', deleted 2005'</b>
   *
   * @param beforeId The ID of the deleted enzyme.
   * @param con A databse connection to retreive the deleted enzyme's history line.
   * @return the updated history line.
   * @throws SQLException if a database error occurs.
   * @throws DomainException if a domain related error occurs.
   * @throws MapperException
   */
  private String updateHistoryLineOfDeletedEntry(Long beforeId, Connection con)
  throws SQLException, DomainException, MapperException {
    assert beforeId != null : "Parameter 'beforeId' must not be null.";
    assert con != null : "Parameter 'con' must not be null.";
    EnzymeEntryMapper enzymeEntryMapper = new EnzymeEntryMapper();
    EnzymeEntry enzymeEntry = enzymeEntryMapper.findById(beforeId, con);
    return getNewHistoryLine(enzymeEntry.getHistory().getRootNode().getHistoryLine());
  }

  /**
   * Gets the new history line by appending <b>', deleted <current year>'</b>.
   *
   * @param oldHistory The enzyme's old history line.
   * @return the new history line.
   */
  private String getNewHistoryLine(String oldHistory) {
    assert oldHistory != null : "Parameter 'oldHistory' must not be null.";
    GregorianCalendar gc = new GregorianCalendar();
    int year = gc.get(GregorianCalendar.YEAR);
    StringBuffer historyLine = new StringBuffer();
    historyLine.append(oldHistory);
    historyLine.append(", deleted ");
    historyLine.append(year);
    return historyLine.toString();
  }

}
