<%@ page import="java.util.List,
                 java.util.ArrayList,
                 uk.ac.ebi.intenz.domain.constants.EnzymeViewConstant,
                 uk.ac.ebi.xchars.domain.EncodingType"%>

<%
  String title = "Error - Integrated Enzyme Database (IntEnz)";
%>

  <table width="100%" border="0" cellpadding="0" cellspacing="0">

  <%
    if(request.getAttribute("javax.servlet.error.status_code") != null) {
      String errorCode = request.getAttribute("javax.servlet.error.status_code").toString();
      if(errorCode.equals("404")) {
    %>
      <tr>
        <td><b>The requested page is not available:</b></td>
      </tr>
    <%
      }

      if(errorCode.equals("500")) {
    %>
      <tr>
        <td><b>The server encountered an unexpected condition which prevented it from fulfilling the request.<br></b></td>
      </tr>
    <%
      }
    %>

      <tr>
        <td><%= request.getAttribute("javax.servlet.error.message") %></td>
      </tr>

  <% } else {
       if(request.getAttribute("message") != null) {
         String errorMessage = (String) request.getAttribute("message");
      %>
        <tr>
          <td><%= errorMessage %></td>
        </tr>
      <%
       } else {
      %>
        <tr>
          <td>
            <b>The server encountered an unexpected condition which prevented it from fulfilling the request.<br>
            It would be very kind of you, if you could report this error to
            <a href="http://www.ebi.ac.uk/support/">EBI Support</a><br/>
            Sorry for any inconvenience this error might have caused. 
          </td>
        </tr>
  <%
       }
     }
  %>
  </table>
