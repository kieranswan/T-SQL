--mandla.mtshali
--dudu.mbuli
use fcavis
/*
select 'Waiting on dudu.mbuli:'
select (select Username from fcuser where ID = fcEventHist.ResultUser )as ResultUser,(select Description from fcAvis.dbo.fcRole where ID = ResultID) as RoleDesc,* 
from fcEventHist where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'dudu.mbuli'
and resultdate = 0 and resultID <> 0 
order by CreateDate,CreateTime desc

--Elleze Kiewiets E513969890
select 'Waiting on mandla.mtshali:'
select (select Username from fcuser where ID = fcEventHist.ResultUser )as ResultUser,(select Description from fcAvis.dbo.fcRole where ID = ResultID) as RoleDesc,* 
from fcEventHist where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'mandla.mtshali'
and resultdate = 0 and resultID <> 0 
order by CreateDate,CreateTime desc
*/


--select * from fcavis..fcuser where Active = 1
--select * from fcavisgroup..fcUser where Active = 1
--175 licensed for 
--121 users 
--74(minus my 2 users) users 
--121+74 = 195 (over by 20 users )

-- Remove these users :
/* this is like the currently with thing */
select 'Number of Processes waiting for each user (fcavis):'
use fcavis
select * from (
select (select USername from fcUSer where RoleID = ResultID) as Username___________ ,ResultID,count(*) as NumProcesses from fcEventHist 
where  ResultID <> 0 and ResultDate = 0 and Assigned <> 'Unassigned'
group by ResultID  
--order by count(*) desc 

Union
select 'ALL USERS' as Username___________ ,'00' as ResultID, count(*) as NumProcesses from fcEventHist 
where  ResultID <> 0 and ResultDate = 0 and Assigned <> 'Unassigned'
Union
select 'UNASSIGNED-HQ-REFUNDS' as Username___________ ,'00' as ResultID, count(*) as NumProcesses from fcEventHist 
where  ResultID <> 0 and ResultDate = 0 and Assigned = 'Unassigned'
)  as musthave 
where Username___________ like '%dudu%' or  Username___________ like '%gran%' or Username___________ like '%mandla%'
order by Numprocesses desc



--select * from acb_details where USER_ID > 'G484'

--Funeka Mbolekwa 
-- racdcisvpts1
-- ntombi ngqaza 
select 'Started running at : ',GETDATE()



--Ran this today 24 April 2018 :
--update fcAvisGroup..fcUser set Username = Replace(Username,'BWMAFR\','RENTACAR\')



USE fcAvis
GO  
SELECT compatibility_level  
FROM sys.databases WHERE name = 'fcAvis';  
GO  
-- 10 on 7 May 2018 :
select 'Waiting on Dashiel.Dorrington:'
select (select Username from fcuser where ID = fcEventHist.ResultUser )as ResultUser,(select Description from fcAvis.dbo.fcRole where ID = ResultID) as RoleDesc,* 
from fcEventHist where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'Dashiel.Dorrington'
and resultdate = 0 and resultID <> 0 
order by CreateDate,CreateTime desc

--Elleze Kiewiets E513969890
select 'Waiting on lerato.gama:'
select (select Username from fcuser where ID = fcEventHist.ResultUser )as ResultUser,(select Description from fcAvis.dbo.fcRole where ID = ResultID) as RoleDesc,* 
from fcEventHist where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'lerato.gama'
and resultdate = 0 and resultID <> 0 
order by CreateDate,CreateTime desc

--Elleze Kiewiets E513969890
select 'Waiting on Elise.Stone:'
select (select Username from fcuser where ID = fcEventHist.ResultUser )as ResultUser,(select Description from fcAvis.dbo.fcRole where ID = ResultID) as RoleDesc,* 
from fcEventHist where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'Elise.Stone'
and resultdate = 0 and resultID <> 0 
order by CreateDate,CreateTime desc


/*
Triggered rates summary :
C:\Users\kieran.swanepoel\Dropbox\Flowcentric Jobs\FlowCentric SQL Jobs Scripts
The job that runs them all is called fcAvisGroup_Custom on BLISAFRACSQL1
IT executes these :
Export_COMMERCIAL
Export_MONTHLY
Export_REPLACEMENT
Export_VIPCO
Export_Government


eg :
spRateDiary_XML_Export_GOVERNMENT :
-----------------------------------
SET @User = 'flowcentric_rates'
SET @Password = 'qwerty123'
-- The server name where the database is stored
SET @Server = 'BLISFSQL2RAC'
-- Set the destination folder where the export files should be saved
-- PLEASE NOTE THAT THE EXCLAMATION MARK SHOULD ALWAYS BE AT THE START OF THE FOLDER NAME
--***UPDATE***--
SET @Destination = '"F:\FlowCentricDirectoryWatcherActions\RateDiary\RentACar\GOVERNMENT\'


\\blisfracsql1\FlowCentricDirectoryWatcherActions\RateDiary\RentACar\GOVERNMENT


C:\Users\kieran.swanepoel\Dropbox\Stuff\Rates Expiry Date Adder.xls


*/


--use fcavisgroup -- 0A has no stc !!!
--select * from whowheremore where RateCode in ('A8','0K')
--842203


SELECT     ID, KAMUserID,(select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) as KAM, KAMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = KAMRoleID) as KAMRole, RSMUserID ,(select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) as RSM, RSMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = RSMRoleID) RSMRole, RSMRoleDescription, STC_Code, SegmentationID, Segment, DateCreated
,NSMUsername
FROM         fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation
where 
STC_Code = '842203'
Order by STC_Code 

--BLISFSQLRAC.RatesSTC.dbo.
--26 jun 10 year anneversary 
-- Lopke wants to change the names of rates
select 'Flowcentric RateName vs Diary RateName (WHERE THEY ARE DIFFERENT):'
select captured.RateName CapturedRateName ,Diary.RateName DiaryRateName,diary.RateCode,Diary.STC,captured.STC_Code from fcAvisGroup_Custom.dbo.Custom_VIPCO_RatesDataCaptured captured inner join BLISFSQLRAC.RatesSTC.dbo.RatesDiaryParentsOnly2_5_10_151 diary
on captured.RealRateCode = diary.RateCode
where Diary.RateName <> captured.RateName



--\\blisfflowcrac\Source file

-- FOR GERT adjustments
/*
RA 855783482 – Before TMW R490730.60 and after R27120.80
RA 890010236 – Before TMW R1398960.78 and after TMW 6126.45 
*/
-- The adjustment
select Filename,Date_of_Adj,* from fcavismaster.dbo.transactionTempAdjustments where Doc_Ref_Num in
(
'E855919702'
)
-- the largest for resubmitting :
select Filename,Date_of_Adj,* from fcavismaster.dbo.transactionTempAdjustments where Doc_Ref_Num in
(
'E889187902'
)


--NNNBBB: TO GET TO CURRENT SCREEN / URL / To go directly to the page being worked on (NOTE - must be logged in as the user):
/*
use fcavis
select 'http://blisfflowcrac/fcAvis/myActionItem.aspx?g=3&id=' + cast(ID as varchar(10)) from fcEventHist 
where  ResultID <> 0 and ResultDate = 0 and Assigned <> 'Unassigned' and (select USername from fcUSer where RoleID = ResultID) = 'precious.mngomezulu'
and EventID = 9 
*/

/*
-Riaan W (ENCRYPTED) : FLEET01
C:\Users\kieran.swanepoel>tracert 10.97.200.125
Tracing route to nbahq5cg5432.africa.bwm-global.com [10.97.200.125]
\\nbahq5cg5432\c$\Users\riaan.weideman\Desktop\FLT01-02 user : FLEET01
FLEET01  user : FLEET01
\\nbahq5cg5432\c$\ProgramData\Software AG\Natural Runtime\6.3\Prof
*/

--fcAvisGroup_Custom
--spMonthlyFleetAudit
--spWeeklyFleetAudit
-- has the monthly and weekly report been run :



-- DOMAIN CHANGE :
------------------
--select * from fcAvisGroup..fcuser where username like 'RENTACAR\%'
/*

update fcAvisGroup..fcUser set Username = Replace(Username,'BWMAFR\','RENTACAR\')
where Username in
(

)


update fcAvisGroup..fcUser set Username = Replace(Username,'RENTACAR\','BWMAFR\')
where Username like 'RENTACAR\%'


*/


--- check Group B+ doubling issue :
select ProcessID from fcAvisGroup_Custom..Custom_VIPCO_RatesDataCaptured_OldCarGroupRates where GroupCode = 'B+'
group by ProcessID,GroupCode
having Count(*) > 1
--40

select ProcessID from fcAvisGroup_Custom..Custom_VIPCO_RatesDataCaptured_NewCarGroupRates where GroupCode = 'B+'
group by ProcessID,GroupCode
having Count(*) > 1
--12



-- DID RIAAN WEIDEMANS AUDIT REPORTS RUN : ----------------------------------------------------------------------------------------START
--fcAvisGroup_Custom
--spMonthlyFleetAudit
--\\blisfracsql1\FlowCentricDirectoryWatcherActions\TRACCSmonthly

-- Monthly
use fcAvisGroup
SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ),ControlID,ControlValue,fcEventHist.*, fcEventValue.*
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ControlID = 'MF1010ReportDate'
order by fcEventHist.ID , fcEventValue.ID


use fcAvisGroup
SELECT     (select Username from fcuser where ID = fcEventArchive.ResultUser ),ControlID,ControlValue,fcEventArchive.*, fcEventValueArchive.*
FROM         fcEventArchive INNER JOIN
fcEventValueArchive ON fcEventArchive.EventHistID = fcEventValueArchive.EventHistID
where ControlID = 'MF1010ReportDate'
order by fcEventArchive.ID , fcEventValueArchive.ID

-- Weekly
--use fcAvisGroup
--SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ),ControlID,ControlValue,fcEventHist.*, fcEventValue.*
--FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
--                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
--where ControlID = 'DF1010ReportDate'
--order by fcEventHist.ID , fcEventValue.ID


--use fcAvisGroup
--SELECT     (select Username from fcuser where ID = fcEventArchive.ResultUser ),ControlID,ControlValue,fcEventArchive.*, fcEventValueArchive.*
--FROM         fcEventArchive INNER JOIN
--fcEventValueArchive ON fcEventArchive.EventHistID = fcEventValueArchive.EventHistID
--where ControlID = 'DF1010ReportDate'
--order by fcEventArchive.ID , fcEventValueArchive.ID
-- DID RIAAN WEIDEMANS AUDIT REPORTS RUN : ------------------------------------------------------------------------------------END




--CSI REPORT :
/*
SELECT  a.ContactName,
        a.ContactNumber,
        a.RenterName,
        c.Reason AS ReasonForCall,
        d.ReasonCode AS ReasonCodeNumber,
        a.LastActionDate,
        e.Description AS ReasonCodeText,
        CASE WHEN a.[RentalAgreementNumber] &lt;&gt; ''
             THEN a.[RentalAgreementNumber]
             ELSE a.[TraceNumber]
        END AS [RA\TraceNumber]
FROM    vwCustomerCareCasesLastActioned AS a
        INNER JOIN lookupCustomerCareReasons AS c ON a.ReasonForCallID = c.ID
        INNER JOIN transactionCustomerCareCaseCloseInformation AS d ON a.CaseNumber = d.CaseNumber
        INNER JOIN lookupReasonCodeProcessIdentification AS e ON LEFT(d.ReasonCode, 2) = e.ReasonCode
WHERE   ( a.ContactNumber &lt;&gt; '' )
        AND ( a.ContactNumber &lt;&gt; '0' )
        AND ( a.CallSourceID = 4 )
		AND (a.LastActionDate &gt;= @StartDate) 
		AND (a.LastActionDate &lt;= @EndDate) 
		AND (a.CaseConsultant = @Consultant)
		AND (a.RentalCompanyID = @RentalCompany)
ORDER BY a.LastActionDate,
        a.ContactName,
        a.ContactNumber,
        a.RenterName,
        ReasonForCall

TESTING WITH :
---------------
use fcavismaster
SELECT  *,a.ContactName,
        a.ContactNumber,
        a.RenterName,
        c.Reason AS ReasonForCall,
        d.ReasonCode AS ReasonCodeNumber,
        a.LastActionDate,
        e.Description AS ReasonCodeText,
        CASE WHEN a.[RentalAgreementNumber] <> ''
             THEN a.[RentalAgreementNumber]
             ELSE a.[TraceNumber]
        END AS [RA\TraceNumber]
FROM    vwCustomerCareCasesLastActioned AS a
        INNER JOIN lookupCustomerCareReasons AS c ON a.ReasonForCallID = c.ID
        INNER JOIN transactionCustomerCareCaseCloseInformation AS d ON a.CaseNumber = d.CaseNumber
        INNER JOIN lookupReasonCodeProcessIdentification AS e ON LEFT(d.ReasonCode, 2) = e.ReasonCode
WHERE   ( a.ContactNumber <> '' )
        AND ( a.ContactNumber <> '0' )
        AND ( a.CallSourceID = 4 )



use fcavismaster
SELECT  *,a.ContactName,
        a.ContactNumber,
        a.RenterName,
        c.Reason AS ReasonForCall,
        d.ReasonCode AS ReasonCodeNumber,
        a.LastActionDate,
        e.Description AS ReasonCodeText,
        CASE WHEN a.[RentalAgreementNumber] <> ''
             THEN a.[RentalAgreementNumber]
             ELSE a.[TraceNumber]	
        END AS [RA\TraceNumber]
FROM    vwCustomerCareCasesLastActioned AS a
        INNER JOIN lookupCustomerCareReasons AS c ON a.ReasonForCallID = c.ID
        INNER JOIN transactionCustomerCareCaseCloseInformation AS d ON a.CaseNumber = d.CaseNumber
        INNER JOIN lookupReasonCodeProcessIdentification AS e ON LEFT(d.ReasonCode, 2) = e.ReasonCode
order by CaseConsultant, a.LastActionDate   




*/



/*
SELECT TOP 1000 [ID]
      ,[CallSource]
      ,[Active]
  FROM [fcAvisMaster].[dbo].[lookupCallSources]

ID	CallSource	Active
1	Email		1
2	Fax			1
3	SMS			1
4	Telephone	1 <-- this is the reason !!
*/



--ftp.intercoms.co.za
-- oculus report :
--http://blisfsql3rac/Reports/Pages/Folder.aspx?ItemPath=%2fRAC_HQRefunds&ViewMode=List
-- refunds havent been touched since thursday last week :
--2017-10-05 09:17:03.713


-- tammys new employees - THAT MANDLA USUALLY ADDS !
--EventID = 47 
/*
use fcAvis
SELECT     (select Username from fcuser where ID = fcEventArchive.ResultUser ),ControlID,ControlValue,fcEventArchive.*, fcEventValueArchive.*
FROM         fcEventArchive INNER JOIN
fcEventValueArchive ON fcEventArchive.EventHistID = fcEventValueArchive.EventHistID
where EventID = 47
order by fcEventArchive.ID , fcEventValueArchive.ID
*/

--BWMAFR\Nicola.Classens P@2
--DD JJ
-- this time looking for a user :
/*
SELECT     ID, KAMUserID,(select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) as KAM, KAMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = KAMRoleID) as KAMRole, RSMUserID ,(select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) as RSM, RSMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = RSMRoleID) RSMRole, RSMRoleDescription, STC_Code, SegmentationID, Segment, DateCreated
,NSMUsername
FROM         fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation
where 
(select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) like '%Nicola%' 
or 
(select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) like '%Nicola%' 
or NSMUsername like '%Nicola%'
Order by STC_Code 
*/
/*
841500
841504
841505
*/


/* -- The rerouting mess :
use fcAvis
SELECT     (select Username from fcuser where ID = fcEventArchive.ResultUser ),ControlID,ControlValue,fcEventArchive.*, fcEventValueArchive.*
FROM         fcEventArchive INNER JOIN
fcEventValueArchive ON fcEventArchive.EventHistID = fcEventValueArchive.EventHistID
where EventID = 111 and CreateDate > '20171001'
and 
(
ControlID like '66_%_HR130_CaseNumber'
or
ControlID like '66_%_HR130_OG_RouteToConRoleID'
or
ControlID like '66_%_HR130_OG_RouteToConUserID'
)
--and ControlValue = 'HQ-0000182734'
order by fcEventArchive.ID , fcEventValueArchive.ID



-- The CLOSED ones
use fcAvis
SELECT     (select Username from fcuser where ID = fcEventArchive.ResultUser ),ControlID,ControlValue,fcEventArchive.*, fcEventValueArchive.*
FROM         fcEventArchive INNER JOIN
fcEventValueArchive ON fcEventArchive.EventHistID = fcEventValueArchive.EventHistID
where ProcessID = 3062497
order by fcEventArchive.ID , fcEventValueArchive.ID
*/

/*
-- she is moving them to 133 = rerouted.refunds
use fcavis
select 'http://blisfflowcrac/fcAvis/myActionItem.aspx?g=3&id=' + cast(ID as varchar(10)) from fcEventHist 
where  ResultID <> 0 and ResultDate = 0 and Assigned <> 'Unassigned' and (select USername from fcUSer where RoleID = ResultID) = 'precious.mngomezulu'
and EventID = 9 
*/


-- NBV investigation:
/*

SELECT 
*,
(FLEET_MASTER_VIEW.PURCHASE_PRICE + FLEET_MASTER_VIEW.CAPITAL_ACCESSORIES_PRICE + FLEET_MASTER_VIEW.ADDON_ACCESSORIES_PRICE)
                                    - ((((timestampdiff(SQL_TSI_DAY, INSTALLATION_DATE, FLEET_MASTER_VIEW.STATUS_CHANGE_TIME) + 1) *
                                     (PURCHASE_PRICE + CAPITAL_ACCESSORIES_PRICE + ADDON_ACCESSORIES_PRICE - BUYBACK_PRICE))
                                     / (timestampdiff(SQL_TSI_DAY, INSTALLATION_DATE, TURNBACK_DATE) + 1))) AS NBVCALC
 FROM FLEET_MASTER_VIEW,FLEET_STATUS_VIEW
JOIN FLEET_STATUS_VIEW ON FLEET_MASTER_VIEW.MVA_NUMBER = FLEET_STATUS_VIEW.MVA_NUMBER 
WHERE FLEET_MASTER_VIEW.VEHICLE_STATUS = 'U' AND FLEET_STATUS_VIEW.VEHICLE_STATUS = 'U'
AND FLEET_STATUS_VIEW.STATUS_CHANGE_TIME = (SELECT MAX( STATUS_CHANGE_TIME) FROM FLEET_STATUS_VIEW WHERE MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER AND FLEET_STATUS_VIEW.VEHICLE_STATUS = 'U' )
AND FLEET_MASTER_VIEW.STATUS_CHANGE_TIME = FLEET_STATUS_VIEW.STATUS_CHANGE_TIME


/*
2622
*/

*/

--BWMAFR\lungi.mlakalaka
/*
Request Name SARS RATES and COGTA rates  
Background / Requirement Description Please look at Processes 10338 and 10335 
I want to modify the values on Group B+ but the system is changing all the current values on all car groups 
Business Benefit / Motivation The correct rates are crucial for the running of the business 
*/

SELECT * FROM fcavisMAster..HQR_TR_ApprovalLimits -- Under R500 = no approval
/*
ConsultantLimit
500
*/


select 'On the way to lerato.gama (>R2500.00):'
use fcAvis	
SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ),ControlID,ControlValue,fcEventHist.*, fcEventValue.*
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ProcessID in
(
SELECT     ProcessID
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ControlID = 'HRQ_Import_RefundAmount' and  cast(ControlValue as money) > 2500
group by processID
)
and resultdate = 0 and CreateDate >= '20170101' and (select Username from fcuser where ID = fcEventHist.ResultUser ) NOT IN  ('rerouted.refunds','accpac')
order by processID , fcEventHist.ID , fcEventValue.ID desc



--select 'Waiting on conrad.mthunzi:'
--select (select Username from fcuser where ID = fcEventHist.ResultUser )as ResultUser,(select Description from fcAvis.dbo.fcRole where ID = ResultID) as RoleDesc,* 
--from fcEventHist where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'conrad.mthunzi'
--and resultdate = 0 and resultID <> 0 
--order by CreateDate,CreateTime desc


/*
jason.demmer
jason.demmer
jason.demmer
jason.demmer
jason.demmer
jason.demmer
*/




select 'Waiting on Lance.Smith:'
select (select Username from fcuser where ID = fcEventHist.ResultUser )as ResultUser,(select Description from fcAvis.dbo.fcRole where ID = ResultID) as RoleDesc,* 
from fcEventHist where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'Lance.Smith'
and resultdate = 0 and resultID <> 0 
order by CreateDate,CreateTime desc


/*
select 'When were they received by Jason Demmer:'
select (select Username from fcuser where ID = fcEventHist.ResultUser )as ResultUser,(select Description from fcAvis.dbo.fcRole where ID = ResultID) as RoleDesc,* 
from fcEventHist where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'jason.demmer'
order by CreateDate,CreateTime desc
*/




--HRQ80_Approve
/*
'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Function DBGetApprovalLimits(pWho)
	set objConn = createobject("ADODB.Connection")
	set objRecset = createobject("ADODB.RecordSet")
	objConn.Open fcCustom.Value(Process.Company, "Connections\MasterDB")
	strSQL = "SELECT TOP 1 * FROM HQR_TR_ApprovalLimits"
	
	'Determine whos approval limit is wanted
	If (LCase(pWho) = "supervisor") Then
		sqlCol = "Supervisor_Limit"
	ElseIf (LCase(pWho) = "ccmanager") Then
		sqlCol = "CustomerCareManager_Limit"
	Else
		sqlCol = "ConsultantLimit"
	End If
	
	'Get the value from database
	pReturnValue = 0

	objRecset.Open strSQL, objConn, 1, 3
	If Not objRecset.EOF Then
		pReturnValue = objRecset.Fields(sqlCol).Value
	End If

	objRecset.Close
	set objRecset = Nothing
	set objConn = Nothing

	DBGetApprovalLimits = pReturnValue
End Function
'*******************************************************************************


If (tmpApprovalValue > CDbl(DBGetApprovalLimits("ccmanager"))) Then
	UpdateCaseDetailsSQL = UpdateCaseDetailsSQL +" UPDATE HQR_TR_Cases SET DisplayNote = '" + caseNote + "', CaseStatus = 30  WHERE UniqueRef = '" + CStr(Process.ID) + "'"
 	fcDBCommand = UpdateCaseDetailsSQL
	fcTrigger = "HRQ90_ExecApproval"
*/






/*
-- only parents from RAtesDiary with Trigger DAtes :
use fcavisgroup
select dateadd(DAY,-45,ExpiryDate),(select RateCode from BLISFSQLRAC.RatesSTC.dbo.RateCode RC where RateID = RD.RateID),* from RatesSTC.dbo.[RatesDiaryParentsOnly2_5_10_151] RD
where RateCode in
(
'KR','KS',
'WP','WS', 'PI', 'VI', 'RP', 'SP', 'CA', 'PZ' , 'PG',
'2F', '2W', '2X', '2Y', '20', '24', '27', '2Z',
'SP', 'PI',
'GE',
'E6',
'E6',
'SP',
'UT',
'PI' , 'SPI'
)
order by ExpiryDate
*/

/*

-- Commented out realtime \ real time data :
SELECT  RentalVehicleLicensePlateNumber,RentalCheckinDateTime,RentalEnteringCheckinLocationDateTime,datediff(D,RentalCheckinDateTime,RentalEnteringCheckinLocationDateTime),RentalLocationDistrictCode2,RentalLocationCounterCode2,[RentalRootId],[RentalCurrentTimestamp],*
      ,[RentalTransactionType]      
      ,[RentalMVANumber]
      ,[RentalMod7CheckDigitNumber5]
      ,[RentalAgreementNumber]           
      ,[RentalLocationDistrictCode] 
      ,[RentalCheckoutLocationText]    
      ,convert(char(10),[RentalCheckinDateTime], 112) as RentalCheckinDateTime
      ,convert(char(10),RentalEnteringCheckinLocationDateTime, 112) as RentalEnteringCheckinLocationDateTime
      ,RentalLocationDistrictCode2
      ,[RentalCheckinLocationText]
      ,[RentalVehicleLicensePlateNumber]
      ,[RentalRemarksText]
      ,[RentalCheckinMileageCount]
      ,[RentalCheckoutMileageCount]     
      ,[RentalCorporateCode]      
  FROM [AvisDWRealtime].[dbo].[RentalRoot] 
  where [RentalVehicleLicensePlateNumber] in (
'ND546655',
'ND591016',
'FK84ZKGP',
'FK67CRGP',
'HTV778EC',
'HTT639EC',
'HTT883EC',
'FL91WVGP',
'ND671408',
'FL97HMGP',
'FL92NHGP',
'CA557888',
'FL91YPGP',
'HVJ875EC',
'ND831924',
'ND819749',
'ND831734',
'FL97JGGP',
'FM00YJGP',
'FL92CBGP',
'CA556424',
'CA567551',
'ND783113',
'FL92MGGP',
'FL97YYGP',
'FL97JMGP',
'CA291836',
'CA568978',
'CA572809',
'FL93TFGP',
'CA265633',
'ND832106',
'ND832110',
'FL89XHGP',
'ND832066',
'FL92BXGP',
'FL99GMGP',
'FM44MGGP',
'HVN433EC',
'FM63ZXGP',
'FL93RTGP',
'FM12KFGP',
'FM02LPGP',
--'JBD535MP',
'FL99WSGP',
'FM23SSGP',
'FM02FFGP',
'FM89YHGP',
'FN02HWGP',
'CA308617',
'DNR874L ',
'FM02DLGP',
'ND822081',
'FM74HNGP',
'CA605425',
'CA623517',
--'CA405350',
--'CA99057 ',
'FM91XNGP',
'CA260576',
'CA244283',
'CA620929',
'FH75GPGP',
'HSY968EC',
'ND681884',
'ND828592',
'FJ05CMGP',
'FJ29MBGP'
) and RentalTransactionType in ('WCI', 'WRM')
and RentalLocationDistrictCode2 = '070' and RentalLocationDistrictCode <> '070'   
  and RentalLocationCountryCode4 = '384'
  and datediff(D,RentalCheckinDateTime,RentalEnteringCheckinLocationDateTime) > 0 -- only the ones not on the same day
order by [AvisDWRealtime].[dbo].[RentalRoot].[RentalVehicleLicensePlateNumber]
--- this can still be calculated though - on erikas side ?????????????????????????????

*/


-- All Jason Demmer approvals and when he received them (look at the CREATE DATE):
/*
use fcAvis
SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ),ControlID,ControlValue,fcEventHist.*, fcEventValue.*
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ControlID = 'HRQ90_Username'  and ControlValue = 'Jason Demmer' 
order by fcEventHist.ID , fcEventValue.ID desc
*/



-- SOAPUI working production test for HQRefunds :
/*
<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:flow="http://FlowCentric.Avis.HQRefunds/">
   <soap:Header/>
   <soap:Body>
      <flow:ACCPACResponse>
         <!--Optional:-->
         <flow:sXMLResponse><![CDATA[<root xmlns:msdata="urn:schemas-microsoft-com:xml-msdata"><ACCPAC_Ready_Refunds_Confirmation><HQ_Refund_Response><CaseNumber>HQ-0000200726</CaseNumber><RANumber>E188637223</RANumber><Status>success</Status><PayErrDesc>success</PayErrDesc></HQ_Refund_Response></ACCPAC_Ready_Refunds_Confirmation></root>]]></flow:sXMLResponse>
      </flow:ACCPACResponse>
   </soap:Body>
</soap:Envelope>
*/


-- Riaan temp section START :
--NNNNNNNBBBBBB When was the last time each user logged on:
IF OBJECT_ID('tempdb..#TempFcloginForRiaan') IS NOT NULL
BEGIN
drop table #TempFcloginForRiaan
END
--select (select USername from FcavisGroup.dbo.fcUSer where ID = fcAvisGroup.dbo.fcLogin.Username) as UserN,* into #TempFclogin from fcAvisGroup.dbo.fcLogin 
select (select USername from FcavisGroup.dbo.fcUSer where ID = fcAvisGroup.dbo.fcLogin.Username and Active = 1  ) as UserN,* into #TempFcloginForRiaan from fcAvisGroup.dbo.fcLogin
select UserN,MAX(cDate + ' ' + Time) as LastLogin from #TempFcloginForRiaan
--where USerN = 'BWMAFR\simon.pratley'
group by UserN
order by MAX((cDate + ' ' + Time)) desc


select  'ALL logins for a particular user (incluses IP address):'
select *,cDate + ' ' + Time as LastLogin from #TempFcloginForRiaan where UserN = 'BWMAFR\Riaan.Weideman'
order by cDate + ' ' + Time desc
--Riaan temp section END


-- FlowCentricDirectoryWatcherActions
/*
NNNBBB Authorisation Paths (AS AT 30 OCT 2013) Goes up the list and back down again if declined:
------------------------------------------------------------------------------------------------
RSM (always)
NSM (no NSM for GOVERNMENT)
OD (Special case – auth only goes here if required by OD – Decline never goes back to OD)
S&MD
CE
*/


--Abraham.Lubisi (last time logged on)
--6930,8005 teamv

--AUTONEW :
-- \\racfs.abgza.co.za\vol2\DATA\TFRAUTO\ErrorLog



--NNNBBB Current user and password list:
-- drop table #tempsec
-- THIS IS THE HASH FOR pass : d74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1
/*
select  USerID,MAX(PwdEnd) as PwdEnd into #tempsec from fcsecurity
group by UserID

select fcuser.UserName,fcsecurity.* from fcsecurity 
inner join 
#tempsec on fcsecurity.UserID = #tempsec.UserID and fcsecurity.PwdEnd =
#tempsec.PwdEnd
inner join fcuser on fcsecurity.UserID = fcuser.ID
order by UserName
*/
--NOW to temporaritly update the password top test with :
/*
update fcsecurity set Password =
'd74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1' where ID = 1707
*/
--NOW to put it back to what it was (reset password):
/*
update fcsecurity set Password =
'9cc3e5abdfaee198a6b74b97ea91e306e1744ddf49876d3dcf6cb936dfd5c9d7' where ID = 1707
*/
--telly.thumina


---------------------BULK ARCHIVING / BULK CLOSING OF CASES ----START :

/*
-- TO TEST FIRST :
use fcavis
-- Create a temporary table to hold the records to be updated
DECLARE @uniqueId int
DECLARE @TEMP TABLE (uniqueId int)
-- Insert into the temporary table a list of the records to be updated
INSERT INTO @TEMP (uniqueId)
select top 5 ProcessID from fcEventHist where  ResultID = 12 and ResultDate = 0 and Assigned <> 'Unassigned' and EventID = 9 order by ProcessID
--select * from @TEMP ---------------------------------------------- This line is here for testing
------------------------------------------------------------------ SELECT uniqueId FROM myTable
-- Start looping through the records
WHILE EXISTS (SELECT * FROM @TEMP)
BEGIN
-- Grab the first record out
SELECT Top 1 @uniqueId = uniqueId FROM @TEMP
PRINT 'Working on @uniqueId = ' + CAST(@uniqueId as varchar(100))
-- Perform some update on the record
------------------------------------------------------------------ UPDATE myTable SET myField = 'something or other' WHERE uniqueId = @uniqueId
-- Drop the record so we can move onto the next one
DELETE FROM @TEMP WHERE uniqueId = @uniqueId
END


/*
(5 row(s) affected)
Working on @uniqueId = 1960647

(1 row(s) affected)
Working on @uniqueId = 1960736

(1 row(s) affected)
Working on @uniqueId = 2466922

(1 row(s) affected)
Working on @uniqueId = 2467115

(1 row(s) affected)
Working on @uniqueId = 2467377

(1 row(s) affected)
*/






-- TO ARCHIVE (FOR REAL) (12 is Precious) :
use fcavis
-- Create a temporary table to hold the records to be updated
DECLARE @uniqueId int
DECLARE @TEMP TABLE (uniqueId int)
-- Insert into the temporary table a list of the records to be updated
INSERT INTO @TEMP (uniqueId)
select top 5000 ProcessID from fcEventHist where  ResultID = 12 and ResultDate = 0 and Assigned <> 'Unassigned' and EventID = 9 order by ProcessID
--select * from @TEMP ---------------------------------------------- This line is here for testing
------------------------------------------------------------------ SELECT uniqueId FROM myTable
-- Start looping through the records
WHILE EXISTS (SELECT * FROM @TEMP)
BEGIN
-- Grab the first record out
SELECT Top 1 @uniqueId = uniqueId FROM @TEMP
PRINT 'Working on @uniqueId = ' + CAST(@uniqueId as varchar(100))
-- Perform some update on the record
------------------------------------------------------------------ UPDATE myTable SET myField = 'something or other' WHERE uniqueId = @uniqueId
EXEC fc_Core_Trigger_ArchiveValues @ProcessID = @uniqueId
EXEC fc_Core_Trigger_ArchiveRouting @ProcessID =  @uniqueId
EXEC fc_Core_Trigger_ArchiveDescriptions @ProcessID = @uniqueId
EXEC fc_Core_Trigger_ArchiveProcess @ProcessID = @uniqueId

-- Drop the record so we can move onto the next one
DELETE FROM @TEMP WHERE uniqueId = @uniqueId
END



-- TO ARCHIVE (FOR REAL) (30 is Mandla) :
use fcavis
-- Create a temporary table to hold the records to be updated
DECLARE @uniqueId int
DECLARE @TEMP TABLE (uniqueId int)
-- Insert into the temporary table a list of the records to be updated
INSERT INTO @TEMP (uniqueId)
select ProcessID from fcEventHist where  ResultID = 30 and ResultDate = 0 and Assigned <> 'Unassigned' and EventID = 9 order by ProcessID
--select * from @TEMP ---------------------------------------------- This line is here for testing
------------------------------------------------------------------ SELECT uniqueId FROM myTable
-- Start looping through the records
WHILE EXISTS (SELECT * FROM @TEMP)
BEGIN
-- Grab the first record out
SELECT Top 1 @uniqueId = uniqueId FROM @TEMP
--PRINT 'Working on @uniqueId = ' + CAST(@uniqueId as varchar(100))
-- Perform some update on the record
------------------------------------------------------------------ UPDATE myTable SET myField = 'something or other' WHERE uniqueId = @uniqueId
EXEC fc_Core_Trigger_ArchiveValues @ProcessID = @uniqueId
EXEC fc_Core_Trigger_ArchiveRouting @ProcessID =  @uniqueId
EXEC fc_Core_Trigger_ArchiveDescriptions @ProcessID = @uniqueId
EXEC fc_Core_Trigger_ArchiveProcess @ProcessID = @uniqueId

-- Drop the record so we can move onto the next one
DELETE FROM @TEMP WHERE uniqueId = @uniqueId
END










-- TO ARCHIVE (FOR REAL) (This time rerouted.refunds up to end Feb 2017):
use fcavis
-- Create a temporary table to hold the records to be updated
DECLARE @uniqueId int
DECLARE @TEMP TABLE (uniqueId int)
-- Insert into the temporary table a list of the records to be updated
INSERT INTO @TEMP (uniqueId)
select ProcessID from fcEventHist where  ResultID = 89 and ResultDate = 0 and Assigned <> 'Unassigned' and CreateDate < '20170301'
--select * from @TEMP ---------------------------------------------- This line is here for testing
------------------------------------------------------------------ SELECT uniqueId FROM myTable
-- Start looping through the records
WHILE EXISTS (SELECT * FROM @TEMP)
BEGIN
-- Grab the first record out
SELECT Top 1 @uniqueId = uniqueId FROM @TEMP
--PRINT 'Working on @uniqueId = ' + CAST(@uniqueId as varchar(100))
-- Perform some update on the record
------------------------------------------------------------------ UPDATE myTable SET myField = 'something or other' WHERE uniqueId = @uniqueId
EXEC fc_Core_Trigger_ArchiveValues @ProcessID = @uniqueId
EXEC fc_Core_Trigger_ArchiveRouting @ProcessID =  @uniqueId
EXEC fc_Core_Trigger_ArchiveDescriptions @ProcessID = @uniqueId
EXEC fc_Core_Trigger_ArchiveProcess @ProcessID = @uniqueId

-- Drop the record so we can move onto the next one
DELETE FROM @TEMP WHERE uniqueId = @uniqueId
END
*/




---------------------BULK ARCHIVING / BULK CLOSING OF CASES ----END 



-- These are the ones Werner wants moved :
select * from  BLISFSQLRAC.RatesSTC.dbo.RateDiary RD INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Segmentation SMTT ON RD.SegmentationId = SMTT.SegmentationId INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Segment SMT ON SMTT.SegID = SMT.SegID INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Unit UT ON SMTT.UnitID = UT.UnitID INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.RateCode RC ON RD.RateID = RC.RateID INNER JOIN
                      fcAvisGroup_Custom.dbo.Custom_VIPCO_RatesDataCaptured RDC ON RDC.RealRateCode = RC.RateCode
where UT.UnitName = 'South Africa'  
and RentalCompanyID = 'A' 
and RC.RateCode IN
(
'20',
'24',
'27',
'2F',
'2W',
'2X',
'2Y',
'2Z',
'BK',
'CA',
'E6',
'E6',
'GE',
'KR',
'KS',
'PG',
'PI',
'PI',
'PI',
'PZ',
'RP',
'SP',
'SP',
'SP',
'UT',
'VI',
'VZ',
'WP',
'WQ',
'WQ',
'WQ',
'WQ',
'WQ',
'WS',
'WT',
'WT',
'WT',
'WT',
'Y8'
)
order by RC.RateCode


--9998 COEGA with Thato :
-- The OPEN ones
use fcAvisGroup
SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ),ControlID,ControlValue,fcEventHist.*, fcEventValue.*
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ProcessID = 9998
order by fcEventHist.ID , fcEventValue.ID


/*
-- RatesDiary Queries :
SELECT * FROM BLISFSQLRAC.RatesSTC.dbo.RateDiary 
SELECT * FROM BLISFSQLRAC.RatesSTC.dbo.STC where STC in (840207,840307)
SELECT * FROM BLISFSQLRAC.RatesSTC.dbo.STCLocation where LocationID in (10,57)
*/


--Fleet file : FLEETREP loads it
--\\racfs.abgza.co.za\vol2\data\tfrfleet\VEH_DATAZA.TXT
--Rates DIARY 2017 :
--http://web.abgza.co.za/ratesstc/
--http://blisfflowcrac/fcavisgroup/
--http://blisfflowcrac/fcavis

--Then remember to reset emails and passwords after a restore to QA (sets password to pass) :
--update fcAvis.dbo.fcSecurity set Password = 'd74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1' , PwdEnd = 20201231
-- wont allow me to store NULLS
-- the above hashed password is pass
--update fcAvis.dbo.fcUser set Email = 'kswanepoel@avis.co.za'


--select * from fcAvisGroup..whowheremore where Stc IN ('841504','841505') and Status = 'Open'




--User STC relationship :
/*


-- for a simple display :

SELECT     (select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) as KAM ,(select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) as RSM, STC_Code,  Segment
,NSMUsername
FROM         fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation
Order by STC_Code 



-- this time looking for a user :
SELECT     ID, KAMUserID,(select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) as KAM, KAMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = KAMRoleID) as KAMRole, RSMUserID ,(select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) as RSM, RSMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = RSMRoleID) RSMRole, RSMRoleDescription, STC_Code, SegmentationID, Segment, DateCreated
,NSMUsername
FROM         fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation
where 
(select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) like '%kevin%' 
or 
(select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) like '%kevin%' 
or NSMUsername like '%guy%'
Order by STC_Code 

--Looking at particular STCS :

SELECT     ID, KAMUserID,(select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) as KAM, KAMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = KAMRoleID) as KAMRole, RSMUserID ,(select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) as RSM, RSMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = RSMRoleID) RSMRole, RSMRoleDescription, STC_Code, SegmentationID, Segment, DateCreated
,NSMUsername
FROM         fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation where STC_Code IN ('841504','841505')
Order by STC_Code 

--User STC relationship (3 different orders):

SELECT     ID, KAMUserID,(select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) as KAM, KAMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = KAMRoleID) as KAMRole, RSMUserID ,(select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) as RSM, RSMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = RSMRoleID) RSMRole, RSMRoleDescription, STC_Code, SegmentationID, Segment, DateCreated
,NSMUsername
FROM         fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation
Order by KAM,STC_Code

SELECT     ID, KAMUserID,(select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) as KAM, KAMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = KAMRoleID) as KAMRole, RSMUserID ,(select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) as RSM, RSMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = RSMRoleID) RSMRole, RSMRoleDescription, STC_Code, SegmentationID, Segment, DateCreated
,NSMUsername
FROM         fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation
Order by (select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID),STC_Code -- RSM

SELECT     ID, KAMUserID,(select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) as KAM, KAMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = KAMRoleID) as KAMRole, RSMUserID ,(select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) as RSM, RSMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = RSMRoleID) RSMRole, RSMRoleDescription, STC_Code, SegmentationID, Segment, DateCreated
,NSMUsername
FROM         fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation
Order by STC_Code 



*/



--This is how I’m now swapping :
--BWMAFR\Natascha.Duweke
--BWMAFR\Samantha.Botha

-- To set the role to Samantha:
/*
Update fcUser set RoleID = 0 where Username = 'BWMAFR\Natascha.Duweke'
Update fcUser set RoleID = 61 where Username = 'BWMAFR\Samantha.Botha'
*/
-- To set the role to Natasha:
/*
Update fcUser set RoleID = 0 where Username = 'BWMAFR\Samantha.Botha'
Update fcUser set RoleID = 61 where Username = 'BWMAFR\Natascha.Duweke'
*/

/*
declare @ConsultantName varchar(50)
set @ConsultantName = 'BWMAFR\Samantha.Botha'
update fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation 
set 
KAMUserID = (select ID as UserID from fcAvisGroup.dbo.fcUser where UserName  = @ConsultantName)
,
KAMRoleID = (select RoleID from fcAvisGroup.dbo.fcUser where UserName  = @ConsultantName)
where STC_Code  IN  ('841505') 
-- (1 row affected)
*/




-- Investigating HQrefunds not reversed\rejected properly :
/*
--rejected this morning correclty :
select LastActionDate,* from fcavismaster.dbo.HQR_TR_Cases join  fcavismaster.dbo.HQR_TR_CaseDetails on UniqueRef = FK_UniqueRef WHERE CaseNumber = 'HQ-0000182675'
select LastActionDate,* from fcavismaster.dbo.HQR_TR_Cases join  fcavismaster.dbo.HQR_TR_CaseDetails on UniqueRef = FK_UniqueRef WHERE CaseNumber = 'HQ-0000182617'
select LastActionDate,* from fcavismaster.dbo.HQR_TR_Cases join  fcavismaster.dbo.HQR_TR_CaseDetails on UniqueRef = FK_UniqueRef WHERE CaseNumber = 'HQ-0000182441'
--ready for banking :
select LastActionDate,* from fcavismaster.dbo.HQR_TR_Cases join  fcavismaster.dbo.HQR_TR_CaseDetails on UniqueRef = FK_UniqueRef WHERE CaseNumber = 'HQ-0000182997'
select LastActionDate,* from fcavismaster.dbo.HQR_TR_Cases join  fcavismaster.dbo.HQR_TR_CaseDetails on UniqueRef = FK_UniqueRef WHERE CaseNumber = 'HQ-0000182998'
select LastActionDate,* from fcavismaster.dbo.HQR_TR_Cases join  fcavismaster.dbo.HQR_TR_CaseDetails on UniqueRef = FK_UniqueRef WHERE CaseNumber = 'HQ-0000183036'

use fcAvis
SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ),*
FROM         fcEventHist 
where ProcessID = 
(
select UniqueRef from fcavismaster.dbo.HQR_TR_Cases join  fcavismaster.dbo.HQR_TR_CaseDetails on UniqueRef = FK_UniqueRef WHERE CaseNumber = 'HQ-0000182675'
)
order by ID 

use fcAvis
SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ),*
FROM         fcEventHist 
where ProcessID = 
(
select UniqueRef from fcavismaster.dbo.HQR_TR_Cases join  fcavismaster.dbo.HQR_TR_CaseDetails on UniqueRef = FK_UniqueRef WHERE CaseNumber = 'HQ-0000182617'
)
order by ID 


use fcAvis
SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ),*
FROM         fcEventHist 
where ProcessID = 
(
select UniqueRef from fcavismaster.dbo.HQR_TR_Cases join  fcavismaster.dbo.HQR_TR_CaseDetails on UniqueRef = FK_UniqueRef WHERE CaseNumber = 'HQ-0000182441'
)
order by ID 


use fcAvis
SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ),*
FROM         fcEventHist 
where ProcessID = 
(
select UniqueRef from fcavismaster.dbo.HQR_TR_Cases join  fcavismaster.dbo.HQR_TR_CaseDetails on UniqueRef = FK_UniqueRef WHERE CaseNumber = 'HQ-0000182997'
)
order by ID 

use fcAvis
SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ),*
FROM         fcEventHist 
where ProcessID = 
(
select UniqueRef from fcavismaster.dbo.HQR_TR_Cases join  fcavismaster.dbo.HQR_TR_CaseDetails on UniqueRef = FK_UniqueRef WHERE CaseNumber = 'HQ-0000182998'
)
order by ID 

use fcAvis
SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ),*
FROM         fcEventHist 
where ProcessID = 
(
select UniqueRef from fcavismaster.dbo.HQR_TR_Cases join  fcavismaster.dbo.HQR_TR_CaseDetails on UniqueRef = FK_UniqueRef WHERE CaseNumber = 'HQ-0000183036'
)
order by ID 


*/





select 'Samantha:'
select * from fcavisgroup..whowheremore where stc = '841505' and Status = 'Open'
select 'Belinda:'
select * from fcavisgroup..whowheremore where stc = '841500' and Status = 'Open'
select 'Sandra Cassim (resiged and left 28 Feb 2017):'
select * from fcavisgroup..whowheremore where stc IN ('841500','841504') and Status = 'Open'
--select * from fcavisgroup..whowheremore where RateCode = 'AQ'
/*
CreateDate
20100401
*/




/*
Hi Kieran,
Looks like this issue has just risen of the dead again.
Message: K2 CompleteStopSellClientEvent failed message: 26030 Worklist item 62895_34 not found for K2:BWMAFR\SRVK2PRO at 10.98.226.120:448166
Thread: 
Logger: Avis.RAC.Stopsell.Scraper.Program
*/

/*
--NNNNNBBBBB To find the one above (62895_34):
select substring(Message,68,8),* from RAC_Diagnostics..RACErrorLog where ApplicationId = 177 and substring(Message,68,8) = '62895_34'
*/

/*
-- All errors from the last week :
select substring(Message,68,8),* from RAC_Diagnostics..RACErrorLog where ApplicationId = 177 and  DATEADD(dd, DATEDIFF(dd,0,LogDate), 0)  >= DATEADD(dd, DATEDIFF(dd,7,GETDATE()), 0) 
*/








--select 'Stopsell scraper fix for Khotso :'
--select substring(Message,68,8) from RAC_Diagnostics..RACErrorLog where ApplicationId = 177 and  DATEADD(dd, DATEDIFF(dd,0,LogDate), 0)  = DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0)
--group by substring(Message,68,8)




/*
--FIX :
update BLISFSQL3RAC.Stopsell.dbo.TransactionStore set transactionstatusid = 7 where K2SerialNumber COLLATE SQL_Latin1_General_CP1_CI_AS IN
(
select substring(Message,68,8) from RAC_Diagnostics..RACErrorLog where ApplicationId = 177 and  DATEADD(dd, DATEDIFF(dd,0,LogDate), 0)  = DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0)
group by substring(Message,68,8)
)
*/



--select 'Sandras urgent rate:'
--select * from fcAvisGroup..whowheremore where RateCode = 'JJ' and Status = 'Open'




/*
--NNNNNNNNNNBBBBBBBBBBBBBBB To Check out a problem with a project :
---CC110ViewImportedCases:
---CC11001DoStuff:
---Date_Of_Adjustment = fcCustomFunctions.FormatDate(Date_Of_Adjustment, "yyyy/MM/dd")
/*
These are the fields that are needed in the spreadsheet:
RA_Number
Comment_From_Sender
Reason_For_Call
Case_Type
Comments
Reason_Code
Closed ---- This is actually Import
Wizard_Amount ---- 123 or  -123.30 NOT 123.30-
Date_Of_Adjustment ---- yyyy/MM/dd
Wizard_Sign_On
*/

use fcAvis
SELECT     '\\blisfflowcrac\c$\Inetpub\wwwroot\fcAvis\upload\'  + ControlValue,ControlID,ControlValue,fcEventHist.*, fcEventValue.*
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ProcessID in
(
424447,
424443
)
and ControlID = 'CC10040ImportFile'
-- The CLOSED ones
use fcAvis
SELECT     '\\blisfflowcrac\c$\Inetpub\wwwroot\fcAvis\upload\' + ControlValue,ControlID,ControlValue,fcEventArchive.*, fcEventValueArchive.*
FROM         fcEventArchive INNER JOIN
fcEventValueArchive ON fcEventArchive.EventHistID = fcEventValueArchive.EventHistID
where ProcessID in
(
424447,
424443
)
and ControlID = 'CC10040ImportFile'
*/








/*--- NNNBBB 100% correct procedure for removing PROJECTS -------START :


/* First open the links from mySLA and copy them to get the EventHistID’s as below (IT has to be done this way because multiple projects can have the same project number / case number):
http://blisfflowcrac/fcAvis/myActionItem.aspx?g=3&id=1007302
http://blisfflowcrac/fcAvis/myActionItem.aspx?g=3&id=1038986
http://blisfflowcrac/fcAvis/myActionItem.aspx?g=3&id=1041064

'1007302',
'1038986',
'1041064'
*/


-- First Check:
select * from fcavismaster.dbo.transactionSLAs where EventHistID in 
(
'1007302',
'1038986',
'1041064'
)
/*
ID	EventHistID	CaseNumber	CaseType	Parameter2	Parameter3	CreateDate	CreateTime	ResultDate	ResultTime	CreateRoleID	ResultRoleID	ActionAmount	CreateDateTime	SLA_Green	SLA_Orange	SLA_Red
560313	1041064	PP-0001298	Project			20120822	090428	0	0	9	9	0	2012-08-22 09:04:28.000	2012-08-29 09:04:28.000	NULL	NULL
544330	1007302	PP-0001262	Project			20120726	113200	0	0	9	9	0	2012-07-26 11:32:00.000	2012-08-02 11:32:00.000	NULL	NULL
559220	1038986	PP-0001295	Project			20120820	154858	0	0	9	9	0	2012-08-20 15:48:58.000	2012-08-27 15:48:58.000	NULL	NULL
*/

--Delete 
delete fcavismaster.dbo.transactionSLAs where EventHistID in 
(
'1007302',
'1038986',
'1041064'
)
--(3 row(s) affected)

-- The OPEN ones
use fcAvis
SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ),ControlID,ControlValue,ProcessID
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where fcEventHist.ID in
(
'1007302',
'1038986',
'1041064'
)
order by fcEventHist.ID , fcEventValue.ID
/*
(No column name)	ControlID	ControlValue	ProcessID
fika.hewu	NULL	NULL	652179
fika.hewu	NULL	NULL	670620
fika.hewu	NULL	NULL	671894
*/
-- there is more on the left fcEventHist.ID thats why we make the list with this one !!!
-- First Check:
use fcAvis
SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ) ,ControlID,ControlValue,ProcessID
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ProcessID in
(
'652179',
'670620',
'671894'
)
order by fcEventHist.ID , fcEventValue.ID
--drop table #EventHistID
-- now delete the entire process :
use fcAvis 
SELECT     fcEventHist.ID into #EventHistID
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ProcessID in
(
'652179',
'670620',
'671894'
)
--(45 row(s) affected)

select * from #EventHistID
delete fcEventHist where ID IN (select * from #EventHistID)
--(6 row(s) affected)
delete fcEventValue where EventHistID IN (select * from #EventHistID)
--(42 row(s) affected)
*/--- NNNBBB 100% correct procedure for removing PROJECTS -------END


/* --START-HQREFUND-SECTION
-----1 October 2016 HQREFUND-CHANGES
/*
ConsultantLimit 1500 - will be 500 
Sup 5000 – will be 1500
Granton 25000 – will be 2500
Above will be Jason Demmer
*/
--The effect on staff will be as follows :

select 'OLD 2016 test'
select 'no auth',count(*) from fcavismaster..HQR_TR_CaseDetails where CaptureDate > '20160101' and RefundAmount <> 0
and RefundAmount between 1 and 1499.99


select 'sup',count(*) from fcavismaster..HQR_TR_CaseDetails where CaptureDate > '20160101' and RefundAmount <> 0
and RefundAmount between 1500 and 4999.99

select 'granton',count(*) from fcavismaster..HQR_TR_CaseDetails where CaptureDate > '20160101' and RefundAmount <> 0
and RefundAmount >= 5000 



select 'NEW 2016 test'
select 'no auth',count(*) from fcavismaster..HQR_TR_CaseDetails where CaptureDate > '20160101' and RefundAmount <> 0
and RefundAmount between 1 and 499.99


select 'sup',count(*) from fcavismaster..HQR_TR_CaseDetails where CaptureDate > '20160101' and RefundAmount <> 0
and RefundAmount between 500 and 1499.99

select 'granton',count(*) from fcavismaster..HQR_TR_CaseDetails where CaptureDate > '20160101' and RefundAmount <> 0
and RefundAmount between 1500 and 2499.99


select 'jason',count(*) from fcavismaster..HQR_TR_CaseDetails where CaptureDate > '20160101' and RefundAmount <> 0
and RefundAmount >= 2500

select 'OLD 2016 test PER DAY'
select 'no auth',count(*)/9/30 from fcavismaster..HQR_TR_CaseDetails where CaptureDate > '20160101' and RefundAmount <> 0
and RefundAmount between 1 and 1499.99


select 'sup',count(*)/9/30 from fcavismaster..HQR_TR_CaseDetails where CaptureDate > '20160101' and RefundAmount <> 0
and RefundAmount between 1500 and 4999.99

select 'granton',count(*)/9/30 from fcavismaster..HQR_TR_CaseDetails where CaptureDate > '20160101' and RefundAmount <> 0
and RefundAmount >= 5000 



select 'NEW 2016 test PER DAY'
select 'no auth',count(*)/9/30 from fcavismaster..HQR_TR_CaseDetails where CaptureDate > '20160101' and RefundAmount <> 0
and RefundAmount between 1 and 499.99


select 'sup',count(*)/9/30 from fcavismaster..HQR_TR_CaseDetails where CaptureDate > '20160101' and RefundAmount <> 0
and RefundAmount between 500 and 1499.99

select 'granton',count(*)/9/30 from fcavismaster..HQR_TR_CaseDetails where CaptureDate > '20160101' and RefundAmount <> 0
and RefundAmount between 1500 and 2499.99


select 'jason',count(*)/9/30 from fcavismaster..HQR_TR_CaseDetails where CaptureDate > '20160101' and RefundAmount <> 0
and RefundAmount >= 2500
*/ --END-HQREFUND-SECTION


-- stopsell :
-- http://vmisfrack2/Avis.RAC.StopSell.AdminUI/Default.aspx
-- http://vmisfrack2/Avis.RAC.StopSell.WebUI/

--Omniscraper printout example (VMISFSQL5RAC):
----------------------------------------------
-- VMISFSQL5RAC (USE MY CREDENTIALS TO LOG ON !!!!NOT REALTIMEREADER) :
/*
USE RAC_OmniScraper
DECLARE @requestorId UNIQUEIDENTIFIER
SET @requestorId='00B724DB-26D7-468D-BBC0-7C17536A6B1'
DECLARE @stopsellScreens TABLE(id INT IDENTITY(1, 1), Screen VARCHAR(MAX))
DECLARE @start INT
DECLARE @end INT
DECLARE @logscreen VARCHAR(MAX)

INSERT INTO @stopsellScreens SELECT Screen FROM ScreenLog WHERE RequestorId = @requestorId

SELECT @start = MIN(id), @end = MAX(id) FROM @stopsellScreens

WHILE @start <= @end
BEGIN
    SELECT @logscreen = screen FROM @stopsellScreens WHERE id = @start
    PRINT @logscreen
    SELECT @start = @start + 1
END
*/

/*
-- Customer Care cases that have been to a particular user  in a PARTICULAR DATE RANGE :
----------------------------------------------------------------------------------------

--http://blisfsql3rac/ReportServer/Pages/ReportViewer.aspx?%2fCRIS%2fCustomer+Care+Cases+Summary&rs:Command=Render&StartDate=2016/07/04&EndDate=2016/07/04
-- report run for avis 3 
--report run for budget 3 
-- total 6
-- query below : 6
use fcAvis
SELECT     ProcessID
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'Theonique.Sango'
and CreateDate  =  '20160704' 
--and CreateDate  Between  '20160704' AND '20160707' 
group by ProcessID
order by ProcessID


--http://blisfsql3rac/ReportServer/Pages/ReportViewer.aspx?%2fCRIS%2fCustomer+Care+Cases+Summary&rs:Command=Render&StartDate=2016/07/04&EndDate=2016/07/04
-- report run for avis 30
--report run for budget 14
-- total 44
-- query below : 52
-- The CLOSED ones 
use fcAvis
SELECT     ProcessID
FROM         fcEventArchive INNER JOIN
fcEventValueArchive ON fcEventArchive.EventHistID = fcEventValueArchive.EventHistID
where (select Username from fcuser where ID = fcEventArchive.ResultUser ) = 'Theonique.Sango'
and CreateDate  =  '20160704' 
--and CreateDate  Between  '20160704' AND '20160707' 
group by ProcessID
order by ProcessID


--Process counts of above queries :
-- OPEN
use fcAvis
SELECT     ProcessID
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'Theonique.Sango'
and CreateDate  =  '20160704' 
and CreateDate  Between  '20160704' AND '20160707' 
group by ProcessID
order by ProcessID

--CLOSED
use fcAvis
SELECT     ProcessID
FROM         fcEventArchive INNER JOIN
fcEventValueArchive ON fcEventArchive.EventHistID = fcEventValueArchive.EventHistID
where (select Username from fcuser where ID = fcEventArchive.ResultUser ) = 'Theonique.Sango'
and CreateDate  =  '20160704' 
--and CreateDate  Between  '20160704' AND '20160707' 
group by ProcessID
order by ProcessID


*/

/* --GERHARD ASAP QUERY START
use fcAvisGroup
SELECT     ProcessID,ResultDate,(select (select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) from fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation 
where STC_Code = (select ControlValue from fcEventValue b where b.EventHistID = c.EventHistID and ControlID = 'VR90120STC_Code' )),
(select (select Email from fcAvisGroup.dbo.fcUser where ID = KAMUserID) from fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation 
where STC_Code = (select ControlValue from fcEventValue b where b.EventHistID = c.EventHistID and ControlID = 'VR90120STC_Code' )),
(select ControlValue from fcEventValue b where b.EventHistID = c.EventHistID and ControlID = 'VR90120STC_Code' ),
(select ControlValue from fcEventValue b where b.EventHistID = c.EventHistID and ControlID = 'VR9060RateName' ),
(select ControlValue from fcEventValue b where b.EventHistID = c.EventHistID and ControlID = 'VR90697ASAPComments' ),
(select ControlValue from fcEventValue b where b.EventHistID = c.EventHistID and ControlID = 'VR90698ExpiryDate' ),
(select ControlValue from fcEventValue b where b.EventHistID = c.EventHistID and ControlID = 'VR90699NoExpiryDate' ),
(select ControlValue from fcEventValue b where b.EventHistID = c.EventHistID and ControlID = 'VR90695ASAP' ) 
FROM         fcEventHist a  LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue c ON a.ID = c.EventHistID
where ControlID = 'VR90695ASAP' and ControlValue = 'Yes'
UNION
SELECT     ProcessID,ResultDate,(select (select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) from fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation
where STC_Code = (select ControlValue from fcEventValueArchive b where b.EventHistID = c.EventHistID and ControlID = 'VR90120STC_Code' )),
(select (select Email from fcAvisGroup.dbo.fcUser where ID = KAMUserID) from fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation
where STC_Code = (select ControlValue from fcEventValueArchive b where b.EventHistID = c.EventHistID and ControlID = 'VR90120STC_Code' )),
(select ControlValue from fcEventValueArchive b where b.EventHistID = c.EventHistID and ControlID = 'VR90120STC_Code' ),
(select ControlValue from fcEventValueArchive b where b.EventHistID = c.EventHistID and ControlID = 'VR9060RateName' ),
(select ControlValue from fcEventValueArchive b where b.EventHistID = c.EventHistID and ControlID = 'VR90697ASAPComments' ),
(select ControlValue from fcEventValueArchive b where b.EventHistID = c.EventHistID and ControlID = 'VR90698ExpiryDate' ),
(select ControlValue from fcEventValueArchive b where b.EventHistID = c.EventHistID and ControlID = 'VR90699NoExpiryDate' ),
(select ControlValue from fcEventValueArchive b where b.EventHistID = c.EventHistID and ControlID = 'VR90695ASAP' )

FROM         fcEventArchive a INNER JOIN
                              fcEventValueArchive c ON a.EventHistID = c.EventHistID
where ControlID = 'VR90695ASAP' and ControlValue = 'Yes'
order by ResultDate desc
*/ --GERHARD ASAP QUERY END


--NNNBBB AWESOME WAY TO SEE WHO HAS ACCESS TO WHAT (ACCESS RIGHTS):
-- WOW THIS IS NOW AWESOME (This was requested by tanya Tanja Swanepoel - Auditor):
/*
use fcavis
select *,(select Description from fcevent where fcevent.ID =
fcEventCreate.EventID),
(select EventCode from fcevent where fcevent.ID = fcEventCreate.EventID) as EventCode,
(select Name from fcrolegroup  where fcrolegroup.ID = fcEventCreate.CreateID),
(select UserName from fcuser where fcuser.RoleID = fcusergroup.RoleID)
 from fcEventCreate 
inner join fcusergroup on fcEventCreate.CreateID = fcusergroup.RoleGroupID
where (select EventCode from fcevent where fcevent.ID = fcEventCreate.EventID)
like 'H%'
and (select Active from fcuser where fcuser.RoleID = fcusergroup.RoleID) = 1 /* THIS LINE MAKES SURE THAT IT INCLUDES ONLY ACTIVE USERS */
and (select UserName from fcuser where fcuser.RoleID = fcusergroup.RoleID) NOT IN ('Importer.User','rejected.refunds','rerouted.refunds','Tanja.Swanepoel','site.admin','accpac','Kieran.Swanepoel') /* EXCLUDE THE INTERNAL USERS */
and CreateType = 'First Activity'
*/


--Credentials :
--Login FlowCentric Password : Fl0wc3ntr!c 
--update fcavismaster..transactionCustomerCareCases set RentalCompanyID = 1 where RentalCompanyID is NULL
select 'select * from fcavismaster..transactionCustomerCareCases  where RentalCompanyID is NULL:'
select * from fcavismaster..transactionCustomerCareCases  where RentalCompanyID is NULL
--update fcavismaster..transactionCustomerCareCases  set RentalCompanyID = 1 where RentalCompanyID is NULL
--select * from  fcAvisMaster..HQR_TR_Cases WHERE AvisBudgetIndicator IS NULL
--update fcAvisMaster..HQR_TR_Cases set AvisBudgetIndicator = 'A' WHERE AvisBudgetIndicator IS NULL
--select * from  fcAvisMaster..HQR_TR_Cases order by DateCreated desc



---NNNBBB(100% CORRECT) push back procedure:
/*
declare @PID varchar(10)
set @PID = '3703'
use fcavisgroup
delete fcEventValue where EventHistID = (select  MAX(BaseID)  from  fcEventHist where ProcessID = @PID)
delete fcEventHist where ID = (select  MAX(ID)  from  fcEventHist where ProcessID = @PID)
update  fcEventHist set ResultDate = '0' , ResultTime = '0'  where ID = (select MAX(ID)  from  fcEventHist where ProcessID = @PID)
*/






-- Moved for Shemen :
/*
select * from fcAvisGroup..whowheremore where RateCode = 'BS' and Status = 'Open'
select * from fcAvisGroup..whowheremore where RateCode = 'V2' and Status = 'Open'
*/


-- How to remove a process / delete a process / HIDE a process :
----------------------------------------------------------------
/*
use fcAvis
update fcEventHist set ResultID = 0  where ID =
(
SELECT  ID
FROM         fcEventHist  
where ProcessID = 2159513 and ResultDate = 0
)
*/


--THIS TIME REMOVAL OF A GROUP OF PROCESSES : How to remove a process / delete a process / HIDE a process :
----------------------------------------------------------------
/*
use fcAvisGroup
update fcEventHist set ResultID = 0  where ID IN
(
SELECT  ID
FROM         fcEventHist  
where ProcessID in
(
9840,
9842,
9844,
9846,
9857,
9859,
9863,
9865,
9899,
9901,
9903,
9905,
9907,
9909,
9911,
9913,
9917,
9919,
9921,
9923,
9925,
9927,
9929,
9931,
9942,
9946,
9948,
9950,
9952,
9955,
9957,
9959,
9961,
9963,
9965,
9967
)
and ResultDate = 0
)
*/



--How to check if cases were rerouted and by WHO (HQRefunds example - note im stating from october 2017):
/*
use fcAvis
SELECT     (select Username from fcuser where ID = fcEventArchive.ResultUser ),ControlID,ControlValue,fcEventArchive.*, fcEventValueArchive.*
FROM         fcEventArchive INNER JOIN
fcEventValueArchive ON fcEventArchive.EventHistID = fcEventValueArchive.EventHistID
where EventID = 111 and CreateDate > '20171001'
--and ControlValue = 'HQ-0000182734'
order by fcEventArchive.ID , fcEventValueArchive.ID
*/

--How to check if cases were rerouted (ALC example):
/*
use fcAvis
SELECT     (select Username from fcuser where ID = fcEventArchive.ResultUser ),ControlID,ControlValue,fcEventArchive.*, fcEventValueArchive.*
FROM         fcEventArchive INNER JOIN
fcEventValueArchive ON fcEventArchive.EventHistID = fcEventValueArchive.EventHistID
where EventID = 128
order by fcEventArchive.ID , fcEventValueArchive.ID
-- THE LAST TIME ANY WERE REROUTED WAS 2010 !!!
*/

/*
--TO CORRECT ALL THE ConsultantName fields :
use fcavismaster
update HQR_TR_Cases 
set ConsultantName = LookupResultUser
from HQR_TR_Cases	
LEFT JOIN #TEMPLIST3 on UniqueRef = ProcessID
where  ConsultantName <> LookupResultUser and LookupResultUser <> 'Importer User'
--(2 row(s) affected)
*/

--User STC relationship :
/*

-- this time looking for a user :
SELECT     ID, KAMUserID,(select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) as KAM, KAMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = KAMRoleID) as KAMRole, RSMUserID ,(select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) as RSM, RSMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = RSMRoleID) RSMRole, RSMRoleDescription, STC_Code, SegmentationID, Segment, DateCreated
,NSMUsername
FROM         fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation
where 
(select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) like '%kevin%' 
or 
(select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) like '%kevin%' 
Order by STC_Code 

--User STC relationship (3 different orders):

SELECT     ID, KAMUserID,(select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) as KAM, KAMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = KAMRoleID) as KAMRole, RSMUserID ,(select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) as RSM, RSMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = RSMRoleID) RSMRole, RSMRoleDescription, STC_Code, SegmentationID, Segment, DateCreated
,NSMUsername
FROM         fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation
Order by KAM,STC_Code

SELECT     ID, KAMUserID,(select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) as KAM, KAMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = KAMRoleID) as KAMRole, RSMUserID ,(select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) as RSM, RSMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = RSMRoleID) RSMRole, RSMRoleDescription, STC_Code, SegmentationID, Segment, DateCreated
,NSMUsername
FROM         fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation
Order by (select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID),STC_Code -- RSM

SELECT     ID, KAMUserID,(select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) as KAM, KAMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = KAMRoleID) as KAMRole, RSMUserID ,(select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) as RSM, RSMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = RSMRoleID) RSMRole, RSMRoleDescription, STC_Code, SegmentationID, Segment, DateCreated
,NSMUsername
FROM         fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation
Order by STC_Code 




*/



select 'VR330RemoveAProcess - Lists all processes that were removed and by whom :'

use fcAvisGroup
SELECT     (select Username from fcuser where ID = fcEventArchive.ResultUser ),ControlID,ControlValue,fcEventArchive.*, fcEventValueArchive.*
FROM         fcEventArchive INNER JOIN
fcEventValueArchive ON fcEventArchive.EventHistID = fcEventValueArchive.EventHistID
where EventID = 126 AND ControlID = 'VR33020ProcessID'
--and ControlValue = 5985 --> this control value will be the ProcessID 
order by CreateDate desc
--BWMAFR\Daphne.Mathe



-- user list for Rates :
--select UserName from fcavisgroup..fcUser where  roleID <> 0 and  Available = 1 and Active = 1


--Monthly user list for Granton - Grantons user list / Grantons list:
/*
select UserName from fcavis..fcUser where  roleID <> 0 and  Available = 1 and Active = 1 
and
UserName not in 
(
'test.exec',
'New User 117',
'New User 90',
'New User 91',
'Kieran.Swanepoel',
'BWMAFR\Kieran.Swanepoel',
'telly.thuminaALC',
'Importer.User',
'site.admin',
'accpac'
)
Order by username
*/

---select 'Now check if they have any processes:'
/*
use fcavis
select * from (
select (select USername from fcUSer where RoleID = ResultID) as Username___________ ,ResultID,count(*) as NumProcesses from fcEventHist 
where  ResultID <> 0 and ResultDate = 0 and Assigned <> 'Unassigned'
group by ResultID  
--order by count(*) desc 
Union
select 'ALL USERS' as Username___________ ,'00' as ResultID, count(*) as NumProcesses from fcEventHist 
where  ResultID <> 0 and ResultDate = 0 and Assigned <> 'Unassigned'
Union
select 'UNASSIGNED-HQ-REFUNDS' as Username___________ ,'00' as ResultID, count(*) as NumProcesses from fcEventHist 
where  ResultID <> 0 and ResultDate = 0 and Assigned = 'Unassigned'
)  as musthave 
order by Username___________  
*/

/*
goodwill.ndlela	52	1
thamsanqa.guda	35	8
*/




---NNNBBB To load cargroup and waiver changes for Tersia 100% correct:
-- NOTE I ONLY USE THE TOP 1/2 of the ZA-Brochure .xls = ONLY INCLUDING VAT (the excluding is calculated)
-- Fields are in the same order as they are in the spreadsheet !!!!!
/*
-- START OF SELECTS SECTION !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -- IN EXACT SPREADSHEET ORDER 
select * from  fcAvisGroup_Custom.dbo.Custom_CarGroupsInfo

select CarGroup,
[LimitedBrouchureDaily-InclVAT] as 'CDW Daily Ltd' , 
[SuperBrouchureDaily-InclVAT] as 'CDW Daily Spr' ,
[LimitedBrouchure24day-InclVAT] as 'CDW 24+ Ltd' ,
[SuperBrouchure24day-InclVAT] as 'CDW 24+ Spr' 
from  fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver
order by CarGroup

Select CarGroup,
[LimitedBrouchureDaily-InclVAT] as 'TLW Daily Ltd' , 
[SuperBrouchureDaily-InclVAT] as 'TLW Daily Spr' , 
[LimitedBrouchure24day-InclVAT] as 'TLW 24+ Ltd', 
[SuperBrouchure24day-InclVAT] as 'CTLW 24+ Spr' 
from fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
order by CarGroup

select 
CarGroup,
[LimitedBrouchureDaily-InclVAT] as 'LTD DAILY COVER LIABILITY', --<-- THese have been sapped in the brochure 
[SuperBrouchure-InclVAT] as 'SPR DAILY COVER LIABILITY', --<-- THese have been sapped in the brochure 
'' as 'LTD WEEKEND LIABILITY',
'' as 'SPR WEEKEND LIABILITY',
[FullResponsibilty-InclVAT] as 'RESPONSIBILITY' from  fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses 
order by CarGroup

select CarGroup,
[PAI-IncludingVAT] as 'PAI'
from  fcAvisGroup_Custom.dbo.Custom_BrochureValues_PersonalAccidentInsurance

select CarGroup,
[WTDW-IncludingVAT] as 'WTDW'
from  fcAvisGroup_Custom.dbo.Custom_BrochureValues_WTDW



-- END OF SELECTS SECTION !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-- IN EXACT SPREADSHEET ORDER 

-- UPDATE FOR ONLY ONE CAR GROUP - START !!!!!!!!!!!!!!!!!!!


-- STEP 1: For example first update the Including vat values (EXCESS) (WEEKEND COVER IS NOT USED IN FLOWCENTRIC)
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses 
set 
[SuperBrouchure-InclVAT] =  6600  , 
[LimitedBrouchureDaily-InclVAT] = 36300 , 
[FullResponsibilty-InclVAT] = 357500 
where CarGroup = 'M'

--STEP 2: Then run this to update the EXCL values (EXCESS)

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses 
set 
[SuperBrouchure-ExclVAT] = round([SuperBrouchure-InclVAT]/1.14,2) , 
[LimitedBrouchureDaily-ExclVAT] = round([LimitedBrouchureDaily-InclVAT]/1.14,2) , 
[FullResponsibilty-ExclVAT] = round([FullResponsibilty-InclVAT]/1.14,2)
where CarGroup = 'M'

--(1 row(s) affected)

-- STEP 1: For example first update the Including vat values (CDW) :

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 116 ,
[SuperBrouchureDaily-InclVAT] = 171 ,
[LimitedBrouchure24day-InclVAT] = 99 ,
[SuperBrouchure24day-InclVAT] =  138
where CarGroup = 'M'

-- STEP 2: Then run this to update the EXCL values (CDW) :
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-ExclVAT] = round([LimitedBrouchureDaily-InclVAT]/1.14,2) , 
[SuperBrouchureDaily-ExclVAT] = round([SuperBrouchureDaily-InclVAT]/1.14,2) ,
[LimitedBrouchure24day-ExclVAT] = round([LimitedBrouchure24day-InclVAT]/1.14,2) , 
[SuperBrouchure24day-ExclVAT] = round([SuperBrouchure24day-InclVAT]/1.14,2)
where CarGroup = 'M'
--(1 row(s) affected)

-- STEP 1: For example first update the Including vat values (TLW) :
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 77 ,
[SuperBrouchureDaily-InclVAT] = 149 ,
[LimitedBrouchure24day-InclVAT] = 66 ,
[SuperBrouchure24day-InclVAT] =  105
where CarGroup = 'M'

-- STEP 2: Then run this to update the EXCL values (TLW) :

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-ExclVAT] = round([LimitedBrouchureDaily-InclVAT]/1.14,2) , 
[SuperBrouchureDaily-ExclVAT] = round([SuperBrouchureDaily-InclVAT]/1.14,2) ,
[LimitedBrouchure24day-ExclVAT] = round([LimitedBrouchure24day-InclVAT]/1.14,2) , 
[SuperBrouchure24day-ExclVAT] = round([SuperBrouchure24day-InclVAT]/1.14,2)
where CarGroup = 'M'
-- UPDATE FOR ONLY ONE CAR GROUP - END !!!!!!!!!!!!!!!!!!!



-- UPDATE FOR ALL CAR GROUPs - START !!!!!!!!!!!!!!!!!!!

-- EXCESS START 
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses 
set 
[LimitedBrouchureDaily-InclVAT] = 15500.00 , [SuperBrouchure-InclVAT] =  3500.00  , [FullResponsibilty-InclVAT] = 155000.00 
where CarGroup = 'A'
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses 
set 
[LimitedBrouchureDaily-InclVAT] = 21000.00 , [SuperBrouchure-InclVAT] =  4500.00  , [FullResponsibilty-InclVAT] = 210000.00 
where CarGroup = 'B'
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses 
set 
[LimitedBrouchureDaily-InclVAT] = 25000.00 , [SuperBrouchure-InclVAT] =  5000.00  , [FullResponsibilty-InclVAT] = 250000.00 
where CarGroup = 'C'
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses 
set 
[LimitedBrouchureDaily-InclVAT] = 25000.00 , [SuperBrouchure-InclVAT] =  5000.00  , [FullResponsibilty-InclVAT] = 250000.00 
where CarGroup = 'D'
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses 
set 
[LimitedBrouchureDaily-InclVAT] = 33000.00 , [SuperBrouchure-InclVAT] =  6000.00  , [FullResponsibilty-InclVAT] = 330000.00 
where CarGroup = 'E'
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses 
set 
[LimitedBrouchureDaily-InclVAT] = 45000.00 , [SuperBrouchure-InclVAT] =  8500.00  , [FullResponsibilty-InclVAT] = 450000.00 
where CarGroup = 'F'
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses 
set 
[LimitedBrouchureDaily-InclVAT] = 50000.00 , [SuperBrouchure-InclVAT] =  10000.00  , [FullResponsibilty-InclVAT] =  500000.00
where CarGroup = 'G'
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses 
set 
[LimitedBrouchureDaily-InclVAT] = 50000.00 , [SuperBrouchure-InclVAT] =  10000.00  , [FullResponsibilty-InclVAT] = 500000.00 
where CarGroup = 'H'
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses 
set 
[LimitedBrouchureDaily-InclVAT] = 53000.00 , [SuperBrouchure-InclVAT] =  11000.00  , [FullResponsibilty-InclVAT] = 530000.00 
where CarGroup = 'I'
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses 
set 
[LimitedBrouchureDaily-InclVAT] = 66000.00 , [SuperBrouchure-InclVAT] =  14000.00  , [FullResponsibilty-InclVAT] = 660000.00 
where CarGroup = 'J'
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses 
set 
[LimitedBrouchureDaily-InclVAT] = 38000.00 , [SuperBrouchure-InclVAT] =  7000.00  , [FullResponsibilty-InclVAT] = 380000.00 
where CarGroup = 'K'
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses
set 
[LimitedBrouchureDaily-InclVAT] = 53000.00 , [SuperBrouchure-InclVAT] =  11000.00  , [FullResponsibilty-InclVAT] = 530000.00 
where CarGroup = 'L'
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses
set 
[LimitedBrouchureDaily-InclVAT] = 36000.00 , [SuperBrouchure-InclVAT] =  7000.00  , [FullResponsibilty-InclVAT] = 360000.00 
where CarGroup = 'M'
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses
set 
[LimitedBrouchureDaily-InclVAT] = 54000.00 , [SuperBrouchure-InclVAT] =  11000.00  , [FullResponsibilty-InclVAT] = 540000.00 
where CarGroup = 'N'
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses
set 
[LimitedBrouchureDaily-InclVAT] = 34000.00 , [SuperBrouchure-InclVAT] =  6500.00  , [FullResponsibilty-InclVAT] = 340000.00 
where CarGroup = 'O'
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses
set 
[LimitedBrouchureDaily-InclVAT] = 33000.00 , [SuperBrouchure-InclVAT] =  6000.00  , [FullResponsibilty-InclVAT] = 330000.00 
where CarGroup = 'P'
-- EXCESS END 

--CDW START 
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 95 ,
[SuperBrouchureDaily-InclVAT] = 150 ,
[LimitedBrouchure24day-InclVAT] = 80 ,
[SuperBrouchure24day-InclVAT] =  120
where CarGroup = 'A'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 100 ,
[SuperBrouchureDaily-InclVAT] = 160 ,
[LimitedBrouchure24day-InclVAT] = 85 ,
[SuperBrouchure24day-InclVAT] =  130
where CarGroup = 'B'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 105 ,
[SuperBrouchureDaily-InclVAT] = 170 ,
[LimitedBrouchure24day-InclVAT] = 90 ,
[SuperBrouchure24day-InclVAT] =  135
where CarGroup = 'C'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 105 ,
[SuperBrouchureDaily-InclVAT] = 170 ,
[LimitedBrouchure24day-InclVAT] = 90 ,
[SuperBrouchure24day-InclVAT] =  135
where CarGroup = 'D'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 110 ,
[SuperBrouchureDaily-InclVAT] = 175 ,
[LimitedBrouchure24day-InclVAT] = 95 ,
[SuperBrouchure24day-InclVAT] =  140
where CarGroup = 'E'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 120 ,
[SuperBrouchureDaily-InclVAT] = 190 ,
[LimitedBrouchure24day-InclVAT] = 100 ,
[SuperBrouchure24day-InclVAT] =  150
where CarGroup = 'F'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 135 ,
[SuperBrouchureDaily-InclVAT] = 215 ,
[LimitedBrouchure24day-InclVAT] = 115 ,
[SuperBrouchure24day-InclVAT] =  170
where CarGroup = 'G'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 135 ,
[SuperBrouchureDaily-InclVAT] = 215 ,
[LimitedBrouchure24day-InclVAT] = 115 ,
[SuperBrouchure24day-InclVAT] =  170
where CarGroup = 'H'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 140 ,
[SuperBrouchureDaily-InclVAT] = 225 ,
[LimitedBrouchure24day-InclVAT] = 120 ,
[SuperBrouchure24day-InclVAT] =  180
where CarGroup = 'I'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 150 ,
[SuperBrouchureDaily-InclVAT] = 240 ,
[LimitedBrouchure24day-InclVAT] = 130 ,
[SuperBrouchure24day-InclVAT] =  190
where CarGroup = 'J'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 125 ,
[SuperBrouchureDaily-InclVAT] = 200 ,
[LimitedBrouchure24day-InclVAT] = 105 ,
[SuperBrouchure24day-InclVAT] =  160
where CarGroup = 'K'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 140 ,
[SuperBrouchureDaily-InclVAT] = 225 ,
[LimitedBrouchure24day-InclVAT] = 120 ,
[SuperBrouchure24day-InclVAT] =  180
where CarGroup = 'L'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 120 ,
[SuperBrouchureDaily-InclVAT] = 190 ,
[LimitedBrouchure24day-InclVAT] = 100 ,
[SuperBrouchure24day-InclVAT] =  150
where CarGroup = 'M'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 140 ,
[SuperBrouchureDaily-InclVAT] = 225 ,
[LimitedBrouchure24day-InclVAT] = 120 ,
[SuperBrouchure24day-InclVAT] =  180
where CarGroup = 'N'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 110 ,
[SuperBrouchureDaily-InclVAT] = 175 ,
[LimitedBrouchure24day-InclVAT] = 95 ,
[SuperBrouchure24day-InclVAT] =  140
where CarGroup = 'O'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 110 ,
[SuperBrouchureDaily-InclVAT] = 175 ,
[LimitedBrouchure24day-InclVAT] = 95 ,
[SuperBrouchure24day-InclVAT] =  140
where CarGroup = 'P'


--CDW END 

-- TLW START 
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 65 ,
[SuperBrouchureDaily-InclVAT] = 115 ,
[LimitedBrouchure24day-InclVAT] = 55 ,
[SuperBrouchure24day-InclVAT] =  80
where CarGroup = 'A'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 65 ,
[SuperBrouchureDaily-InclVAT] = 115 ,
[LimitedBrouchure24day-InclVAT] = 55 ,
[SuperBrouchure24day-InclVAT] =  80
where CarGroup = 'B'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 70 ,
[SuperBrouchureDaily-InclVAT] = 125 ,
[LimitedBrouchure24day-InclVAT] = 55 ,
[SuperBrouchure24day-InclVAT] =  90
where CarGroup = 'C'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 70 ,
[SuperBrouchureDaily-InclVAT] = 125 ,
[LimitedBrouchure24day-InclVAT] = 55 ,
[SuperBrouchure24day-InclVAT] =  90
where CarGroup = 'D'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 75 ,
[SuperBrouchureDaily-InclVAT] = 135 ,
[LimitedBrouchure24day-InclVAT] = 60 ,
[SuperBrouchure24day-InclVAT] =  95
where CarGroup = 'E'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 80 ,
[SuperBrouchureDaily-InclVAT] = 145 ,
[LimitedBrouchure24day-InclVAT] = 65 ,
[SuperBrouchure24day-InclVAT] =  100
where CarGroup = 'F'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 90 ,
[SuperBrouchureDaily-InclVAT] = 160 ,
[LimitedBrouchure24day-InclVAT] = 75 ,
[SuperBrouchure24day-InclVAT] =  110
where CarGroup = 'G'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 90 ,
[SuperBrouchureDaily-InclVAT] = 160 ,
[LimitedBrouchure24day-InclVAT] = 75 ,
[SuperBrouchure24day-InclVAT] =  110
where CarGroup = 'H'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 90 ,
[SuperBrouchureDaily-InclVAT] = 160 ,
[LimitedBrouchure24day-InclVAT] = 75 ,
[SuperBrouchure24day-InclVAT] =  110
where CarGroup = 'I'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 100 ,
[SuperBrouchureDaily-InclVAT] = 180 ,
[LimitedBrouchure24day-InclVAT] = 80 ,
[SuperBrouchure24day-InclVAT] =  125
where CarGroup = 'J'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 85 ,
[SuperBrouchureDaily-InclVAT] = 155 ,
[LimitedBrouchure24day-InclVAT] = 70 ,
[SuperBrouchure24day-InclVAT] =  110
where CarGroup = 'K'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 90 ,
[SuperBrouchureDaily-InclVAT] = 160 ,
[LimitedBrouchure24day-InclVAT] = 75 ,
[SuperBrouchure24day-InclVAT] =  110
where CarGroup = 'L'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 80 ,
[SuperBrouchureDaily-InclVAT] = 145 ,
[LimitedBrouchure24day-InclVAT] = 65 ,
[SuperBrouchure24day-InclVAT] =  100
where CarGroup = 'M'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 95 ,
[SuperBrouchureDaily-InclVAT] = 170 ,
[LimitedBrouchure24day-InclVAT] = 80 ,
[SuperBrouchure24day-InclVAT] =  120
where CarGroup = 'N'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 75 ,
[SuperBrouchureDaily-InclVAT] = 149 ,
[LimitedBrouchure24day-InclVAT] = 66 ,
[SuperBrouchure24day-InclVAT] =  105
where CarGroup = 'O'

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-InclVAT] = 75 ,
[SuperBrouchureDaily-InclVAT] = 149 ,
[LimitedBrouchure24day-InclVAT] = 66 ,
[SuperBrouchure24day-InclVAT] =  105
where CarGroup = 'P'

-- TLW END

-- PAI START
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_PersonalAccidentInsurance 
set 
[PAI-IncludingVAT] = 48
-- PAI END


-- WTDW START
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_WTDW
set 
[WTDW-IncludingVAT] = 28
-- WTDW START


--- ALL THE INCLUDING VAT VALUES UPDATED TOGETHER  -START !!!!!!!!!!!!!!!!!!! 
update fcAvisGroup_Custom.dbo.Custom_BrochureValues_Excesses 
set 
[SuperBrouchure-ExclVAT] = round([SuperBrouchure-InclVAT]/1.14,2) , 
[LimitedBrouchureDaily-ExclVAT] = round([LimitedBrouchureDaily-InclVAT]/1.14,2) , 
[FullResponsibilty-ExclVAT] = round([FullResponsibilty-InclVAT]/1.14,2)


update fcAvisGroup_Custom.dbo.Custom_BrochureValues_CollisionDamageWaiver 
set 
[LimitedBrouchureDaily-ExclVAT] = round([LimitedBrouchureDaily-InclVAT]/1.14,2) , 
[SuperBrouchureDaily-ExclVAT] = round([SuperBrouchureDaily-InclVAT]/1.14,2) ,
[LimitedBrouchure24day-ExclVAT] = round([LimitedBrouchure24day-InclVAT]/1.14,2) , 
[SuperBrouchure24day-ExclVAT] = round([SuperBrouchure24day-InclVAT]/1.14,2)


update fcAvisGroup_Custom.dbo.Custom_BrochureValues_TheftLossWaiver 
set 
[LimitedBrouchureDaily-ExclVAT] = round([LimitedBrouchureDaily-InclVAT]/1.14,2) , 
[SuperBrouchureDaily-ExclVAT] = round([SuperBrouchureDaily-InclVAT]/1.14,2) ,
[LimitedBrouchure24day-ExclVAT] = round([LimitedBrouchure24day-InclVAT]/1.14,2) , 
[SuperBrouchure24day-ExclVAT] = round([SuperBrouchure24day-InclVAT]/1.14,2)


update fcAvisGroup_Custom.dbo.Custom_BrochureValues_PersonalAccidentInsurance 
set 
[PAI-ExcludingVAT] = round([PAI-IncludingVAT]/1.14,2)

update fcAvisGroup_Custom.dbo.Custom_BrochureValues_WTDW
set 
[WTDW-ExcludingVAT] = round([WTDW-IncludingVAT]/1.14,2)

--- ALL THE INCLUDING VAT VALUES UPDATED TOGETHER  -END !!!!!!!!!!!!!!!!!!! 



-- UPDATE FOR ALL CAR GROUPs - END !!!!!!!!!!!!!!!!!!!

*/

--************************************FLOWER BOX START - HISTORY UPDATE - 100% CORRECT ************
--NNNBBB HOW TO UPDATE HISTORY/EXITING PROCESSES (currenlty open processes) IF A KAM CHANGES :
--NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
-- ONLY 4 REQUIREMENTS (1) The new KAMs STCs (2) The new KAMs Role Name eg 'VIPCO SA Northern Province Sales User1' (3) The old KAMs UserName eg 'BWMAFR\khanyisile.dube' , (4) The new KAMs UserName eg 'BWMAFR\Janine.Mansfield' 
/*
use fcAvisGroup
SELECT     ControlID,ControlValue,fcEventHist.*, fcEventValue.*
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where 
ControlID in
(
'VR20210KAMRoleDescription',
'VR4030CurrentRole',
'VR3026SetKAMRole',
'VR5021CurrentRole',
'VR21030CurrentRole',
'VR20030CurrentRole',
'VR19030CurrentRole',
'VR3021CurrentRole'
)                                                           --List of NEW KAMs STC's on line below
and ProcessID IN  (select ProcessID from whowheremore where STC IN ('841002') and Status = 'Open')
/*
ControlID	ControlValue	ID	ProcessID	BaseID	EventID	CreateID	ResultID	CreateDate	CreateTime	ResultDate	ResultTime	Escalated	Assigned	WarnTrigger	WarnAmount	CreateUser	ResultUser	Description	New	AutoAssign	DueDate	ActivationDate	Routed	NotifyDue	VersionNumber	DueTime	ActivationTime	ID	EventHistID	ControlID	ControlValue	Options
VR20210KAMRoleDescription	VIPCO SA Northern Province Sales User1	51684	5526	51683	45	1	29	20150602	020834	20150602	091608	0	Assigned	0	0	1	81	<b>VIPCO:Rate Name: </b>KENTZ - <b>STC:</b> 841002 - <b>Expiring on</b> 2015/08/31	0	0	0	0	0	1	1.0.0.8023	0	0	17391420	51684	VR20210KAMRoleDescription	VIPCO SA Northern Province Sales User1	<Attributes><Attribute name="visible">False</Attribute></Attributes>
VR3021CurrentRole	VIPCO SA Northern Province Sales User1	51709	5526	51684	46	29	44	20150602	091608	20150804	131548	0	Assigned	0	0	81	144	<b>VIPCO:Rate Name: </b>KENTZ(L1) - RENEWAL: <b>Select New Terms And Conditions</b>	0	0	0	0	0	1	1.0.0.8023	0	0	17758809	51709	VR3021CurrentRole	VIPCO SA Northern Province Sales User1	<Attributes><Attribute name="visible">True</Attribute></Attributes>
VR3026SetKAMRole	VIPCO SA Northern Province Sales User1	51709	5526	51684	46	29	44	20150602	091608	20150804	131548	0	Assigned	0	0	81	144	<b>VIPCO:Rate Name: </b>KENTZ(L1) - RENEWAL: <b>Select New Terms And Conditions</b>	0	0	0	0	0	1	1.0.0.8023	0	0	17758811	51709	VR3026SetKAMRole	VIPCO SA Northern Province Sales User1	<Attributes><Attribute name="visible">False</Attribute></Attributes>
VR20210KAMRoleDescription	VIPCO SA Gauteng Sales User1	52579	5614	52578	45	1	29	20150802	020840	20150803	120313	0	Assigned	0	0	1	81	<b>VIPCO:Rate Name: </b>JOHNSON and JOHNSON NO WAIVER - <b>STC:</b> 841002 - <b>Expiring on</b> 2015/10/31	0	0	0	0	0	1	1.0.0.8034	0	0	17748169	52579	VR20210KAMRoleDescription	VIPCO SA Gauteng Sales User1	<Attributes><Attribute name="visible">False</Attribute></Attributes>
VR5021CurrentRole	VIPCO SA Northern Province Sales User1	52649	5526	51709	48	44	44	20150804	131548	20150804	135316	0	Assigned	0	0	144	144	<b>VIPCO:Rate Name: </b>KENTZ(L1) - RENEWAL: <b>Enter Car Group Rates</b>	0	0	0	0	0	1	1.0.0.8034	0	0	17758946	52649	VR5021CurrentRole	VIPCO SA Northern Province Sales User1	<Attributes><Attribute name="visible">True</Attribute></Attributes>
VR3021CurrentRole	VIPCO SA Northern Province Sales User1	52805	5526	52804	46	44	44	20150821	133239	20150821	145330	0	Assigned	0	0	144	144	<b>VIPCO:Rate Name: </b>KENTZ(L1) - RENEWAL: <b>Select New Terms And Conditions</b>	0	0	0	0	0	1	1.0.0.8034	0	0	17827490	52805	VR3021CurrentRole	VIPCO SA Northern Province Sales User1	<Attributes><Attribute name="visible">True</Attribute></Attributes>
VR3026SetKAMRole	VIPCO SA Northern Province Sales User1	52805	5526	52804	46	44	44	20150821	133239	20150821	145330	0	Assigned	0	0	144	144	<b>VIPCO:Rate Name: </b>KENTZ(L1) - RENEWAL: <b>Select New Terms And Conditions</b>	0	0	0	0	0	1	1.0.0.8034	0	0	17827492	52805	VR3026SetKAMRole	VIPCO SA Northern Province Sales User1	<Attributes><Attribute name="visible">False</Attribute></Attributes>
VR5021CurrentRole	VIPCO SA Northern Province Sales User1	52806	5526	52805	48	44	44	20150821	145330	20150821	145559	0	Assigned	0	0	144	144	<b>VIPCO:Rate Name: </b>KENTZ(L1) - RENEWAL: <b>Enter Car Group Rates</b>	0	0	0	0	0	1	1.0.0.8034	0	0	17827627	52806	VR5021CurrentRole	VIPCO SA Northern Province Sales User1	<Attributes><Attribute name="visible">True</Attribute></Attributes>
*/







use fcAvisGroup                      -- NNNBBB controlvalue in line below will be the NEW KAMS Role Name !!!!
update fcEventValue set ControlValue = 'VIPCO SA Northern Province Sales User1' WHERE ID in (
SELECT     fcEventValue.ID
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where 
ControlID in
(
'VR20210KAMRoleDescription',
'VR4030CurrentRole',
'VR3026SetKAMRole',
'VR5021CurrentRole',
'VR21030CurrentRole',
'VR20030CurrentRole',
'VR19030CurrentRole',
'VR3021CurrentRole'
)                                                            --List of NEW KAMs STC's on line below
and ProcessID IN  (select ProcessID from whowheremore where STC IN ('841002') and Status = 'Open')
)
--(1 row(s) affected)



--NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB 
--updating history this changes the RSM in the CURRENTLY OPEN processes selected to correct to the new RSM :
----------------------------------------------------------------------------------------------

UPDATE fcEventValue SET ControlValue = 'International Sales Manager' WHERE ID IN 
(
SELECT    fcEventValue.ID
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ControlValue = 'COMMERCIAL SA Partners Manager' 
and ProcessID in ( 
5626,
5744,
5834,
5851,
5901
)
)


/*
--NNNBBB To move a process from one user to another:
----------------------------------------------------
-- (PART1 CHECK)Currently with a partiular user (Excluding removed processes):
select (select Username from fcuser where ID = fcEventHist.ResultUser )as ResultUser,(select Description from fcAvisGroup.dbo.fcRole where ID = ResultID) as RoleDesc,* 
from fcEventHist where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'BWMAFR\charmaine.maake'
and resultdate = 0 and resultID <> 0

-- (PART2 CHANGE example 1)Change Role and User as follows (This one is for all processes currently with the user):
update fcEventHist set ResultUser = (select ID from fcuser where Username = 'BWMAFR\charmaine.maake' ) ,  ----<-- new user name
ResultID = (select ID from fcAvisGroup.dbo.fcRole where Description = 'Rates Database Supervisor')  -----<-- new user role name
where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'BWMAFR\charmaine.maake' ---<-- old user
and resultdate = 0 and resultID <> 0
	
--OR

-- (PART2 CHANGE example 2)Change Role and User as follows (THIS TIME FOR 1 PROCESS ONLY -- add ProcessID at the end)  :
update fcEventHist set ResultUser = (select ID from fcuser where Username = 'BWMAFR\charmaine.maake' ) , ----<-- new user name
ResultID = (select ID from fcAvisGroup.dbo.fcRole where Description = 'Rates Database Supervisor') -----<-- new user role name
where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'BWMAFR\charmaine.maake' ---<-- old user
and resultdate = 0 and resultID <> 0 and ProcessID = 5256

--OR 
-- (PART2 CHANGE example 3)Change Role and User as follows (THIS TIME FOR MULTIPLE PROCESS ONLY -- add ProcessID at the end)  :
update fcEventHist set ResultUser = (select ID from fcuser where Username = 'BWMAFR\charmaine.maake' ) , ----<-- new user name
ResultID = (select ID from fcAvisGroup.dbo.fcRole where Description = 'Rates Database Supervisor') -----<-- new user role name
where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'BWMAFR\charmaine.maake' ---<-- old user
and resultdate = 0 and resultID <> 0 and ProcessID IN
(
1234,
5678
)

-OR

-- (PART2 CHANGE example 4)Change Role and User as follows (THIS TIME FOR ALL PROCESSES BELONGING TO A PARTICULAR STC)  :
update fcEventHist set ResultUser = (select ID from fcuser where Username = 'BWMAFR\Janine.Mansfield' ) , ----<-- new user name
ResultID = (select ID from fcAvisGroup.dbo.fcRole where Description = 'Rates Database Supervisor') -----<-- new user role name
where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'BWMAFR\khanyisile.dube' ---<-- old user
and resultdate = 0 and resultID <> 0 and  ProcessID IN  (select ProcessID from whowheremore where STC IN ('841002') and Status = 'Open')

*/


--NNNNBBBB users ID and Role and description (UPDATING THE STC TABLE - Only needs CONSULTANTNAME and STC):
/*
--- EXAMPLE 1: 
declare @ConsultantName varchar(50)
set @ConsultantName = 'BWMAFR\Shermen.Moodley'
update fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation 
set 
KAMUserID = (select ID as UserID from fcAvisGroup.dbo.fcUser where UserName  = @ConsultantName)
,
KAMRoleID = (select RoleID from fcAvisGroup.dbo.fcUser where UserName  = @ConsultantName)
,
RSMUserID = (select ID as UserID from fcAvisGroup.dbo.fcUser where UserName  = @ConsultantName)
,
RSMRoleID = (select RoleID from fcAvisGroup.dbo.fcUser where UserName  = @ConsultantName)
,
RSMRoleDescription = (select Description as RoleDescription from fcAvisGroup.dbo.fcRole where ID = (select RoleID from fcAvisGroup.dbo.fcUser where UserName  = @ConsultantName))
where STC_Code = '846000'


--NNNBBB : Second Example if I'm only changing the RSM :
---------------------------------------------------------
declare @ConsultantName varchar(50)
set @ConsultantName = 'BWMAFR\belinda.porteous1'
update fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation 
set 
RSMUserID = (select ID as UserID from fcAvisGroup.dbo.fcUser where UserName  = @ConsultantName)
,
RSMRoleID = (select RoleID from fcAvisGroup.dbo.fcUser where UserName  = @ConsultantName)
,
RSMRoleDescription = (select Description as RoleDescription from fcAvisGroup.dbo.fcRole where ID = (select RoleID from fcAvisGroup.dbo.fcUser where UserName  = @ConsultantName))
where STC_Code  IN  ('841500','841501','841502','841506') 


--NNNBBB : Third Example if I'm only changing the KAM :
---------------------------------------------------------
declare @ConsultantName varchar(50)
set @ConsultantName = 'BWMAFR\Divashan.Naidu'
update fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation 
set 
KAMUserID = (select ID as UserID from fcAvisGroup.dbo.fcUser where UserName  = @ConsultantName)
,
KAMRoleID = (select RoleID from fcAvisGroup.dbo.fcUser where UserName  = @ConsultantName)
where STC_Code = '841101'


--NNNNBBBBB : 4th example if im chaning BOTH the consultant and the RSM different poeple)
declare @ConsultantName varchar(50)
declare @RSMName varchar(50)
set @ConsultantName = 'BWMAFR\Janine.Mansfield'
set @RSMName = 'BWMAFR\Thato.Bokaba'
update fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation 
set 
KAMUserID = (select ID as UserID from fcAvisGroup.dbo.fcUser where UserName  = @ConsultantName)
,
KAMRoleID = (select RoleID from fcAvisGroup.dbo.fcUser where UserName  = @ConsultantName)
,
RSMUserID = (select ID as UserID from fcAvisGroup.dbo.fcUser where UserName  = @RSMName)
,
RSMRoleID = (select RoleID from fcAvisGroup.dbo.fcUser where UserName  = @RSMName)
,
RSMRoleDescription = (select Description as RoleDescription from fcAvisGroup.dbo.fcRole where ID = (select RoleID from fcAvisGroup.dbo.fcUser where UserName  = @RSMName))
where STC_Code = '842218'




*/

*/
--************************************FLOWER BOX END - HISTORY UPDATE************



select 'ALL RATES in flowcentric RELATED TO A PARTICULAR KAM(or RSM - just put in the KAMS name (PROBLEM - new rate capturing isnt included here):'
use fcAvisGroup
select * from fcavisgroup..whowheremore where Status = 'Open' and RateCode in
(
select  (select RateCode from BLISFSQLRAC.RatesSTC.dbo.RateCode as A where A.RateID = B.RateID) as RateCode FROM BLISFSQLRAC.RatesSTC.dbo.RateDiary as B INNER JOIN fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation as C ON B.STC = C.STC_Code 
                      INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Segmentation ON B.SegmentationId = Segmentation.SegmentationId INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Unit ON Segmentation.UnitID = Unit.UnitID
WHERE 
RateID IN
(
SELECT     D.RateCodeID
FROM         BLISFSQLRAC.RatesSTC.dbo.RateDiary INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.RateParentALL as D ON B.RateID = D.RelatedRateCodeID 
)
and 
STC in (
SELECT     STC_Code
FROM         fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation
--where (select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) = 'BWMAFR\tannia.thompson' --'BWMAFR\Sherman.Moodley'
--where (select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) = 'BWMAFR\Thato.Bokaba' --'BWMAFR\Sherman.Moodley'BWMAFR\Thato.Bokaba
where (select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) = 'BWMAFR\belinda.porteous1'
)
and Unit.UnitName = 'South Africa' --and ( CurrentScreen != 'VR20RSMAction' and CurrentScreen != 'VR30KAMTandC')
)
order by ProcessID

--- THIS IS SUDDENLY RUNNING VERY SLOWLY 17 APRIL 2018 - so commented out :
--select 'ALL RATES in flowcentric RELATED TO A PARTICULAR STCS - just put in the STCS name (PROBLEM - new rate capturing isnt included here):'
--use fcAvisGroup
--select * from fcavisgroup..whowheremore where Status = 'Open' and RateCode in
--(
--select  (select RateCode from BLISFSQLRAC.RatesSTC.dbo.RateCode as A where A.RateID = B.RateID) as RateCode FROM BLISFSQLRAC.RatesSTC.dbo.RateDiary as B INNER JOIN fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation as C ON B.STC = C.STC_Code 
--                      INNER JOIN
--                      BLISFSQLRAC.RatesSTC.dbo.Segmentation ON B.SegmentationId = Segmentation.SegmentationId INNER JOIN
--                      BLISFSQLRAC.RatesSTC.dbo.Unit ON Segmentation.UnitID = Unit.UnitID
--WHERE 
--RateID IN
--(
--SELECT     D.RateCodeID
--FROM         BLISFSQLRAC.RatesSTC.dbo.RateDiary INNER JOIN
--                      BLISFSQLRAC.RatesSTC.dbo.RateParentALL as D ON B.RateID = D.RelatedRateCodeID 
--)
--and 
----STC in (
----'846000'
----(
--STC = '846000'
--and Unit.UnitName = 'South Africa' --and ( CurrentScreen != 'VR20RSMAction' and CurrentScreen != 'VR30KAMTandC')
--)
--order by ProcessID






--\\blisfracsql1\f$\FlowCentricDirectoryWatcherActions\RateDiary\RentACar

--Triggered rates xml files fo here :
select '\\blisfsql2rac\f$\FlowCentricDirectoryWatcherActions\RateDiary\RentACar'

-- Has Lisa moved the rates for Shermen yet - i let her know today 31 Jan 2014:
/*
SELECT RateID,(select RateCode from BLISFSQLRAC.RatesSTC.dbo.RateCode as A where A.RateID = B.RateID) as RateCode,B.SegmentationId,RateName,EffectiveDate,ExpiryDate,Available,STC,Editable,UserID,Edited,Blocked,NoMiles,RSMRoleDescription FROM BLISFSQLRAC.RatesSTC.dbo.RateDiary as B INNER JOIN fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation as C ON B.STC = C.STC_Code 
                      INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Segmentation ON B.SegmentationId = Segmentation.SegmentationId INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Unit ON Segmentation.UnitID = Unit.UnitID
WHERE 
RateID IN
(
SELECT     D.RateCodeID
FROM         BLISFSQLRAC.RatesSTC.dbo.RateDiary INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.RateParentALL as D ON B.RateID = D.RelatedRateCodeID 
)
and 
STC in ('842300','842303')
and Unit.UnitName = 'South Africa'
*/


	

--Connx queries :
-- To check for one day :
/*
SELECT * FROM ACC_RDS_DAILY WHERE PERIOD_CCYYPP = '211512'  AND AVIS_COMP_CODE = 'ZA' and CHARGED_VENDOR_NO = 'A10000' AND LEDGER_ACCOUNT_NO = '7511' 
 AND DATA_DATE = '2015-09-01' AND CHARGED_AMOUNT >=  1
*/

/*
--- Checking BUDGET :
SELECT * FROM ACC_RDS_DAILY WHERE PERIOD_CCYYPP = '211602'  AND AVIS_COMP_CODE = 'ZA' and CHARGED_VENDOR_NO = 'A10000' AND LEDGER_ACCOUNT_NO = '7511' AND AVIS_BUDGET_IND = 'B'
 AND DATA_DATE IN ('2015-11-19','2015-11-20','2015-11-21') AND CHARGED_AMOUNT >=  1
*/

/*
SELECT DATA_DATE,count(*) FROM ACC_RDS_DAILY WHERE PERIOD_CCYYPP = '211404'  AND AVIS_COMP_CODE = 'ZA' and CHARGED_VENDOR_NO = 'A10000' AND LEDGER_ACCOUNT_NO = '7511' 
 AND DATA_DATE >= '2014-01-05' AND CHARGED_AMOUNT >=  1
group by DATA_DATE
order by DATA_DATE
union
SELECT 'Total' as DATA_DATE,count(*) FROM ACC_RDS_DAILY WHERE PERIOD_CCYYPP = '211404'  AND AVIS_COMP_CODE = 'ZA' and CHARGED_VENDOR_NO = 'A10000' AND LEDGER_ACCOUNT_NO = '7511' 
 AND DATA_DATE >= '2014-01-05' AND CHARGED_AMOUNT >=  1
*/
/* this will always be 2 days behind */


-- This will be TODAYS DATE once the erfdaily is done (I've dounle checked this 100%!!!!!
/*
select TRIGGER_ALTER_TIME from TRIGGER_VIEW  where TRIGGER_JOB_NAME = 'DAILYDONE' AND AVIS_COMP_CODE = 'AV' AND TRIGGER_KEY = 'CONTROL'
*/




/*
-- Get screen names:
select * from fcevent where ProcessID = 7
-- get processes on a particular screen :
select * from fcavisgroup..whowheremore where CurrentScreen = 'VR50KAMCarGroupRates'
select * from fcavisgroup..whowheremore where CurrentScreen = 'VR20RSMAction'
*/

/*
Investigating HQ refund problems :
--NNNBBB To get from RefundNumber to Process
use fcAvis
SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ),ControlID,ControlValue,fcEventHist.*, fcEventValue.*
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
	where ProcessID in
	(
	SELECT UniqueRef FROM fcAvisMaster..HQR_TR_Cases --INNER JOIN fcAvisMaster..HQR_TR_CaseDetails ON HQR_TR_CaseDetails.FK_CaseID = HQR_TR_Cases.CaseID 
	where CaseNumber in
	(
	'HQ-0000096810'
	)
	)
--and ControlID IN ('HRQ10_CloseCase','HRQ10_PendCase')
order by fcEventHist.ID , fcEventValue.ID



--NNNBBB To get from RANumber to Process
use fcAvis
SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ),ControlID,ControlValue,fcEventHist.*, fcEventValue.*
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
	where ProcessID in
	(
	SELECT UniqueRef FROM fcAvisMaster..HQR_TR_Cases --INNER JOIN fcAvisMaster..HQR_TR_CaseDetails ON HQR_TR_CaseDetails.FK_CaseID = HQR_TR_Cases.CaseID 
	where RANumber in
	(
'E356833105',
'E357025734',
'E356897166',
'E357032594',
'E454175853'
	)
	)
--and ControlID IN ('HRQ10_CloseCase','HRQ10_PendCase')
order by fcEventHist.ID , fcEventValue.ID







use fcAvisMaster
SELECT * FROM HQR_TR_Cases INNER JOIN HQR_TR_CaseDetails ON HQR_TR_CaseDetails.FK_CaseID = HQR_TR_Cases.CaseID 
where CaseNumber in
(
'HQ-0000096810'
)
--check if its in flowcentric , if not check if its in TRACCSS 
select * from fcAvisMaster..HQR_TR_Cases where RANumber = 'E790501250'
--CONNX query to see if the RA is there at all:
SELECT * FROM ACC_RDS_DAILY  WHERE RA_NUMBER = '  E315790101' -- note the 2 SPACES !!!!
--or
SELECT * FROM ACC_RDS_DAILY  WHERE RA_NUMBER = '  E315790101' AND AVIS_COMP_CODE = 'ZA' and CHARGED_VENDOR_NO = 'A10000' AND LEDGER_ACCOUNT_NO = '7511' 
--or
SELECT * FROM ACC_RDS_DAILY WHERE RA_NUMBER = '  E790501250' -- note the 2 SPACES !!!!



*/

--Fixing an HQrefund with a 0 amount :
/*
PART 1:
---------
use fcAvis
update fcEventValue Set ControlValue = '832.21' where ID IN (
select fcEventValue.ID
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ProcessID = 1841531 and ControlID like '%RefundAmount%'
)

PART 2:
--------
update HQR_TR_CaseDetails set RefundAmount = 832.21 where CaseDetailsID = 142225
*/







/*
	--Investigating Rate problems :
	-- To list all rates used in flowcentric :
	use fcAvisGroup_Custom
	SELECT RateID,(select RateCode from BLISFSQLRAC.RatesSTC.dbo.RateCode as A where A.RateID = B.RateID) as RateCode,B.SegmentationId,RateName,EffectiveDate,ExpiryDate,Available,STC,Editable,UserID,Edited,Blocked,NoMiles,RSMRoleDescription FROM BLISFSQLRAC.RatesSTC.dbo.RateDiary as B INNER JOIN fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation as C ON B.STC = C.STC_Code 
						  INNER JOIN
						  BLISFSQLRAC.RatesSTC.dbo.Segmentation ON B.SegmentationId = Segmentation.SegmentationId INNER JOIN
						  BLISFSQLRAC.RatesSTC.dbo.Unit ON Segmentation.UnitID = Unit.UnitID
	WHERE 
	RateID IN
	(
	SELECT     D.RateCodeID
	FROM         BLISFSQLRAC.RatesSTC.dbo.RateDiary INNER JOIN
						  BLISFSQLRAC.RatesSTC.dbo.RateParentALL as D ON B.RateID = D.RelatedRateCodeID 
	)
	and Unit.UnitName = 'South Africa'
	and (select RateCode from BLISFSQLRAC.RatesSTC.dbo.RateCode as A where A.RateID = B.RateID) = '6E'
	order by (select RateCode from BLISFSQLRAC.RatesSTC.dbo.RateCode as A where A.RateID = B.RateID)


	-- list all rates open on an STC or STCs :
	-----------------------------------------
	use fcavisgroup
	select * from whowheremore where STC IN ( 842207, 842217 , 841302 ) and Status = 'Open'

	-- list captured
	select * from fcAvisGroup_Custom..Custom_VIPCO_RatesDataCaptured where RealRateCode = '6E'
	-- list processes
	select * from fcAvisGroup..whowheremore where RateCode = '6E'
	select * from fcavisgroup..whowheremore where ProcessRateName = (select RateName from fcAvisGroup_Custom..Custom_VIPCO_RatesDataCaptured where RealRateCode = '6E')

	select * from fcAvisGroup_Custom..Custom_VIPCO_RatesDataCaptured_OldCarGroupRates where RatesDataCapturedID = 
	(select ID from fcAvisGroup_Custom..Custom_VIPCO_RatesDataCaptured where RealRateCode = '6E')
	select * from fcAvisGroup_Custom..Custom_VIPCO_RatesDataCaptured_NewCarGroupRates where RatesDataCapturedID = 
	(select ID from fcAvisGroup_Custom..Custom_VIPCO_RatesDataCaptured where RealRateCode = '6E')
	*/

	/* --User STC relationship:
	SELECT     ID, KAMUserID,(select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) as KAM, KAMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = KAMRoleID) as KAMRole, RSMUserID ,(select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) as RSM, RSMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = RSMRoleID) RSMRole, RSMRoleDescription, STC_Code, SegmentationID, Segment, DateCreated
	,NSMUsername
	FROM         fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation
	Order by KAM
	*/


	/*
	--(ONLY LOOKS AT PARENTS IN RAtesDiary - Find all rates on an STC:
	SELECT RateID,(select RateCode from BLISFSQLRAC.RatesSTC.dbo.RateCode as A where A.RateID = B.RateID) as RateCode,B.SegmentationId,RateName,EffectiveDate,ExpiryDate,Available,STC,Editable,UserID,Edited,Blocked,NoMiles,RSMRoleDescription FROM BLISFSQLRAC.RatesSTC.dbo.RateDiary as B INNER JOIN fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation as C ON B.STC = C.STC_Code 
						  INNER JOIN
						  BLISFSQLRAC.RatesSTC.dbo.Segmentation ON B.SegmentationId = Segmentation.SegmentationId INNER JOIN
						  BLISFSQLRAC.RatesSTC.dbo.Unit ON Segmentation.UnitID = Unit.UnitID
	WHERE 
	RateID IN
	(
	SELECT     D.RateCodeID
	FROM         BLISFSQLRAC.RatesSTC.dbo.RateDiary INNER JOIN
						  BLISFSQLRAC.RatesSTC.dbo.RateParentALL as D ON B.RateID = D.RelatedRateCodeID 
	)
	and 
	STC in ('842300','842303')	
	and Unit.UnitName = 'South Africa'
	order by STC
	--AND ExpiryDate < DATEADD(DAY, 90, GETDATE()) AND (ExpiryDate > (Select LastRateDate from fcAvisGroup_Custom.dbo.Custom_TRAVELPARTNERS_LastRateDate))
	*/

	-- To extend site.admin password:
	/*
	use fcavis
	update fcsecurity set PwdEnd = '21000101' where ID = 
	(
	select top 1 ID from fcsecurity where UserID = 1 
	order by ID desc -- not PwdStart
	)
*/

-- When was a password changed :
/*
use fcavis
select (select USername from fcuser where ID = USerID ),* from fcSecurity 
where (select USername from fcuser where ID = USerID ) = 'tiyisela.chabalala'
order by PwdStart desc
*/

-- Active users with Passwords about to expire:
/*
use fcavis
select (select USername from fcuser where ID = USerID ),* from fcSecurity 
where (select Active from fcuser where ID = USerID ) = 1 
and convert(datetime,PwdEnd,112) >= dateadd(day,-1,getdate())
--and Password = '9cc3e5abdfaee198a6b74b97ea91e306e1744ddf49876d3dcf6cb936dfd5c9d7' -- Password@1
--and (select USername from fcuser where ID = USerID ) = 'natasha.nolte'
order by PwdEnd
*/

/*
--All users and their roles and email addresses and their role descriptions etc (AND WHO THEY REPORT TO):
use fcavis
select UserName,fcuser.ID as UserID,Description,(select  UserName from fcuser where fcuser.RoleID = fcrole.ReportToID and fcuser.Active = 1 and fcuser.RoleID <> 0) as ReportsTo,RoleID,* from fcuser
inner join fcRole on fcRole.ID  = fcuser.RoleID
where fcuser.active = 1 
order by fcUser.Username
--order by fcrole.Description
*/




/*
--To list complete process details:
-- The OPEN ones
use fcAvisGroup
SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ),ControlID,ControlValue,fcEventHist.*, fcEventValue.*
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ProcessID = 4112
order by fcEventHist.ID , fcEventValue.ID

-- The CLOSED ones
use fcAvisGroup
SELECT     (select Username from fcuser where ID = fcEventArchive.ResultUser ),ControlID,ControlValue,fcEventArchive.*, fcEventValueArchive.*
FROM         fcEventArchive INNER JOIN
fcEventValueArchive ON fcEventArchive.EventHistID = fcEventValueArchive.EventHistID
where ProcessID = 1234
order by fcEventArchive.ID , fcEventValueArchive.ID

-- The ARCHIVED ONES
use fcAvisArchive
SELECT     (select Username from fcavis.dbo.fcuser where ID = fcEventArchive.ResultUser ),ControlID,ControlValue,fcEventArchive.*, fcEventValueArchive.*
FROM         fcEventArchive INNER JOIN
fcEventValueArchive ON fcEventArchive.EventHistID = fcEventValueArchive.EventHistID
where ControlValue like '%655235151%'
order by fcEventArchive.ID , fcEventValueArchive.ID
*/

/*
--NNNBBB To search through all code ( includes which process group , process and activity it comes from ):
use fcavisgroup
select (select Name from fcProcessGroup where ID = (select ProcessGroupID from fcProcess where ID = (select ProcessID from fcevent where ID = fcEventControl.EventID))) ProcessGroup,(select Name from fcProcess where ID = (select ProcessID from fcevent where ID = fcEventControl.EventID)) Process,(select EventCode from fcevent where ID = fcEventControl.EventID) Object,*,Name + CHAR(10) + '----------------------------------' + CHAR(10) +  
CAST(substring(cScript,1,8000) AS varchar(max)) , 
CAST(substring(cScript,8001,16000) AS varchar(max)) ,
CAST(substring(cScript,16001,24000) AS varchar(max)) ,
CAST(substring(cScript,24001,36000) AS varchar(max)) ,
CAST(substring(cScript,36001,40000) AS varchar(max)) , 
CAST(substring(cScript,40001,48000) AS varchar(max)), 
CAST(substring(cScript,48001,56000) AS varchar(max)), 
CAST(substring(cScript,56001,64000) AS varchar(max)) ,
CAST(substring(cScript,64001,72000) AS varchar(max)) ,
CAST(substring(cScript,72001,80000) AS varchar(max)) from fcEventControl where CAST(cScript AS varchar(max)) <> ''
--and EventID IN (select ID from fcAvisgroup.dbo.fcEvent where EventCode LIKE 'VR%')
and cScript like '%VIPCO SA Regional Manager Northern Province%'
union all
select (select Name from fcProcessGroup where ID = (select ProcessGroupID from fcProcess where ID = (select ProcessID from fcevent where ID = fcEventControl.EventID))) ProcessGroup,(select Name from fcProcess where ID = (select ProcessID from fcevent where ID = fcEventControl.EventID)) Process,(select EventCode from fcevent where ID = fcEventControl.EventID) Object,*,Name + CHAR(10) + '----------------------------------' + CHAR(10) +  
CAST(substring(cTrigger,1,8000) AS varchar(max)) , 
CAST(substring(cTrigger,8001,16000) AS varchar(max)) ,
CAST(substring(cTrigger,16001,24000) AS varchar(max)) ,
CAST(substring(cTrigger,24001,36000) AS varchar(max)) ,
CAST(substring(cTrigger,36001,40000) AS varchar(max)) , 
CAST(substring(cTrigger,40001,48000) AS varchar(max)), 
CAST(substring(cTrigger,48001,56000) AS varchar(max)), 
CAST(substring(cTrigger,56001,64000) AS varchar(max)) ,
CAST(substring(cTrigger,64001,72000) AS varchar(max)) ,
CAST(substring(cTrigger,72001,80000) AS varchar(max)) from fcEventControl where CAST(cTrigger AS varchar(max)) <> ''
--and EventID IN (select ID from fcAvisgroup.dbo.fcEvent where EventCode LIKE 'VR%')
and cTrigger like '%VIPCO SA Regional Manager Northern Province%'
*/

-- P2P Status report:
SELECT top 100 accc.CaseType,
       accc.ChauffeursName,
       accc.BookingNumber,
       accc.stageNumber,
       accc.BookingDate,
       accc.PickUpTime,
       accc.CustomerName,
       accc.PassengerName,
       accc.DateRecorded,
       accc.DateClosed,
       accc.ConsultantName--,'XXXXXXXXXXX',*
FROM   fcavismaster..ALC_CC_CarelineCases accc where accc.DateRecorded <> accc.DateClosed
order by ID desc





/*
--Changing passwords and email adresses while testing on my machine (now includes conversion for AD integration NNNNNNNNNNNNNNNNNBBBBBBBBBBBBBBBBBBBBBBBBB):
update fcAvisGroup.dbo.fcSecurity set Password = 'd74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1' , PwdEnd = 20201231
-- wont allow me to store NULLS
-- the above hashed password is pass
update fcAvisGroup.dbo.fcUser set Email = 'kieran.swanepoel@avis.co.za' --, Username = Replace(Username,'BWMAFR\','')
*/

-- To check if chauffeurs are loaded :
--select * from fcavismaster..ALC_CC_Chauffeurs
--delete fcavismaster..ALC_CC_Chauffeurs
select 'http://blisfalcapp2/Avis.P2P.CareLine/CareLineServices.asmx'

select 'Rates with more than one open renewal (This should never happen)'
select * from fcavisgroup..whowheremore where Status = 'Open' and RateCondition = 'Rate Renewal' and RateCode in
(
select RateCode from fcavisgroup..whowheremore where Status = 'Open' and RateCondition = 'Rate Renewal'
group by RateCode
having Count(*) > 1
)
order by RateCode,CreateDate
/*
-- Precious projects:
select  CC10001ConsultantName, CC10010ChooseProject, CC10015HiddenCntInProject, CC10020DescriptionExcelFile, CC10030Cases, CC10031CasesNotCompleted, CC10035CntCasesImported, CC10037CloseProject, CC10036ImportToProject, CC10040ImportFile,
h.*,Username
from fcavis..whowhereprojects v right join fcavis..fcEventHist h on v.ProcessID = h.ProcessID 
join fcavis..fcuser f on f.ID = ResultUser
where v.Status = 'Open' and h.ResultDate = 0 and USername = 'precious.mngomezulu'
order by ProcessID
*/
/*
-- All adjustments done by a particualr agent
select * from fcavismaster..transactionTempAdjustments 
inner join  masterWizardSignOnCodes on Agent COLLATE SQL_Latin1_General_CP1_CI_AS = WizardCode
--select * from masterWizardSignOnCodes 
inner join fcavis.dbo.fcUser on fcuser.ID = masterWizardSignOnCodes.UserID
Inner join masteruserinformation on masteruserinformation.UserID = fcavis.dbo.fcUser.ID
where Username = 'fika.hewu' and convert(varchar(10),Date_of_Adj,111) = '2010/11/15'
*/
/*
select 'Flowcentric STC vs Diary STC (WHERE THEY ARE DIFFERENT):'
select captured.RateName CapturedRateName ,Diary.RateName DiaryRateName,diary.RateCode,Diary.STC,captured.STC_Code from fcAvisGroup_Custom.dbo.Custom_VIPCO_RatesDataCaptured captured inner join BLISFSQLRAC.RatesSTC.dbo.RatesDiaryParentsOnly2_5_10_151 diary
on captured.RealRateCode = diary.RateCode
where Diary.STC <> captured.STC_Code
*/

--select 'User Log Date Changes (RATE CODE JS):' 
--select 'ANDRE.DUPREEZ 7/14/2014 2:03:27 PM Rate Name:SAA ONBIZ SUPER WAIVER RATE;Segment:Commercial;Effective Date:2013/07/18;Expiry Date:2014/06/30;Available:False;STC:841505;Editable:True;Blocked:False;No Miles:False;Loaded for Vans:False;Voyager Miles:0'

--- THIS IS SUDDENLY RUNNING VERY SLOWLY 17 APRIL 2018 - so commented out :
--select 'CO' ,'http://ratesdb/ratesstc/RateEdit.aspx?RateID=800&SegmentationId=10' , 'Relationship JO was removed from Parent Rate Code CO.'
--select 'CHARMAINE.MAAKE 1/14/2014 4:19:51 PM Rate Name:CSIR;Segment:VIPCO;Effective Date:2013/03/01;Expiry Date:2014/01/31;Available:False;STC:841702;Editable:True;Blocked:False;No Miles:True;Loaded for Vans:False;Voyager Miles:0'
--select 'RATES WHERE THE DIARY IS AVAILABLE or DIARY stc removed BUT HASNT BEEN DELETED FROM FLOWCENTRIC(2013 onwards):'
--select Diary.Available , captured.RateName CapturedRateName ,Diary.RateName DiaryRateName,diary.RateCode,Diary.STC,captured.STC_Code from fcAvisGroup_Custom.dbo.Custom_VIPCO_RatesDataCaptured captured inner join BLISFSQLRAC.RatesSTC.dbo.RatesDiaryParentsOnly2_5_10_151 diary
--on captured.RealRateCode = diary.RateCode
--where (Diary.STC = 0 or Diary.Available = 1)
--and captured.RealRateCode NOT IN 
--(
--'01',
--'5B',
--'72',
--'76',
----'9Q',
--'AQ',
----'BU',
----'E8',
----'FJ',
--'HO',
--'KT',
--'M9',
----'NI',
--'NM',
--'O8',
--'U8',
--'XL'
--)

--- THIS IS SUDDENLY RUNNING VERY SLOWLY 17 APRIL 2018 - so commented out :
--select 'RATES WHERE THE DIARY IS AVAILABLE BUT HASNT BEEN DELETED FROM FLOWCENTRIC(2013 onwards)-- CHECKING FOR DELETIONS:'
--select * from fcavisgroup..whowheremore where Status = 'Open' and RateCode IN
--( 
--select diary.RateCode from fcAvisGroup_Custom.dbo.Custom_VIPCO_RatesDataCaptured captured inner join BLISFSQLRAC.RatesSTC.dbo.RatesDiaryParentsOnly2_5_10_151 diary
--on captured.RealRateCode = diary.RateCode
--where Diary.STC = 0 
--and captured.RealRateCode NOT IN 
--(
--'01',
--'5B',
--'72',
--'76',
----'9Q',
--'AQ',
----'BU',
----'E8',
----'FJ',
--'HO',
--'KT',
--'M9',
----'NI',
--'NM',
--'O8',
--'U8',
--'XL'
--)
--)
--order by CurrentCreateDate

-- Use below to correct (ABOVE) the  diary AND PUT BACK THE STC so that they cant allocate rates here :
/*
UPDATE RD set Available = 0 , STC = RDC.STC_Code
FROM                  BLISFSQLRAC.RatesSTC.dbo.RateDiary RD INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Segmentation SMTT ON RD.SegmentationId = SMTT.SegmentationId INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Segment SMT ON SMTT.SegID = SMT.SegID INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Unit UT ON SMTT.UnitID = UT.UnitID INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.RateCode RC ON RD.RateID = RC.RateID INNER JOIN
                      fcAvisGroup_Custom.dbo.Custom_VIPCO_RatesDataCaptured RDC ON RDC.RealRateCode = RC.RateCode
where UT.UnitName = 'South Africa' and RC.RateCode = 'E1' and RentalCompanyID = 'A'
*/

--- THIS IS SUDDENLY RUNNING VERY SLOWLY 17 APRIL 2018 - so commented out :
--select 'Flowcentric RateName vs Diary RateName (WHERE THEY ARE DIFFERENT):'
--select captured.RateName CapturedRateName ,Diary.RateName DiaryRateName,diary.RateCode,Diary.STC,captured.STC_Code from fcAvisGroup_Custom.dbo.Custom_VIPCO_RatesDataCaptured captured inner join BLISFSQLRAC.RatesSTC.dbo.RatesDiaryParentsOnly2_5_10_151 diary
--on captured.RealRateCode = diary.RateCode
--where Diary.RateName <> captured.RateName
-- update RateDiary becasue they shouldn't be doing this :
/*
UPDATE RD set RateName = RDC.RateName
FROM                  BLISFSQLRAC.RatesSTC.dbo.RateDiary RD INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Segmentation SMTT ON RD.SegmentationId = SMTT.SegmentationId INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Segment SMT ON SMTT.SegID = SMT.SegID INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Unit UT ON SMTT.UnitID = UT.UnitID INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.RateCode RC ON RD.RateID = RC.RateID INNER JOIN
                      fcAvisGroup_Custom.dbo.Custom_VIPCO_RatesDataCaptured RDC ON RDC.RealRateCode = RC.RateCode
where UT.UnitName = 'South Africa' and RC.RateCode IN
(
'6E'
)
and RentalCompanyID = 'A'
*/

/*
-- This was incorrect on 17 April 2018 :
CapturedRateName	DiaryRateName	RateCode	STC	STC_Code
Bureau Veritas	STANDARD CHARTER BANK	BL	841007	841002
*/

-- update RateFlowcentric (REVERSE OF ABOVE) :
/*
UPDATE RDC set RateName = RD.RateName
FROM                  BLISFSQLRAC.RatesSTC.dbo.RateDiary RD INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Segmentation SMTT ON RD.SegmentationId = SMTT.SegmentationId INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Segment SMT ON SMTT.SegID = SMT.SegID INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Unit UT ON SMTT.UnitID = UT.UnitID INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.RateCode RC ON RD.RateID = RC.RateID INNER JOIN
                      fcAvisGroup_Custom.dbo.Custom_VIPCO_RatesDataCaptured RDC ON RDC.RealRateCode = RC.RateCode
where UT.UnitName = 'South Africa' and RC.RateCode = 'YM'
*/
/*
5W
AO
AY
BZ
CB
HX
JE
KU
LA
LN
LR
NX
RF
YM
*/
/*
select 'Flowcentric OPEN CASES where RateName vs Diary RateName (WHERE THEY ARE DIFFERENT):'
select (select RateName from fcAvisGroup_Custom.dbo.Custom_VIPCO_RatesDataCaptured where fcAvisGroup_Custom.dbo.Custom_VIPCO_RatesDataCaptured.RealRateCode = fcavisgroup..whowheremore.RateCode) CapturedRateName
,
(Select diary.Ratename from BLISFSQLRAC.RatesSTC.dbo.RatesDiaryParentsOnly2_5_10_151 diary where diary.RateCode = fcavisgroup..whowheremore.RateCode) DiaryRateName
,
* from fcavisgroup..whowheremore where RateCode in
(
select captured.RealRateCode from fcAvisGroup_Custom.dbo.Custom_VIPCO_RatesDataCaptured captured inner join BLISFSQLRAC.RatesSTC.dbo.RatesDiaryParentsOnly2_5_10_151 diary
on captured.RealRateCode = diary.RateCode
where Diary.RateName <> captured.RateName
)
and Status = 'Open'
order by RateCode,ProcessID
*/


/*
select 'Flowcentric WERE DELETIONS DONE ? where RateName vs Diary RateName (WHERE THEY ARE DIFFERENT):'
select (select RateName from fcAvisGroup_Custom.dbo.Custom_VIPCO_RatesDataCaptured where fcAvisGroup_Custom.dbo.Custom_VIPCO_RatesDataCaptured.RealRateCode = fcavisgroup..whowheremore.RateCode) CapturedRateName
,
(Select diary.Ratename from BLISFSQLRAC.RatesSTC.dbo.RatesDiaryParentsOnly2_5_10_151 diary where diary.RateCode = fcavisgroup..whowheremore.RateCode) DiaryRateName
,
* from fcavisgroup..whowheremore where RateCode in
(
select captured.RealRateCode from fcAvisGroup_Custom.dbo.Custom_VIPCO_RatesDataCaptured captured inner join BLISFSQLRAC.RatesSTC.dbo.RatesDiaryParentsOnly2_5_10_151 diary
on captured.RealRateCode = diary.RateCode
where Diary.RateName <> captured.RateName
)
--and RateCondition = 'Deletion'
order by RateCode,ProcessID
*/




--NNNBBB: To go directly to the page being worked on (NOTE - must be logged in as the user):
/*
use fcavis
select 'http://blisfflowcrac/fcAvis/myActionItem.aspx?g=3&id=' + cast(ID as varchar(10)) from fcEventHist 
where  ResultID <> 0 and ResultDate = 0 and Assigned <> 'Unassigned' and (select USername from fcUSer where RoleID = ResultID) = 'precious.mngomezulu'
and EventID = 9 
*/


/*
use FcAvisGroup_Custom
--To list removed processes NNNNNNNNNNNNNNNNNNBBBBBBBBBBBBBBBBBBBBBBBBBB
select 'Removed',count(*) from fcAvisGroup.dbo.fcEventHist where  ResultID = 0 and ResultDate = 0
--To list open processes NNNNNNNNNNNNNNNNNNBBBBBBBBBBBBBBBBBBBBBBBBBB
select 'Open',count(*) from fcAvisGroup.dbo.fcEventHist where ResultID <> 0 and ResultDate = 0
--To list closed processes NNNNNNNNNNNNNNNNNNBBBBBBBBBBBBBBBBBBBBBBBBBB
select 'Closed',Count(*) from (select ProcessID from fcAvisGroup.dbo.fcEventArchive group by ProcessID) x
*/




select '5 days notification to janet (5 working days and exclude holidays):'
select * from fcAvisGroup..v_RatesNotification order by NotificationDate desc
select 'Number of Processes waiting for each user (fcavisgroup):'
use fcavisgroup
select * from (
select (select USername from fcUSer where RoleID = ResultID) as Username___________ ,ResultID,count(*) as NumProcesses from fcEventHist 
where  ResultID <> 0 and ResultDate = 0 
--and (select USername from fcUSer where RoleID = ResultID) not in ('BWMAFR\tarryn.pienaar','BWMAFR\paul.wilmans.old','belinda.porteous','kieran','BWMAFR\lisa.beauchamp')
group by ResultID  
--order by count(*) desc 
Union
select 'ALL USERS' as Username___________ ,'00' as ResultID, count(*) as NumProcesses from fcEventHist 
where  ResultID <> 0 and ResultDate = 0 
--and (select USername from fcUSer where RoleID = ResultID) not in ('BWMAFR\tarryn.pienaar','BWMAFR\paul.wilmans.old','belinda.porteous','kieran','BWMAFR\lisa.beauchamp')
)  as musthave 
order by Numprocesses desc 

/* this is like the currently with thing */
select 'Number of Processes waiting for each user (fcavis):'
use fcavis
select * from (
select (select USername from fcUSer where RoleID = ResultID) as Username___________ ,ResultID,count(*) as NumProcesses from fcEventHist 
where  ResultID <> 0 and ResultDate = 0 and Assigned <> 'Unassigned'
group by ResultID  
--order by count(*) desc 
Union
select 'ALL USERS' as Username___________ ,'00' as ResultID, count(*) as NumProcesses from fcEventHist 
where  ResultID <> 0 and ResultDate = 0 and Assigned <> 'Unassigned'
Union
select 'UNASSIGNED-HQ-REFUNDS' as Username___________ ,'00' as ResultID, count(*) as NumProcesses from fcEventHist 
where  ResultID <> 0 and ResultDate = 0 and Assigned = 'Unassigned'
)  as musthave 
order by Numprocesses desc

/*
select 'When did precious stop authorising adjustments (SHE HASNT shes just slowed down?)'
use fcavis
select top 200 (select USername from fcUSer where RoleID = ResultID),*  from fcEventHist 
where  ResultID <> 0 and ResultDate <> 0 and (select USername from fcUSer where RoleID = ResultID) = 'precious.mngomezulu'
order by ResultDate desc
select top 20 (select USername from fcUSer where RoleID = ResultID),*  from fcEventArchive 
where  ResultID <> 0 and ResultDate <> 0 and (select USername from fcUSer where RoleID = ResultID) = 'precious.mngomezulu'
order by ResultDate desc
*/

-- Open requests ordered from Oldest (only active users):
/*
use fcavisgroup
select (select Active from fcUSer where RoleID = ResultID) as Active,(select USername from fcUSer where RoleID = ResultID) as Username,ResultID,* from fcEventHist 
where  ResultID <> 0 and ResultDate = 0 
and (select USername from fcUSer where RoleID = ResultID) not in ('BWMAFR\tarryn.pienaar','BWMAFR\paul.wilmans.old','belinda.porteous','kieran','BWMAFR\lisa.beauchamp')
order by CreateDate
*/

-- Open requests ordered from Oldest (only active users):
/*
use fcavis
select (select Active from fcUSer where RoleID = ResultID) as Active,(select USername from fcUSer where RoleID = ResultID) as Username,ResultID,* from fcEventHist 
where  ResultID <> 0 and ResultDate = 0 and Assigned <> 'Unassigned'
and (select USername from fcUSer where RoleID = ResultID) not in ('site.admin','accpac','santosh.pursad','precious.mngomezulu','rika.vdwalt')
and (select Active from fcUSer where RoleID = ResultID) = 1
order by CreateDate
*/



use fcavisgroup
declare @MinusDays int
set @MinusDays = -0

--THE OPEN ONES
select 'Processes worked on today:'
select cast(convert(varchar(8),DATEADD(DAY, @MinusDays, GETDATE()),1) as datetime),convert(datetime,CreateDate,112),
ProcessID,CreateDate,CreateTime,ResultDate,ResultTime,
(select USername from fcUSer where RoleID = CreateID) as CreateUser,
(select USername from fcUSer where RoleID = ResultID) as ResultUser,
(select EventCode from fcEvent where EventID = fcEvent.ID) as Screen, 
ResultID from fcEventHist 
where ResultID <> 0
and cast(convert(varchar(8),DATEADD(DAY, @MinusDays, GETDATE()),1) as datetime) =  convert(datetime,CreateDate,112)
order by ProcessID , CreateDate , CreateTime

--THE CLOSED ONES
--NNNNNNNBBBBBB Processes worked on today:
select cast(convert(varchar(8),DATEADD(DAY, @MinusDays, GETDATE()),1) as datetime),convert(datetime,CreateDate,112),
ProcessID,CreateDate,CreateTime,ResultDate,ResultTime,
(select USername from fcUSer where RoleID = CreateID) as CreateUser,
(select USername from fcUSer where RoleID = ResultID) as ResultUser,
(select EventCode from fcEvent where EventID = fcEvent.ID) as Screen, 
ResultID from fcEventArchive 
where ResultID <> 0
and cast(convert(varchar(8),DATEADD(DAY, @MinusDays, GETDATE()),1) as datetime) =  convert(datetime,CreateDate,112)
order by ProcessID , CreateDate , CreateTime



--NNNBBBBBBB All processes where ASAP has been selected and the email has been sent - done on VR90 OD authorisation
use fcavisgroup
SELECT    ProcessID,ResultDate,(select (select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) from fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation where STC_Code = (select ControlValue from fcEventValue b where b.EventHistID = c.EventHistID and ControlID = 'VR90120STC_Code' )),
(select ControlValue from fcEventValue b where b.EventHistID = c.EventHistID and ControlID = 'VR90120STC_Code' ),
(select ControlValue from fcEventValue b where b.EventHistID = c.EventHistID and ControlID = 'VR9060RateName' ),
(select ControlValue from fcEventValue b where b.EventHistID = c.EventHistID and ControlID = 'VR90697ASAPComments' ),
(select ControlValue from fcEventValue b where b.EventHistID = c.EventHistID and ControlID = 'VR90698ExpiryDate' )
FROM         fcEventHist a  LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue c ON a.ID = c.EventHistID
where ControlID = 'VR90695ASAP' and ControlValue = 'Yes'
UNION
SELECT     ProcessID,ResultDate,(select (select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) from fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation
where STC_Code = (select ControlValue from fcEventValueArchive b where b.EventHistID = c.EventHistID and ControlID = 'VR90120STC_Code' )),
(select ControlValue from fcEventValueArchive b where b.EventHistID = c.EventHistID and ControlID = 'VR90120STC_Code' ),
(select ControlValue from fcEventValueArchive b where b.EventHistID = c.EventHistID and ControlID = 'VR9060RateName' ),
(select ControlValue from fcEventValueArchive b where b.EventHistID = c.EventHistID and ControlID = 'VR90697ASAPComments' ),
(select ControlValue from fcEventValue b where b.EventHistID = c.EventHistID and ControlID = 'VR90698ExpiryDate' )
FROM         fcEventArchive a INNER JOIN
					fcEventValueArchive c ON a.EventHistID = c.EventHistID
where ControlID = 'VR90695ASAP' and ControlValue = 'Yes'
order by ResultDate desc


/*
use fcAvisGroup
select * from whowheremore where ProcessID in 
(
SELECT     ProcessID
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ControlID = 'VR30812ASAP' and ControlValue = 'Yes'
group by ProcessID
UNION
SELECT     ProcessID
FROM         fcEventArchive INNER JOIN
fcEventValueArchive ON fcEventArchive.EventHistID = fcEventValueArchive.EventHistID
where ControlID = 'VR30812ASAP' and ControlValue = 'Yes'
group by ProcessID
)
and ProcessID not in
(
SELECT     ProcessID
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ControlID = 'VR90695ASAP' and ControlValue = 'Yes'
group by ProcessID
UNION
SELECT     ProcessID
FROM         fcEventArchive INNER JOIN
fcEventValueArchive ON fcEventArchive.EventHistID = fcEventValueArchive.EventHistID
where ControlID = 'VR90695ASAP' and ControlValue = 'Yes'
group by ProcessID
)
*/

select 'When was the last time each user logged on NNNBBB:'

--NNNNNNNBBBBBB When was the last time each user logged on:
IF OBJECT_ID('tempdb..#TempFclogin') IS NOT NULL
BEGIN
drop table #TempFclogin
END
--select (select USername from FcavisGroup.dbo.fcUSer where ID = fcAvisGroup.dbo.fcLogin.Username) as UserN,* into #TempFclogin from fcAvisGroup.dbo.fcLogin 
select (select USername from FcavisGroup.dbo.fcUSer where ID = fcAvisGroup.dbo.fcLogin.Username and Active = 1  ) as UserN,* into #TempFclogin from fcAvisGroup.dbo.fcLogin
select UserN,MAX(cDate + ' ' + Time) as LastLogin from #TempFclogin
--where USerN = 'BWMAFR\simon.pratley'
group by UserN
order by MAX((cDate + ' ' + Time)) desc


select 'When was the last time each user logged on NNNBBB:'
IF OBJECT_ID('tempdb..#TempFcloginFCAVIS') IS NOT NULL
BEGIN
drop table #TempFcloginFCAVIS
END
--select (select USername from FcavisGroup.dbo.fcUSer where ID = fcAvisGroup.dbo.fcLogin.Username) as UserN,* into #TempFclogin from fcAvisGroup.dbo.fcLogin 
select (select Username from Fcavis.dbo.fcUSer where ID = fcAvis.dbo.fcLogin.Username and Active = 1  ) as UserN,* into #TempFcloginFCAVIS from fcAvis.dbo.fcLogin
select UserN,MAX(cDate + ' ' + Time) as LastLogin from #TempFcloginFCAVIS
--where USerN = 'BWMAFR\simon.pratley'
group by UserN
order by MAX((cDate + ' ' + Time)) desc
--- Tracing route to dtahqtrf13027qx.africa.bwm-global.com [10.97.210.173] = Francoise machine
select  'ALL logins for a particular user (incluses IP address) CUSTOMER CARE:'
select *,cDate + ' ' + Time as LastLogin from #TempFcloginFCAVIS where UserN = 'Francoise.Cocriamont'
order by cDate + ' ' + Time desc

select  'ALL logins for a particular user (incluses IP address) RATES:'
select *,cDate + ' ' + Time as LastLogin from #TempFclogin where UserN = 'BWMAFR\Riaan.Weideman'
order by cDate + ' ' + Time desc



--NNNNNNNBBBBBB When was the last time each user logged on (THIS TIME FOR RATES):
select 'When was the last time each user logged on (THIS TIME FOR RATES):'
IF OBJECT_ID('tempdb..#TempFcloginFCAVISGROUP') IS NOT NULL
BEGIN
drop table #TempFcloginFCAVISGROUP
END
--select (select USername from FcavisGroup.dbo.fcUSer where ID = fcAvisGroup.dbo.fcLogin.Username) as UserN,* into #TempFclogin from fcAvisGroup.dbo.fcLogin 
select (select Username from fcavisgroup.dbo.fcUSer where ID = fcavisgroup.dbo.fcLogin.Username and Active = 1  ) as UserN,* into #TempFcloginFCAVISGROUP from fcAvisgroup.dbo.fcLogin
select UserN,MAX(cDate + ' ' + Time) as LastLogin from #TempFcloginFCAVISGROUP
--where USerN = 'BWMAFR\simon.pratley'
group by UserN
order by MAX((cDate + ' ' + Time)) desc



select  'ALL logins for a particular user (incluses IP address):'
select *,cDate + ' ' + Time as LastLogin from #TempFcloginFCAVISGROUP where UserN = 'BWMAFR\belinda.porteous1'
order by cDate + ' ' + Time desc


select '\\fsgen\vol2\DATA\TFRADJ\Daily' -- The files get put here by an automated process look here if not importing \\blisfflowcrac\D$\Log Files Service is called “Avis WizardFileImporter”
-- on BLISFFLOWCRAC : C:\Program Files\Avis\Avis WizardFileImporter\AVIS_WizardFileImporter.exe
--\\BLISFFLOWCRAC\c$\Program Files\Avis\Avis WizardFileImporter
--AVIS_WizardFileImporter.exe.config :
--<?xml version="1.0" encoding="utf-8" ?>
--<configuration>
--	<appSettings>
--		<add key="URLToAVISDirectory" value="\\fsgen\Vol2\DATA\TFRADJ\Daily" />
--		<add key="URLToFCDirectory" value="C:\FlowCentric\CRIS\Wizard Adjustment Import\\Flowcentric" />
--		<add key="SQLConnString" value="data source=BLISFSQL2RAC;initial catalog=fcAvisMaster;user id=flowcentric_cris; password=g1jim@"/>
--		<add key="URLToLOG" value="D:\Log Files"/>
--		<add key="URLToReport" value="C:\FlowCentric\CRIS\Wizard Adjustment Import\\Flowcentric\\Report"/>
--		<add key="URLToDone" value="C:\FlowCentric\CRIS\Wizard Adjustment Import\\Flowcentric\\Done" />
--		<add key="MinutesToCheck" value="30" />
--	</appSettings>
--</configuration>
select '\\blisfflowcrac\c$\Program Files\Avis\Avis WizardFileImporter\Avis.RAC.WizardFileImport.dll' --<-- this is the scheduled task that gets run (2015 changes)
select '\\blisfflowcrac\D$\Log Files' -- <-- logging of adjustment load
select '\\blisfflowcrac\c$\FlowCentric\CRIS\Wizard Adjustment Import\FlowCentric'
select '\\blisfflowcrac\c$\FlowCentric\CRIS\Wizard Adjustment Import\FlowCentric\Done' 'C:\FlowCentric\CRIS\Wizard Adjustment Import\FlowCentric\Done' --<-- Locally stored here daily
select '\\fsgen\vol1\UKFTP\'
select '\\10.98.248.120\ukfiles','DAILY ADJUSTMENTS:','epzaajda*.zip','ERF:','epzafddb*.zip','epswfddb*.zip','ACCPAC/HQrefundFiles','epzardda*.zip'
select '\\fsgen\vol2\data\tfracc','ACCPAC/HQrefundFiles get dumped here:','Acc*.za'
select 'Stefan’s stopsell scrape output:','\\BLISFALCAPP2\logs\Avis.RAC.Stopsell.WizardServiceScreenLog.txt'
select 'xml files for trigered rates:','\\blisfsql2rac\f$\FlowCentricDirectoryWatcherActions\RateDiary\RentACar\TRAVELPARTNERS'

--NNNBBB To get missing adjustment sequences (needs to be fixed to add BUDGET):
/*
IF OBJECT_ID('tempdb..#adjmonth') IS NOT NULL
BEGIN
drop table #adjmonth
END
select cast (substring(Filename,7,4) as int) as sequence   into #adjmonth from
fcavismaster.dbo.transactionTempAdjustments where Filename like '%.za' and Date_of_Adj >=
DATEADD(DAY, -30, GETDATE()) 
group by cast (substring(Filename,7,4) as int)
--select * from #adjmonth order by sequence
-- this will give me the missing sequence numbers  from the last month:
SELECT CASE WHEN MAX(sequence) = COUNT(*)
 THEN CAST(NULL AS INTEGER)
 -- THEN MAX(seq_nbr) + 1 as other option
 WHEN MIN(sequence) > (select min(sequence) from  #adjmonth)
THEN 1 
WHEN MAX(sequence) <> COUNT(*)
 THEN (SELECT MIN(sequence)+1
 FROM #adjmonth
 WHERE (sequence + 1)
 NOT IN (SELECT sequence FROM #adjmonth)) 
ELSE NULL END
 FROM #adjmonth
*/
--Has todays adjustments been loaded :
select 'Note: Date_of_Adj in below will always be 1 days behind current date:'
select 'Note: If file is empty then the sequence is skipped'
select Filename,Date_of_Adj,count(*) from fcavismaster.dbo.transactionTempAdjustments where cast(Date_of_Adj as datetime) = DATEADD(dd, DATEDIFF(dd,1,GETDATE()), 0) 
group by Filename,Date_of_Adj

--Has yesterdays adjustments been loaded :
select Filename,Date_of_Adj,count(*) from fcavismaster.dbo.transactionTempAdjustments where cast(Date_of_Adj as datetime) = DATEADD(dd, DATEDIFF(dd,2,GETDATE()), 0) 
group by Filename,Date_of_Adj

--Has 3days ago adjustments been loaded :
select Filename,Date_of_Adj,count(*) from fcavismaster.dbo.transactionTempAdjustments where cast(Date_of_Adj as datetime) = DATEADD(dd, DATEDIFF(dd,3,GETDATE()), 0) 
group by Filename,Date_of_Adj

--Has 4days ago adjustments been loaded :
select Filename,Date_of_Adj,count(*) from fcavismaster.dbo.transactionTempAdjustments where cast(Date_of_Adj as datetime) = DATEADD(dd, DATEDIFF(dd,4,GETDATE()), 0) 
group by Filename,Date_of_Adj

--Has 5days ago adjustments been loaded :
select Filename,Date_of_Adj,count(*) from fcavismaster.dbo.transactionTempAdjustments where cast(Date_of_Adj as datetime) = DATEADD(dd, DATEDIFF(dd,5,GETDATE()), 0) 
group by Filename,Date_of_Adj

--Has 6days ago adjustments been loaded :
select Filename,Date_of_Adj,count(*) from fcavismaster.dbo.transactionTempAdjustments where cast(Date_of_Adj as datetime) = DATEADD(dd, DATEDIFF(dd,6,GETDATE()), 0) 
group by Filename,Date_of_Adj



-- NNNNBBBBBB 
select 'All assigned and unassigned HQrefunds (created for Tanja tanya - Auditor)-- ORDERED BY CREATE DATE:'
/*
francoise.cocriamont
john.dube
melissa.vanross
dudu.mbuli
Meisie.Lediha
*/
select (select Username from fcuser where ID = fcEventHist.ResultUser )as ResultUser,CreateDate,ProcessID
from fcEventHist where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'francoise.cocriamont'
and resultdate = 0 and resultID <> 0 
and EventID in (101,102,104,105,106,107,108,109,111)
union
select (select Username from fcuser where ID = fcEventHist.ResultUser )as ResultUser,CreateDate,ProcessID
from fcEventHist where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'john.dube'
and resultdate = 0 and resultID <> 0
and EventID in (101,102,104,105,106,107,108,109,111)
union
select (select Username from fcuser where ID = fcEventHist.ResultUser )as ResultUser,CreateDate,ProcessID
from fcEventHist where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'melissa.vanross'
and resultdate = 0 and resultID <> 0
and EventID in (101,102,104,105,106,107,108,109,111)
union
select (select Username from fcuser where ID = fcEventHist.ResultUser )as ResultUser,CreateDate,ProcessID
from fcEventHist where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'dudu.mbuli'
and resultdate = 0 and resultID <> 0
and EventID in (101,102,104,105,106,107,108,109,111)
union
select (select Username from fcuser where ID = fcEventHist.ResultUser )as ResultUser,CreateDate,ProcessID
from fcEventHist where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'Meisie.Lediha'
and resultdate = 0 and resultID <> 0
and EventID in (101,102,104,105,106,107,108,109,111)
union
select Assigned as ResultUser,CreateDate,ProcessID
from fcEventHist where 
 resultdate = 0 and resultID <> 0
and EventID in (101,102,104,105,106,107,108,109,111)
and Assigned = 'Unassigned'
union
select (select Username from fcuser where ID = fcEventHist.ResultUser )as ResultUser,CreateDate,ProcessID
from fcEventHist where (select Username from fcuser where ID = fcEventHist.ResultUser ) = 'precious.mngomezulu'
and resultdate = 0 and resultID <> 0
and EventID in (101,102,104,105,106,107,108,109,111)

order by CreateDate




--Have the HQRefunds been loaded :

select 'http://blisfsql3rac/Reports/Pages/Report.aspx?ItemPath=%2fRAC_HQRefunds%2fDailyRAOculusExtractLaserfiche' --<-- Brand new Laserfiche report (combined_
select '\\blisfflowcrac\c$\FlowCentric Directory Watcher Actions\HQ Refunds\7511\Logging\'
select 'accpac rejections:','\\blisfflowcrac\c$\FlowCentric Directory Watcher Actions\HQRefund\SQLUpdateDump'
select 'hqrefund CSV gets dumped here (By Daniel or Jabu):','\\blisfflowcrac\c$\FlowCentric Directory Watcher Actions\HQ Refunds\7511\Source file heres the actual share \\blisfflowcrac\Source file' 
select 'hqrefund CSV gets moved here:','\\blisfflowcrac\c$\FlowCentric Directory Watcher Actions\HQ Refunds\7511\Archive File' , 'Actual Share' , '\\blisfflowcrac\Archive File' 
select 'xml files get written here:', '\\blisfflowcrac\c$\FlowCentric Directory Watcher Actions\HQ Refunds\FC Watcher\FC Source'
select 'REFUNDS get dumped here aswell:','\\blisfflowcrac\c$\inetpub\wwwroot\fcAvis\upload\ul_635073252086077515_139_E915117195_20062013112007107.xml'
select 'Log files for HQrefund accpac service calls here(Note credentials required):','\\blisfacpap1\A4W\Program Files\Accpac\RF55A\LOGS','srvacctech','123-qwe'
select 'Locations of HQrefund service','http://blisfflowcrac/avishqrefunds_wsdl/HQRefunds.asmx'
select 'EFT File saved to :','\\blisfacpap1\Progs\EFTWIN\NedBus\eftwinmt\Data','eftpaymt.txt'
select top 20 DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0),count(*) from fcavismaster.dbo.HQR_TR_Cases 
group by DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0)
order by DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0) desc

select '7511 transactions loaded today:'
select DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0),* from fcavismaster.dbo.HQR_TR_Cases where 
DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0) = 
DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0)
--order by DateCreated
order by CaseStatus desc

select '7511 transactions loaded today (ONLY DUPLICATED):'
select DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0),* from fcavismaster.dbo.HQR_TR_Cases where 
RANumber in 
(
select RANumber from fcavismaster.dbo.HQR_TR_Cases where 
DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0) = 
DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0)
group by RANumber
having count(*) > 1
)
order by RANumber

--Remove 'Remove DUPLICATED  7511 transactions:'
--first get the UniqueRef from the query directly above = ProcessID
-- Then run hte following :
/*
select UniqueRef into #templist from fcavismaster.dbo.HQR_TR_Cases where DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0) = '2018-01-18 00:00:00.000'
and DateCreated >= '2018-01-18 11:55:13.813'
order by DateCreated 
--(89 row(s) affected)

--Remove 'Remove DUPLICATED  7511 transactions:'

delete fcAvisMaster.dbo.HQR_TR_Cases where UniqueRef IN ( select UniqueRef from #templist )

delete fcAvisMaster.dbo.HQR_TR_CaseDetails where FK_UniqueRef IN ( select UniqueRef from #templist )
update fcAvis..fcEventHist set ResultID = 0  where ProcessID IN ( select UniqueRef from #templist )
*/

--Remove 'REMOVE ALL TRANSACTIONS LOADED TODAY:'
/*
select UniqueRef from fcavismaster.dbo.HQR_TR_Cases where 
DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0) = 
DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0)

update fcAvis..fcEventHist set ResultID = 0  where ProcessID in
(
select UniqueRef from fcavismaster.dbo.HQR_TR_Cases where 
DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0) = 
DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0)
)

delete fcAvisMaster.dbo.HQR_TR_CaseDetails where FK_UniqueRef in
(
select UniqueRef from fcavismaster.dbo.HQR_TR_Cases where 
DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0) = 
DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0)
)

delete fcAvisMaster.dbo.HQR_TR_Cases where UniqueRef in
(
select UniqueRef from fcavismaster.dbo.HQR_TR_Cases where 
DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0) = 
DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0)
)
*/


/*
select '7511 transactions loaded yesterday:'
select DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0),* from fcavismaster.dbo.HQR_TR_Cases where 
DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0) = 
DATEADD(dd, DATEDIFF(dd,1,GETDATE()), 0)
*/
/*
-- FCAVIS
select 'Number of days waiting (currently waiting INCLUDED) and users removed (THE OPEN ONES AND THE CLOSED ONES - UNIONED INTO A TABLE):'
IF object_id('fcavismaster.dbo.TimeTakenToActionFcavis') is not null
BEGIN
    drop table fcavismaster.dbo.TimeTakenToActionFcavis
END
select * into fcavismaster.dbo.TimeTakenToActionFcavis from (
select CASE WHEN ResultDate = 0 then 'WAITING' else '' END as Waiting,DATEDIFF(dd,convert(datetime,CreateDate,120),convert(datetime,CASE WHEN ResultDate = 0 then getdate() else ResultDate END,120)) as DaysDifference, 
(select Username from fcavis.dbo.fcuser where fcuser.ID = CreateUser) as CreateUserName,
(select Username from fcavis.dbo.fcuser where fcuser.ID = ResultUser) as ResultUserName,ProcessID,EventID,Description,'Open' as Status from fcavis.dbo.fceventhist 
where ResultID <> 0 --> to remove the REMOVED ONES
--and ResultDate <> 0 --> to remove ones that are still waiting 
union
-- Number of days waiting (currently waiting INCLUDED) and users removed (THE CLOSED ONES):
select CASE WHEN ResultDate = 0 then 'WAITING' else '' END as Waiting,DATEDIFF(dd,convert(datetime,CreateDate,120),convert(datetime,CASE WHEN ResultDate = 0 then getdate() else ResultDate END,120)) as DaysDifference, 
(select Username from fcavis.dbo.fcuser where fcuser.ID = CreateUser) as CreateUserName,
(select Username from fcavis.dbo.fcuser where fcuser.ID = ResultUser) as ResultUserName,ProcessID,EventID,Description,'Closed' as Status from fcavis.dbo.fceventArchive 
where ResultID <> 0 --> to remove the REMOVED ONES
--and ResultDate <> 0 --> to remove ones that are still waiting 
) mustbehere

select 'ALL waiting times current and done:'
select * from fcavismaster.dbo.TimeTakenToActionFcavis 
where ResultUSerName not in ('site.admin','accpac','santosh.pursad')
order by DaysDifference desc


select 'Average waiting times per user (excluding the ones that we are currently still waiting):'
select ResultUserName,avg(DaysDifference) from fcavismaster.dbo.TimeTakenToActionFcavis where Waiting = ''
group by ResultUserName
order by avg(DaysDifference) desc

select 'Average waiting times per user (ONLY the ones that we are currently STILL WAITING):'
select ResultUserName,avg(DaysDifference) from fcavismaster.dbo.TimeTakenToActionFcavis where Waiting = 'WAITING'
group by ResultUserName
order by avg(DaysDifference) desc

select 'Average waiting times per user (CURRENTLY WAITING AND DONE):'
select ResultUserName,avg(DaysDifference) from fcavismaster.dbo.TimeTakenToActionFcavis
group by ResultUserName
order by avg(DaysDifference) desc

select 'MAX waiting times per user (excluding the ones that we are currently still waiting):'
select ResultUserName,max(DaysDifference) from fcavismaster.dbo.TimeTakenToActionFcavis where Waiting = ''
group by ResultUserName
order by max(DaysDifference) desc

select 'MAX waiting times per user (ONLY the ones that we are currently STILL WAITING):'
select ResultUserName,max(DaysDifference) from fcavismaster.dbo.TimeTakenToActionFcavis where Waiting = 'WAITING'
group by ResultUserName
order by max(DaysDifference) desc




--FCAVISGROUP
select 'Number of days waiting (currently waiting INCLUDED) and users removed (THE OPEN ONES AND THE CLOSED ONES - UNIONED INTO A TABLE):'
IF object_id('fcavisgroup_custom.dbo.TimeTakenToActionFcavisgroup') is not null
BEGIN
    drop table fcavisgroup_custom.dbo.TimeTakenToActionFcavisgroup
END
select * into fcavisgroup_custom.dbo.TimeTakenToActionFcavisgroup from (
select CASE WHEN ResultDate = 0 then 'WAITING' else '' END as Waiting,DATEDIFF(dd,convert(datetime,CreateDate,120),convert(datetime,CASE WHEN ResultDate = 0 then getdate() else ResultDate END,120)) as DaysDifference, 
(select Username from fcavisgroup.dbo.fcuser where fcuser.ID = CreateUser) as CreateUserName,
(select Username from fcavisgroup.dbo.fcuser where fcuser.ID = ResultUser) as ResultUserName,ProcessID,EventID,Description,'Open' as Status from fcavisgroup.dbo.fceventhist 
where ResultID <> 0 --> to remove the REMOVED ONES
--and ResultDate <> 0 --> to remove ones that are still waiting 
union
-- Number of days waiting (currently waiting INCLUDED) and users removed (THE CLOSED ONES):
select CASE WHEN ResultDate = 0 then 'WAITING' else '' END as Waiting,DATEDIFF(dd,convert(datetime,CreateDate,120),convert(datetime,CASE WHEN ResultDate = 0 then getdate() else ResultDate END,120)) as DaysDifference, 
(select Username from fcavisgroup.dbo.fcuser where fcuser.ID = CreateUser) as CreateUserName,
(select Username from fcavisgroup.dbo.fcuser where fcuser.ID = ResultUser) as ResultUserName,ProcessID,EventID,Description,'Closed' as Status from fcavisgroup.dbo.fceventArchive 
where ResultID <> 0 --> to remove the REMOVED ONES
--and ResultDate <> 0 --> to remove ones that are still waiting 
) mustbehere

select 'ALL waiting times current and done:'
select * from fcavisgroup_custom.dbo.TimeTakenToActionFcavisgroup 
--where ResultUSerName not in ('site.admin','accpac','santosh.pursad')
order by DaysDifference desc


select 'Average waiting times per user (excluding the ones that we are currently still waiting):'
select ResultUserName,avg(DaysDifference) from fcavisgroup_custom.dbo.TimeTakenToActionFcavisgroup where Waiting = ''
group by ResultUserName
order by avg(DaysDifference) desc

select 'Average waiting times per user (ONLY the ones that we are currently STILL WAITING):'
select ResultUserName,avg(DaysDifference) from fcavisgroup_custom.dbo.TimeTakenToActionFcavisgroup where Waiting = 'WAITING'
group by ResultUserName
order by avg(DaysDifference) desc

select 'Average waiting times per user (CURRENTLY WAITING AND DONE):'
select ResultUserName,avg(DaysDifference) from fcavisgroup_custom.dbo.TimeTakenToActionFcavisgroup
group by ResultUserName
order by avg(DaysDifference) desc

select 'MAX waiting times per user (excluding the ones that we are currently still waiting):'
select ResultUserName,max(DaysDifference) from fcavisgroup_custom.dbo.TimeTakenToActionFcavisgroup where Waiting = ''
group by ResultUserName
order by max(DaysDifference) desc

select 'MAX waiting times per user (ONLY the ones that we are currently STILL WAITING):'
select ResultUserName,max(DaysDifference) from fcavisgroup_custom.dbo.TimeTakenToActionFcavisgroup where Waiting = 'WAITING'
group by ResultUserName
order by max(DaysDifference) desc
*/



/*
select 'NUMBER OF PROCESSES WORKED ON (EXCLUDING CURRENTLY WITH) fcavisgroup:'
use fcavisgroup
IF object_id('tempdb..#templist') is not null
BEGIN
    drop table #templist
END
select * into #templist from (
select Username as ResultUser,ProcessID,count(*) as PerProcessCount from fceventhist
inner join fcuser on fcuser.ID = fcEventHist.ResultUser
where ResultDate <> 0 -- to exclude the ones waiting on
group by Username,ProcessID
UNION
select Username as ResultUser,ProcessID,count(*) as PerProcessCount from fceventarchive
inner join fcuser on fcuser.ID = fceventarchive.ResultUser
group by Username,ProcessID
) x



select ResultUser,count(*) as NumnerOfProcessesWorkedOn from #templist 
group by ResultUser
order by NumnerOfProcessesWorkedOn desc

select 'NUMBER OF PROCESSES WORKED ON (EXCLUDING CURRENTLY WITH) fcavis:'
use fcavis
IF object_id('tempdb..#templist2') is not null
BEGIN
    drop table #templist2
END
select * into #templist2 from (
select Username as ResultUser,ProcessID,count(*) as PerProcessCount from fceventhist
inner join fcuser on fcuser.ID = fcEventHist.ResultUser
where ResultDate <> 0 -- to exclude the ones waiting on
group by Username,ProcessID
UNION
select Username as ResultUser,ProcessID,count(*) as PerProcessCount from fceventarchive
inner join fcuser on fcuser.ID = fceventarchive.ResultUser
group by Username,ProcessID
) x

select ResultUser,count(*) as NumnerOfProcessesWorkedOn from #templist2
group by ResultUser
order by NumnerOfProcessesWorkedOn desc
*/

-- Duplicate HQRefunds (ALREADY PAID):

use fcavismaster
/*
SELECT   c.ConsultantName, cd.CustomerName, c.RANumber, c.CaseNumber, cd.Bank, cd.BankCode, cd.AccountNumber, cd.RefundAmount as ActualRefundAmount,
c.LastActionDate as RefundDate, CaseStatus ,( select Description from HQR_TR_STATUS where StatusID = CaseStatus ) as StatusDescription
FROM   HQR_TR_Cases c
LEFT OUTER JOIN
HQR_TR_CaseDetails AS cd ON c.CaseID = cd.FK_CaseID 
WHERE  c.CaseStatus in (60,90) and c.RANumber IN
(
		select RANumber from HQR_TR_Cases
		where CaseStatus in (60,90) and RANumber <> 'avar1'
		group by  RANumber
		having COUNT(RANumber) > 1
)
order by c.LastActionDate desc
*/

/*
select 'Duplicate HQRefunds (NOT PAID YET):'
use fcavismaster
select * from (
SELECT   c.ConsultantName, cd.CustomerName, c.RANumber, c.CaseNumber, cd.Bank, cd.BankCode, cd.AccountNumber, cd.RefundAmount as ActualRefundAmount,
c.LastActionDate as RefundDate, CaseStatus ,( select Description from HQR_TR_STATUS where StatusID = CaseStatus ) as StatusDescription
FROM   HQR_TR_Cases c
LEFT OUTER JOIN
HQR_TR_CaseDetails AS cd ON c.CaseID = cd.FK_CaseID 
WHERE  /*c.CaseStatus in (60,90) and*/ c.RANumber IN
(
		select RANumber from HQR_TR_Cases
		where /*CaseStatus in (60,90) and*/ RANumber <> 'avar1'
		group by  RANumber
		having COUNT(RANumber) > 1
)
) x where CaseStatus NOT IN (60,90)
order by RefundDate desc
*/

IF object_id('tempdb..#templist3') is not null
BEGIN
    drop table #templist3
END
select * into #TEMPLIST3 from 
(
select fcavismaster.dbo.initcap(Replace((select Username from fcavis.dbo.fcuser where ID = ResultUSer),'.',' ')) as LookupResultUser,ProcessID,Description,'Open' as OpenClosed  from fcavis.dbo.fceventhist 
where ID in
(
select MAX(ID) from fcavis.dbo.fcEventHist
where EventID in (101,105)
				and  (select Username from fcavis.dbo.fcuser where ID = ResultUSer) <> 'accpac'
group by ProcessID
)
union
select fcavismaster.dbo.initcap(Replace((select Username from fcavis.dbo.fcuser where ID = ResultUSer),'.',' ')) as LookupResultUser,ProcessID,Description,'Closed' as OpenClosed from fcavis.dbo.fcEventArchive
where ID in
(
select MAX(ID) from fcavis.dbo.fcEventArchive
where EventID in (101,105)
				and  (select Username from fcavis.dbo.fcuser where ID = ResultUSer) <> 'accpac'
group by ProcessID
)
union
select fcavismaster.dbo.initcap(Replace((select Username from fcavis.dbo.fcuser where ID = ResultUSer),'.',' ')) as LookupResultUser,ProcessID,Description,'Closed' as OpenClosed from fcavis.dbo.fcEventArchive
where ID in
(
select MAX(ID) from fcAvisArchive.dbo.fcEventArchive
where EventID in (101,105)
				and  (select Username from fcavis.dbo.fcuser where ID = ResultUSer) <> 'accpac'
group by ProcessID
)
) x

select 'HQ Refunds gone wrong(DIFFERENT CONSULTANT):'
select LookupResultUser,CaseStatus,ConsultantName,CaseStatus,DisplayNote,Description,OpenClosed,* from fcavismaster.dbo.HQR_TR_Cases LEFT JOIN #TEMPLIST3 on UniqueRef = ProcessID
where  ConsultantName <> LookupResultUser and LookupResultUser <> 'Importer User'
order by CaseID

select 'THIS MORNING''S HQ Refunds that have been rejected by accpac banking '
select LastActionDate LAD,LookupResultUser,CaseStatus,ConsultantName,CaseStatus,DisplayNote,Description,OpenClosed,* from fcavismaster.dbo.HQR_TR_Cases LEFT JOIN #TEMPLIST3 on UniqueRef = ProcessID
where  CaseStatus = 0 and DisplayNote = 'This case has been rejected by ACCPAC banking'
and DATEADD(dd, DATEDIFF(dd,0,LastActionDate), 0)  = DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0) 
order by LAD desc
/*
Francoise Cocriamont	0	Francoise Cocriamont	0	This case has been rejected by ACCPAC banking 	Complete HQ Refund Case Details - [E127882182]			Open	68214	HQ-0000068214	2013-01-24 10:45:59.463	NULL	E127882182	0	NULL	NULL	NULL	NULL	2013-01-31 09:02:09.140	Francoise Cocriamont	805160	This case has been rejected by ACCPAC banking 	Francoise Cocriamont	805160	Complete HQ Refund Case Details - [E127882182]			Open
Santosh Pursad			0	Santosh Pursad			0	This case has been rejected by ACCPAC banking 	Complete HQ Refund Case Details - [E617670933] REROUTED	Open	68006	HQ-0000068006	2013-01-21 10:30:08.190	NULL	E617670933	0	NULL	NULL	NULL	NULL	2013-01-31 08:59:20.553	Santosh Pursad			802370	This case has been rejected by ACCPAC banking 	Santosh Pursad	8		02370	Complete HQ Refund Case Details - [E617670933] REROUTED	Open
Francoise Cocriamont	0	Francoise Cocriamont	0	This case has been rejected by ACCPAC banking 	Complete HQ Refund Case Details - [E748686993]			Open	68595	HQ-0000068595	2013-01-28 10:35:36.273	NULL	E748686993	0	NULL	NULL	NULL	NULL	2013-01-31 07:00:15.213	Francoise Cocriamont	807998	This case has been rejected by ACCPAC banking 	Francoise Cocriamont	807998	Complete HQ Refund Case Details - [E748686993]			Open
*/

/*
Francoise Cocriamont	0	Francoise Cocriamont	0	This case has been rejected by ACCPAC banking 	Complete HQ Refund Case Details - [E617027504]	Open	68684	HQ-0000068684	2013-01-30 11:45:14.127	NULL	E617027504	0	NULL	NULL	NULL	NULL	2013-02-01 07:00:19.380	Francoise Cocriamont	810270	This case has been rejected by ACCPAC banking 	Francoise Cocriamont	810270	Complete HQ Refund Case Details - [E617027504]	Open
Francoise Cocriamont	0	Francoise Cocriamont	0	This case has been rejected by ACCPAC banking 	Complete HQ Refund Case Details - [E183528015]	Open	68669	HQ-0000068669	2013-01-30 11:44:48.097	NULL	E183528015	0	NULL	NULL	NULL	NULL	2013-02-01 07:00:16.287	Francoise Cocriamont	810254	This case has been rejected by ACCPAC banking 	Francoise Cocriamont	810254	Complete HQ Refund Case Details - [E183528015]	Open
Francoise Cocriamont	0	Francoise Cocriamont	0	This case has been rejected by ACCPAC banking 	Complete HQ Refund Case Details - [E181753261]	Open	68666	HQ-0000068666	2013-01-30 11:44:42.410	NULL	E181753261	0	NULL	NULL	NULL	NULL	2013-02-01 07:00:15.740	Francoise Cocriamont	810251	This case has been rejected by ACCPAC banking 	Francoise Cocriamont	810251	Complete HQ Refund Case Details - [E181753261]	Open
Francoise Cocriamont	0	Francoise Cocriamont	0	This case has been rejected by ACCPAC banking 	Complete HQ Refund Case Details - [E181713490]	Open	68424	HQ-0000068424	2013-01-28 10:26:59.010	NULL	E181713490	0	NULL	NULL	NULL	NULL	2013-02-01 07:00:14.083	Francoise Cocriamont	807810	This case has been rejected by ACCPAC banking 	Francoise Cocriamont	807810	Complete HQ Refund Case Details - [E181713490]	Open
*/




Select 'These are "Ready for Banking" can be pulled with InvoicesToBank'
select LastActionDate as  LAD,LookupResultUser,CaseStatus,ConsultantName,CaseStatus,DisplayNote,Description,OpenClosed,* from fcavismaster.dbo.HQR_TR_Cases LEFT JOIN #TEMPLIST3 on UniqueRef = ProcessID
where  CaseStatus = 40
--and  DATEADD(dd, DATEDIFF(dd,0,LastActionDate), 0) = DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0)
order by LastActionDate desc 


Select 'These are "Ready for Banking" (TODAY ONLY) can be pulled with InvoicesToBank'
select LastActionDate as  LAD,LookupResultUser,CaseStatus,ConsultantName,CaseStatus,DisplayNote,Description,OpenClosed,* from fcavismaster.dbo.HQR_TR_Cases LEFT JOIN #TEMPLIST3 on UniqueRef = ProcessID
where  CaseStatus = 40
and  DATEADD(dd, DATEDIFF(dd,0,LastActionDate), 0) = DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0)
order by LastActionDate desc

Select 'Cases Created Today:'
select LookupResultUser,CaseStatus,ConsultantName,CaseStatus,DisplayNote,Description,OpenClosed,* from fcavismaster.dbo.HQR_TR_Cases LEFT JOIN #TEMPLIST3 on UniqueRef = ProcessID
where  DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0) = DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0) 
order by DateCreated

Select 'Cases Created Yesterday:'
select LookupResultUser,CaseStatus,ConsultantName,CaseStatus,DisplayNote,Description,OpenClosed,* from fcavismaster.dbo.HQR_TR_Cases LEFT JOIN #TEMPLIST3 on UniqueRef = ProcessID
where  DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0) = DATEADD(dd, DATEDIFF(dd,1,GETDATE()), 0) 
order by DateCreated



Select 'Cases Created 2 days ago:'
select LookupResultUser,CaseStatus,ConsultantName,CaseStatus,DisplayNote,Description,OpenClosed,* from fcavismaster.dbo.HQR_TR_Cases LEFT JOIN #TEMPLIST3 on UniqueRef = ProcessID
where  DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0) = DATEADD(dd, DATEDIFF(dd,2,GETDATE()), 0) 
order by DateCreated

Select 'Cases Created 3 days ago:'
select LookupResultUser,CaseStatus,ConsultantName,CaseStatus,DisplayNote,Description,OpenClosed,* from fcavismaster.dbo.HQR_TR_Cases LEFT JOIN #TEMPLIST3 on UniqueRef = ProcessID
where  DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0) = DATEADD(dd, DATEDIFF(dd,3,GETDATE()), 0) 
order by DateCreated

Select 'Cases Created 4 days ago:'
select LookupResultUser,CaseStatus,ConsultantName,CaseStatus,DisplayNote,Description,OpenClosed,* from fcavismaster.dbo.HQR_TR_Cases LEFT JOIN #TEMPLIST3 on UniqueRef = ProcessID
where  DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0) = DATEADD(dd, DATEDIFF(dd,4,GETDATE()), 0) 
order by DateCreated

Select 'Cases Created 5 days ago:'
select LookupResultUser,CaseStatus,ConsultantName,CaseStatus,DisplayNote,Description,OpenClosed,* from fcavismaster.dbo.HQR_TR_Cases LEFT JOIN #TEMPLIST3 on UniqueRef = ProcessID
where  DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0) = DATEADD(dd, DATEDIFF(dd,5,GETDATE()), 0) 
order by DateCreated

Select 'Cases Created 6 days ago:'
select LookupResultUser,CaseStatus,ConsultantName,CaseStatus,DisplayNote,Description,OpenClosed,* from fcavismaster.dbo.HQR_TR_Cases LEFT JOIN #TEMPLIST3 on UniqueRef = ProcessID
where  DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0) = DATEADD(dd, DATEDIFF(dd,6,GETDATE()), 0) 
order by DateCreated

Select 'Cases Created 7 days ago:'
select LookupResultUser,CaseStatus,ConsultantName,CaseStatus,DisplayNote,Description,OpenClosed,* from fcavismaster.dbo.HQR_TR_Cases LEFT JOIN #TEMPLIST3 on UniqueRef = ProcessID
where  DATEADD(dd, DATEDIFF(dd,0,DateCreated), 0) = DATEADD(dd, DATEDIFF(dd,7,GETDATE()), 0) 
order by DateCreated


/*
select '(HQ Refunds gone wrong) HQ Refunds archived in flow but NOT CaseStatus = 60:'
select LookupResultUser,CaseStatus,ConsultantName,CaseStatus,DisplayNote,Description,OpenClosed,* from fcavismaster.dbo.HQR_TR_Cases LEFT JOIN #TEMPLIST3 on UniqueRef = ProcessID
where  OpenClosed = 'Closed' and CaseStatus <> '60'
order by CaseID

select '(HQ Refunds gone wrong) HQ Refunds NOT archived in flow but  CaseStatus = 60:'
select LookupResultUser,CaseStatus,ConsultantName,CaseStatus,DisplayNote,Description,OpenClosed,* from fcavismaster.dbo.HQR_TR_Cases LEFT JOIN #TEMPLIST3 on UniqueRef = ProcessID
where  OpenClosed = 'Open' and CaseStatus = '60'
order by CaseID
*/


-- todays South African adjustments :
--select * from fcavismaster.dbo.transactionTempAdjustments where cast(Date_of_Adj as datetime) =  DATEADD(dd, DATEDIFF(dd,1,GETDATE()), 0)  and filename like '%.za'



--NNNBBB awesome just about everything :
/*
SELECT     ID, KAMUserID,(select UserName from fcAvisGroup.dbo.fcUser where ID = KAMUserID) as KAM, KAMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = KAMRoleID) as KAMRole, RSMUserID ,(select UserName from fcAvisGroup.dbo.fcUser where ID = RSMUserID) as RSM, RSMRoleID ,(select Description from fcAvisGroup.dbo.fcRole where ID = RSMRoleID) RSMRole, RSMRoleDescription, STC_Code, SegmentationID, Segment, DateCreated
INTO #TEMPSTCREL
FROM         fcAvisGroup_Custom.dbo.Custom_VIPCO_UserSTCRelation
Order by RSM

Select *
FROM                  BLISFSQLRAC.RatesSTC.dbo.RateDiary RD INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Segmentation SMTT ON RD.SegmentationId = SMTT.SegmentationId INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Segment SMT ON SMTT.SegID = SMT.SegID INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.Unit UT ON SMTT.UnitID = UT.UnitID INNER JOIN
                      BLISFSQLRAC.RatesSTC.dbo.RateCode RC ON RD.RateID = RC.RateID INNER JOIN
                      fcAvisGroup_Custom.dbo.Custom_VIPCO_RatesDataCaptured RDC ON RDC.RealRateCode = RC.RateCode INNER JOIN
                      #TEMPSTCREL TMP ON TMP.STC_Code = RD.STC
where UT.UnitName = 'South Africa' 
order by KAM
*/


select 'Duplicate HQ refunds (THE ACTUAL PROCESSES - ra''S LISTED):'
use fcAvis
SELECT     ControlValue
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ControlID = 'HRQ_Import_RANumber' and CreateDate = '20130819'
Group by ControlValue
having count(*) > 1

/*
-- ACTUAL REMOVAL OF DUPLICATE HQREFUNDS :
-- check
select * from fcavismaster..HQR_TR_Cases where CaseID = 99406
select * from fcavismaster..HQR_TR_CaseDetails where FK_CaseID =99406
-- remove from tables
delete fcavismaster..HQR_TR_Cases where CaseID = 99406
delete fcavismaster..HQR_TR_CaseDetails where FK_CaseID =99406
-- remove process
update fcAvis..fcEventHist set ResultID = 0  where ProcessID = 1164660
*/


/*
SELECT 'Duplicate HQ refunds (THE COMPLETE PROCESSES):'
-- The OPEN ones
use fcAvis
SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ),ControlID,ControlValue,fcEventHist.*, fcEventValue.*
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ProcessID in
(
SELECT     ProcessID
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ControlID = 'HRQ_Import_RANumber' and convert(datetime,CreateDate) = DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0)  and
ControlValue in 
(
SELECT     ControlValue
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ControlID = 'HRQ_Import_RANumber' and convert(datetime,CreateDate) = DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0) 
Group by ControlValue
having count(*) > 1
)
--order by fcEventHist.ID , fcEventValue.ID
)
order by ProcessID,fcEventHist.ID , fcEventValue.ID
*/

select 'HQRefund PROCESSES LOADED TODAY:'
use fcAvis
SELECT     convert(datetime,CreateDate),*
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ControlID = 'HRQ_Import_RANumber' and convert(datetime,CreateDate) = DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0) 
order by ProcessID

select 'HQRefund PROCESSES LOADED TODAY MINUS REMOVED:'
use fcAvis
SELECT     convert(datetime,CreateDate),*
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ControlID = 'HRQ_Import_RANumber' and convert(datetime,CreateDate) = DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0) 
and ResultID <> 0  
order by ProcessID

select 'Have any HQrefunds loaded with a 0 amount:'
select * from fcavismaster.dbo.HQR_TR_CaseDetails where RefundAmount = 0 and FK_CaseID > 76203

select 'new OPEN projects'
use fcAvis
SELECT     (select Username from fcuser where ID = fcEventHist.ResultUser ),ControlID,'\\blisfflowcrac\c$\Inetpub\wwwroot\fcAvis\upload\'  + ControlValue,fcEventHist.*, fcEventValue.*
FROM         fcEventHist LEFT JOIN --<-- to get the new page that doesnt have Values yet
                      fcEventValue ON fcEventHist.ID = fcEventValue.EventHistID
where ControlID in ('CC10040ImportFile','CC10010ChooseProject') and EventID = 145
order by fcEventHist.ID , fcEventValue.ID


select 'new CLOSED projects'
use fcAvis
SELECT     (select Username from fcuser where ID = fcEventArchive.ResultUser ),ControlID,'\\blisfflowcrac\c$\Inetpub\wwwroot\fcAvis\upload\'  + ControlValue,fcEventArchive.*, fcEventValueArchive.*
FROM         fcEventArchive INNER JOIN
fcEventValueArchive ON fcEventArchive.EventHistID = fcEventValueArchive.EventHistID
where ControlID in ('CC10040ImportFile','CC10010ChooseProject') and EventID = 145
order by fcEventArchive.ID , fcEventValueArchive.ID



/*
(No column name)	ID	ProcessID
\\blisfflowcrac\c$\Inetpub\wwwroot\fcAvis\upload\ul_635132132066581218_89_Project 3851.xlsx	1572366	1019285
*/
--U689568213 this one twice
/*
exec fcAvisMaster..sp_GetAdjustmentsToBeApproved 'PP-0001929','Declined'
exec fcAvisMaster..sp_GetAdjustmentsToBeApproved 'PP-0001929','Approved'
*/


-- Are there any Stopsell errors today RUN ON BLISFSQL3RAC :
--select * from K2..vw_KS_Errors where DATEADD(dd, DATEDIFF(dd,0,StartDate), 0)  = DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0)

-- Etolls capturing:
--select * from fcAvisMaster..Etolls













































select 'Ended running at : ',GETDATE()