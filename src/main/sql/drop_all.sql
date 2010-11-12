DROP SEQUENCE S_AUDIT_ID;
DROP SEQUENCE S_ENZYME_ID;
DROP SEQUENCE S_FUTURE_EVENT_ID;
DROP SEQUENCE S_FUTURE_GROUP_ID;
DROP SEQUENCE S_HISTORY_EVENT_ID;
DROP SEQUENCE S_HISTORY_GROUP_ID;
DROP SEQUENCE S_PUB_ID;
DROP SEQUENCE S_TIMEOUT_ID;
DROP SEQUENCE S_COMPOUND_ID;
DROP SEQUENCE S_REACTION_ID;

DROP TABLE CITATIONS CASCADE CONSTRAINTS;
DROP TABLE CITATIONS_AUDIT CASCADE CONSTRAINTS;
DROP TABLE CLASSES CASCADE CONSTRAINTS;
DROP TABLE CLASSES_AUDIT CASCADE CONSTRAINTS;
DROP TABLE COFACTORS CASCADE CONSTRAINTS;
DROP TABLE COFACTORS_AUDIT CASCADE CONSTRAINTS;
DROP TABLE COMMENTS CASCADE CONSTRAINTS;
DROP TABLE COMMENTS_AUDIT CASCADE CONSTRAINTS;
DROP TABLE CV_DATABASES CASCADE CONSTRAINTS;
DROP TABLE CV_DATABASES_AUDIT CASCADE CONSTRAINTS;
DROP TABLE CV_LOCATION CASCADE CONSTRAINTS;
DROP TABLE CV_NAME_CLASSES CASCADE CONSTRAINTS;
DROP TABLE CV_NAME_CLASSES_AUDIT CASCADE CONSTRAINTS;
DROP TABLE CV_STATUS CASCADE CONSTRAINTS;
DROP TABLE CV_STATUS_AUDIT CASCADE CONSTRAINTS;
DROP TABLE CV_VIEW CASCADE CONSTRAINTS;
DROP TABLE CV_VIEW_AUDIT CASCADE CONSTRAINTS;
DROP TABLE CV_WARNINGS CASCADE CONSTRAINTS;
DROP TABLE CV_WARNINGS_AUDIT CASCADE CONSTRAINTS;
DROP TABLE REACTIONS_MAP CASCADE CONSTRAINTS;
DROP TABLE REACTIONS_MAP_AUDIT CASCADE CONSTRAINTS;
DROP TABLE ENZYMES CASCADE CONSTRAINTS;
DROP TABLE ENZYMES_AUDIT CASCADE CONSTRAINTS;
DROP TABLE FUTURE_EVENTS CASCADE CONSTRAINTS;
DROP TABLE FUTURE_EVENTS_AUDIT CASCADE CONSTRAINTS;
DROP TABLE HISTORY_EVENTS CASCADE CONSTRAINTS;
DROP TABLE HISTORY_EVENTS_AUDIT CASCADE CONSTRAINTS;
DROP TABLE ID2EC CASCADE CONSTRAINTS;
DROP TABLE INTENZ_TEXT CASCADE CONSTRAINTS;
DROP TABLE LINKS CASCADE CONSTRAINTS;
DROP TABLE LINKS_AUDIT CASCADE CONSTRAINTS;
DROP TABLE NAMES CASCADE CONSTRAINTS;
DROP TABLE NAMES_AUDIT CASCADE CONSTRAINTS;
DROP TABLE PUBLICATIONS CASCADE CONSTRAINTS;
DROP TABLE PUBLICATIONS_AUDIT CASCADE CONSTRAINTS;
DROP TABLE REACTIONS CASCADE CONSTRAINTS;
DROP TABLE REACTIONS_AUDIT CASCADE CONSTRAINTS;
DROP TABLE STATS CASCADE CONSTRAINTS;
DROP TABLE SUBCLASSES CASCADE CONSTRAINTS;
DROP TABLE SUBCLASSES_AUDIT CASCADE CONSTRAINTS;
DROP TABLE SUBSUBCLASSES CASCADE CONSTRAINTS;
DROP TABLE SUBSUBCLASSES_AUDIT CASCADE CONSTRAINTS;
DROP TABLE TIMEOUTS CASCADE CONSTRAINTS;
DROP TABLE TIMEOUTS_AUDIT CASCADE CONSTRAINTS;
DROP TABLE XREFS CASCADE CONSTRAINTS;
DROP TABLE XREFS_AUDIT CASCADE CONSTRAINTS;
DROP TABLE COMPLEX_REACTIONS CASCADE CONSTRAINTS;
DROP TABLE COMPLEX_REACTIONS_AUDIT CASCADE CONSTRAINTS;
DROP TABLE REACTION_PARTICIPANTS CASCADE CONSTRAINTS;
DROP TABLE REACTION_PARTICIPANTS_AUDIT CASCADE CONSTRAINTS;
DROP TABLE REACTION_CITATIONS CASCADE CONSTRAINTS;
DROP TABLE REACTION_CITATIONS_AUDIT CASCADE CONSTRAINTS;
DROP TABLE REACTION_XREFS CASCADE CONSTRAINTS;
DROP TABLE REACTION_XREFS_AUDIT CASCADE CONSTRAINTS;
DROP TABLE REACTION_MERGINGS;
DROP TABLE INTENZ_REACTIONS CASCADE CONSTRAINTS;
DROP TABLE INTENZ_REACTIONS_AUDIT CASCADE CONSTRAINTS;
DROP TABLE COMPOUND_DATA_UPDATES CASCADE CONSTRAINTS;
DROP TABLE COMPOUND_DATA CASCADE CONSTRAINTS;
DROP TABLE COMPOUND_DATA_AUDIT CASCADE CONSTRAINTS;
DROP TABLE CV_OPERATORS CASCADE CONSTRAINTS;
DROP TABLE CV_REACTION_DIRECTIONS CASCADE CONSTRAINTS;
DROP TABLE CV_REACTION_QUALIFIERS CASCADE CONSTRAINTS;
DROP TABLE CV_COEFF_TYPES;
DROP TABLE CV_COMP_PUB_AVAIL;
DROP TABLE CV_REACTION_SIDES;

DROP VIEW VW_CLASSES CASCADE CONSTRAINTS;
DROP VIEW V_EC_FOR_DATALIB CASCADE CONSTRAINTS;
DROP VIEW V_INTERPRO;
DROP VIEW CHEBI_REACTIONS;
DROP VIEW CHEBI_XREFS;

DROP PACKAGE "AUDITPACKAGE";
DROP PACKAGE "EVENT";

DROP FUNCTION "F_CLASSES";
DROP FUNCTION "F_LINKS";
DROP FUNCTION "F_OTHER_NAMES";
DROP FUNCTION "F_PUBDATA";
DROP FUNCTION "F_QUAD2STRING";
DROP FUNCTION "F_REACTION";
DROP FUNCTION "CHECK_REACTION_QUALIFIERS";
DROP FUNCTION "F_XML_DISPLAY_SP_CODE";
DROP FUNCTION "F_RHEA_FAMILY_ID";
DROP FUNCTION "F_GEN_SCOPE_PUBLIC_REACTION";

DROP PROCEDURE "P_CHANGE_STATUS";
DROP PROCEDURE "P_CLONE_ENZYME";
DROP PROCEDURE "P_MERGE_PUBLICATIONS";
DROP PROCEDURE "P_PRINT_PUBLICATION";
DROP PROCEDURE "P_RESTART_TIMEOUT";
DROP PROCEDURE "P_START_TIMEOUT";
DROP PROCEDURE "P_STOP_TIMEOUT";
DROP PROCEDURE "P_STRING2QUAD";
DROP PROCEDURE "P_INSERT_COMPOUND_DATA";
DROP PROCEDURE "P_INSERT_REACTION";

DROP TYPE REACTION_QUALIFIERS;
