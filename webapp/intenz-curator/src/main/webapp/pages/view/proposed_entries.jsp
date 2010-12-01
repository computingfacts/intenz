<%@ page import="java.util.HashMap,
                 java.util.Map,
                 uk.ac.ebi.intenz.webapp.dtos.GhostEnzymeDTO"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

    <!---------------------------------------------- Content --------------------------------------------------------->

    <table height="100%" width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td valign="top" align="center">
          <bean:size id="proposedEntriesSize" name="ghostEnzymeListDTO" property="ghostEnzymeList"/>
          <logic:equal value="0" name="proposedEntriesSize">
            <table border="0" cellspacing="20" cellpadding="0">
              <tr>
                <td width="100%" align="center"><i>No proposed entries stored in the database at the moment.</i></td>
              </tr>
            </table>
          </logic:equal>
          <logic:greaterThan name="proposedEntriesSize" value="0">
            <table class="content_table" border="0" cellspacing="20" cellpadding="0">
              <tr>
                <td>
                  <table width="100%" border="0" cellspacing="4" cellpadding="0">

                    <tr>
                      <td colspan="2" class="data_region_header_row">Proposed Entries</td>
                    </tr>
                    <tr>
                      <td colspan="3">&nbsp;</td>
                    </tr>

                    <logic:iterate id="proposedEntry" name="ghostEnzymeListDTO" property="ghostEnzymeList">
                      <%
                        Map params = new HashMap();
                        GhostEnzymeDTO ghostEnzymeDTO = (GhostEnzymeDTO) proposedEntry;
                        params.put("id", ghostEnzymeDTO.getEnzymeId());
                        params.put("view", "INTENZ");
                        pageContext.setAttribute("proposedEntryLinkParams", params);
                      %>
                      <tr>
                        <td colspan="2">
                          <table cellspacing="5">
                            <tr>
                              <td width="100px" align="right"><html:link action="searchId" name="proposedEntryLinkParams"><bean:write name="proposedEntry" property="ec"/></html:link>
                              <logic:equal value="deleted" name="proposedEntry" property="eventClass"><td align="left" class="deleted_transferred" align="left">deleted</td></logic:equal>
                              <logic:equal value="transferred" name="proposedEntry" property="eventClass"><td align="left" class="deleted_transferred" align="left">transferred. <bean:write name="proposedEntry" property="eventNote" filter="false"/>.</td></logic:equal>
                              <logic:notEqual value="deleted" name="proposedEntry" property="eventClass">
                                <logic:notEqual value="transferred" name="proposedEntry" property="eventClass">
                                  <td align="left"><bean:write name="proposedEntry" property="name" filter="false"/></td>
                                </logic:notEqual>
                              </logic:notEqual>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </logic:iterate>

                  </table>
                </td>
              </tr>
            </table>
          </logic:greaterThan>
        </td>
      </tr>
    </table>



