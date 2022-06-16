SELECT * FROM decom3sixtytool.Opportunity_Info_Template_Details;
update `decom3sixtytool`.`Opportunity_Info_Template_Details` set label_name='Business Unit' where column_name='buisnessunit';
update `decom3sixtytool`.`Opportunity_Info_Template_Details` set label_name='Business Segment' where column_name='buisnesssegment';
update `decom3sixtytool`.`Opportunity_Info_Template_Details` set options='EMR System,ERP Data,Financial Data,Healthcare Data,HR Data,MR/HR Data,Other Data' where column_name='date_type';
update `decom3sixtytool`.`Opportunity_Info_Template_Details` set label_name='Please describe your needs for archival and decommission service' where column_name='arcdecomm';

select * from decom3sixtytool.Triage_Info_Template_Details;
update `decom3sixtytool`.`Triage_Info_Template_Details` set label_name='Business Segment' where column_name='business_Segment';
update `decom3sixtytool`.`Triage_Info_Template_Details` set label_name='Program or Segment Contact' where column_name='segment_contact';
update `decom3sixtytool`.`Triage_Info_Template_Details` set options='Mainframe,Distributed - Unix,Windows,hybrid,Others' where column_name='appPlatfrm';

select * from decom3sixtytool.Assessment_Data_Char_Info_Template_Details;
update `decom3sixtytool`.`Assessment_Data_Char_Info_Template_Details` set label_name='Data is in Read Only State (no updates can be made)' where column_name='ReadonlyData';
update `decom3sixtytool`.`Assessment_Data_Char_Info_Template_Details` set label_name='Are there any datasets on mainframe  that this application uses?' where column_name='DataSetMainframe';
update `decom3sixtytool`.`Assessment_Data_Char_Info_Template_Details` set label_name='If yes, please describe ' where column_name='plsdescribeStreams';

select * from decom3sixtytool.Assessment_Application_Info_Template_Details;
update `decom3sixtytool`.`Assessment_Application_Info_Template_Details` set options='Mainframe,Distributed - Unix,Windows,hybrid,Others' where column_name='AssessAppPlatform';