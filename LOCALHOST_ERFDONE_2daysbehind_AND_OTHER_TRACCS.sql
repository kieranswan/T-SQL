--Phathu
-- SELECT * FROM ACC_RDS_DAILY WHERE  LEDGER_ACCOUNT_NO = '6003' AND RA_NUMBER IN ( '  E600605762 ' , '  E690679603 ' )

/*
select VEHICLE_STATUS,* from openquery(TRACCS, '
SELECT * FROM FLEET_MASTER_VIEW WHERE PERIOD_CCYYPP = ''211808''
')
*/

/*
select ISN_RA_MAINT_VIEW from ra_maint_View  WHERE ISN_RA_MAINT_VIEW > 10379307
ORDER BY ISN_RA_MAINT_VIEW
-- CREDIT CARD MASKING EXAMPLE :
Last one run:
UPDATE RA_MAINT_VIEW SET CREDIT_CLUB_NO= LEFT(LTRIM(CREDIT_CLUB_NO),6) + REPEAT('X',LENGTH(LTRIM(RTRIM(CREDIT_CLUB_NO))) -10)  + RIGHT(RTRIM(CREDIT_CLUB_NO),4) WHERE ISN_RA_MAINT_VIEW BETWEEN 13399560 AND 14899559 



VAT PERCENTAGE :
select TAX_PERCENT,REMARKS,* from RA_MAINT_VIEW WHERE RA_NUMBER = 600807686
H:\DATA\TFRERF\ERF7324.ZA

*/


select VEHICLE_STATUS,* from openquery(TRACCS, '
SELECT * FROM FLEET_MASTER_VIEW WHERE REGISTRATION_NO IN (
select REGISTRATION_NO from car_movement_view where erf_file = ''ERF7351.ZA'' AND MOVEMENT_TYPE = ''I'' AND SUBSTRING(STATION_CODE,1,2) = ''70''
) AND VEHICLE_STATUS = ''A''
')



/*
Hi Erika,
Yes the web service should just return the User Group, because the business owners will change and need to be maintained from Anastasias list.

The query should look something like this (using the USER_ID as input):
SELECT USER_GROUP_ID
FROM CONTROL_USERS WHERE
USER_REC_TYPE = 1
AND USER_ID = 'FLEET01'
*/	

--SELECT * FROM MVA_LIST where  ISN_MVA_LIST > 26078 { maxrows 3000 } ORDER BY ISN_MVA_LIST
-- STARTED WITH 29 MILLION CAR_MOVEMENT_VIEW RECORDS !!!! - REMOVED ABOUT 8 
/* 5000 at a time 522270 records per 5000 */
/* delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 7079 AND  8078 ) */
/* delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 8079 AND  9078 ) */
/*4001 6000 below */
 /* delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 12079 AND  13078 ) */
/*6001 to 8000 below */
/*  delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 13079 AND  15078 ) */
/*8001 to 10000 */
/* delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 15079 AND  17078 ) */
/*10001 to 13000 */
/* delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 17079 AND  20078 ) */
/* 3000 */
/* delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 20079 AND  23078 ) */
/* 3000 */
/* delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 23079 AND  26078 ) */
/* 3000 */
/* delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 26079 AND  29078 ) */
/* runs for 3391 seconds */
/* 2000 */
/* delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 29079 AND  31078 ) */
/* 2000 */
/* delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 31079 AND  33078 ) */
/* 2000 */
/* delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 33079 AND 35078 ) */
/* 2000 */
/* delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 35079 AND 37078 ) */
/* 2000 */
/* delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 37079 AND 39078 ) */
/* 2000 */
/*delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 39079 AND 41078 ) */

/* delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 41079 AND 43078 ) */

/* delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 43079 AND 45078 )  */

--delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 45079 AND 47078 ) -- DONE 

--delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 47079 AND 49078 ) -- DONE

--delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 49079 AND 51078 ) -- DONE

--delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 51079 AND 53078 ) -- DONE

--delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 53079 AND 55078 ) -- DONE

--delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 55079 AND 57078 ) -- DONE

--delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 57079 AND 59078 ) -- DONE 

--delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 59079 AND 61078 ) -- DONE

--delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 61079 AND 63078 ) -- DONE

--delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 63079 AND 65078 ) -- DONE

--delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 65079 AND 67078 ) -- DONE

--delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 67079 AND 69078 ) -- DONE

--delete * from car_movement_view where mva_number in (SELECT MVA_NUMBER  FROM MVA_LIST WHERE  ISN_MVA_LIST BETWEEN 69079 AND 69762 ) -- DONE



--select * from openquery(TRACCS, '
--select TRANSACTION_AMOUNT TRANSACTION_AMOUNTx ,INTERNAL_TAPE_SEQ_NO INTERNAL_TAPE_SEQ_NOx,CREDIT_CLUB_CODE CREDIT_CLUB_CODEx,
--AVIS_COMP_CODE AVIS_COMP_CODEx, WIZ_FILE_SEQ_NUMBER WIZ_FILE_SEQ_NUMBERx,DATA_DATE DATA_DATEx,PROCESSED_IND PROCESSED_INDx,* 
--from CCS_DETAIL_FILE {usekey 3} where PERIOD_CCYYPP >= ''211707''
--AND INTERNAL_TAPE_SEQ_NO = 4194 AND AVIS_COMP_CODE = ''SW'' AND CREDIT_CLUB_CODE = ''CD''
--ORDER BY DATA_DATE,INTERNAL_TAPE_SEQ_NO
--')









--Iveri = (the merchant number doesnt appear on the file but the USN and the APP ID do !!)
-- amex and diners (there is ony a merchant number that appears on the file):
select * from openquery(TRACCS, '
select * from CCS_CODES_FILE
')
/*
--AMEX :
---------
AVIS_COMP_CODE
SW
MERCHANT_NUMBER
9683709901     

AVIS_COMP_CODE
ZA
MERCHANT_NUMBER
9683702906     
--DINERS :
----------
AVIS_COMP_CODE
ZA
MERCHANT_NUMBER
11170107       

AVIS_COMP_CODE
SW
MERCHANT_NUMBER
11170776       

*/
--credit club codes and iVeri setup and application ids and merchant numners and usn numnbers:

select * from openquery(TRACCS, '
select * from CCS_COUNTRY_FILE
')



--select DATA_DATE,* from openquery(TRACCS, 'select * from CCS_DETAIL_FILE WHERE RA_NUMBER like ''%85591970%''
--')

-- look for #VATBACK AND ADD BACK 
--\\nbrachq204\c$\Users\Mckay.Matsebanane
--sarfaraaz \\racfileserver\Avis_Users\Credit Clubs\CCS-CARD FOLDER\2018


-- no gast26mar
-- Daily Fleet Installaations etc : \\racfs.abgza.co.za\NATREPORTS\DailyFleet\VehicleExceptions New_Vehicle_Installations-20180214.csv Different_Reg_No-20180214.csv Incorrect_Metric_Indicators-20180214.csv
--new weideman :nbrachq072 \\nbrachq072\c$\Users\Riaan.Weideman\Desktop
--riaan weidefleman fleet audit :
--\\blisfracsql1\FlowCentricDirectoryWatcherActions\TRACCS
--\\blisfracsql1\FlowCentricDirectoryWatcherActions\TRACCSmonthly


--select * from fleet_master_View where registration_no = 'HC41SHGP'

-- \\racfs.abgza.co.za\Vol2\DATA\TFRERF
-- \\racfs.abgza.co.za\Vol2\DATA\TFRERFBW
-- \\racfs.abgza.co.za\Vol2\DATA\TFRACC
-- \\Vmisfracerf1\c$\natreports
-- \\racfs.abgza.co.za\NATREPORTS\DailyFleet
-- \\racfs.abgza.co.za\Vol2\DATA\TFRCLUBS
-- \\racfs.abgza.co.za\Vol2\iVeri\DATA
-- \\racfileserver\Avis_Users\Credit Clubs\CCS-CARD FOLDER\2018
-- \\blisfflowcrac\Source file
-- LEBO had dara before : daleen must do it


select 'Has todays credit clubs been loaded (The data_date today will ALWAYS be yesterdays date): '
select * from openquery(TRACCS, '
select PROCESSED_IND  PROCESSED_INDx,* from CCS_DETAIL_FILE WHERE DATA_DATE = TIMESTAMPADD(SQL_TSI_DAY, -1, CURRENT_DATE() )
')


select 'ARE THERE ANY SERVICE CODE / CARD PRESENT TRANSACTIONS TODAY (The data_date today will ALWAYS be yesterdays date): '
select * from openquery(TRACCS, '
select PROCESSED_IND  PROCESSED_INDx,* from CCS_DETAIL_FILE WHERE DATA_DATE = TIMESTAMPADD(SQL_TSI_DAY, -1, CURRENT_DATE() ) AND SERVICE_CODE <> ''''
')


select 'all UNPROCESSED transactions for the period ( PROCESSED_IND starts out NO and then ends up NULL ) :'
select * from openquery(TRACCS, '
select TRANSACTION_AMOUNT TRANSACTION_AMOUNTx ,INTERNAL_TAPE_SEQ_NO INTERNAL_TAPE_SEQ_NOx,CREDIT_CLUB_CODE CREDIT_CLUB_CODEx,
AVIS_COMP_CODE AVIS_COMP_CODEx, WIZ_FILE_SEQ_NUMBER WIZ_FILE_SEQ_NUMBERx,DATA_DATE DATA_DATEx,PROCESSED_IND PROCESSED_INDx,* 
from CCS_DETAIL_FILE {usekey 3} where PERIOD_CCYYPP >= ''211707''
AND PROCESSED_IND = ''NO''
ORDER BY DATA_DATE,INTERNAL_TAPE_SEQ_NO
')


--IVERIZA004284.DAT -- CORRUPT FILE
/*
TRANSACTION_AMOUNTx
11604325.56
*/
select * from openquery(TRACCS, '
select SUM(TRANSACTION_AMOUNT) TRANSACTION_AMOUNTx ,INTERNAL_TAPE_SEQ_NO INTERNAL_TAPE_SEQ_NOx,CREDIT_CLUB_CODE CREDIT_CLUB_CODEx,
AVIS_COMP_CODE AVIS_COMP_CODEx, WIZ_FILE_SEQ_NUMBER WIZ_FILE_SEQ_NUMBERx,DATA_DATE DATA_DATEx,PROCESSED_IND PROCESSED_INDx,* 
from CCS_DETAIL_FILE {usekey 3} where PERIOD_CCYYPP >= ''211707''
AND INTERNAL_TAPE_SEQ_NO = 4284 AND AVIS_COMP_CODE = ''ZA'' AND SERVICE_CODE = '''' 
ORDER BY DATA_DATE,INTERNAL_TAPE_SEQ_NO
')

/*
DATA_DATE - for the big one 
2018-04-20
*/

--the NEW FILE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
select * from openquery(TRACCS, '
select SUM(TRANSACTION_AMOUNT) TRANSACTION_AMOUNTx ,INTERNAL_TAPE_SEQ_NO INTERNAL_TAPE_SEQ_NOx,CREDIT_CLUB_CODE CREDIT_CLUB_CODEx,
AVIS_COMP_CODE AVIS_COMP_CODEx, WIZ_FILE_SEQ_NUMBER WIZ_FILE_SEQ_NUMBERx,DATA_DATE DATA_DATEx,PROCESSED_IND PROCESSED_INDx,* 
from CCS_DETAIL_FILE {usekey 3} where PERIOD_CCYYPP >= ''211707''
AND INTERNAL_TAPE_SEQ_NO = 4293 AND AVIS_COMP_CODE IN (''ZA'',''B0'') AND SERVICE_CODE = '''' 
ORDER BY DATA_DATE,INTERNAL_TAPE_SEQ_NO
')
-- 14393156.42
-- 7831 transactions 


-- 7392 :
/*
select * from openquery(TRACCS, '
select * from CCS_DETAIL_FILE  where INTERNAL_TAPE_SEQ_NO = 4284 AND AVIS_COMP_CODE IN (''ZA'',''B0'') AND SERVICE_CODE = '''' 
ORDER BY DATA_DATE,INTERNAL_TAPE_SEQ_NO
')
*/


/*
select * from openquery(TRACCS, '
select * from CCS_DETAIL_FILE  where INTERNAL_TAPE_SEQ_NO = 4284 AND AVIS_COMP_CODE IN (''ZA'',''B0'') AND SERVICE_CODE = '''' AND TRANSACTION_AMOUNT < 0
ORDER BY DATA_DATE,INTERNAL_TAPE_SEQ_NO
')
*/


-- to view jobs SELECT job_id, [name] FROM msdb.dbo.sysjobs;
-- The adjustment for the 17000 rand 


select DATA_DATE,* from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE TRANSACTION_AMOUNT = 3493.25 
')
/*
CREDIT_CLUB_NUMBER
4388576110264689
INTERNAL_TAPE_SEQ_NO
4217      
--In iveri this is when it said it was processed  :
--IVERISW004217.DAT 2017-12-29 
--13 FEB 2018 !!!!!!!!!!!!!!!! on bank statement
*/


/*
Hi Michelle

As discussed, please can you kindly reverse the transaction of R17850.00 credit for the below card number.
CX4021XXXX6760XXXX2573XXXX4124

This was submitted to Iveri today.
We will do and EFT and settle with the cardholder directly.

Please confirm once done.

Thanks
*/


--IVERIZA004292.DAT
select DATA_DATE,* from  openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER = ''  E600968351''
')


--update openquery(TRACCS, '
--select * from CCS_DETAIL_FILE WHERE RA_NUMBER = ''  E600968351'' AND DATA_DATE = ''2018/05/07'' 
--')
--SET PROCESSED_IND = NULL


--RE: [Internal] Refund E517963224 R5 240.08 CX402837xxxx6032


select * from  openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER = ''  E517963224'' and TRANSACTION_AMOUNT = -5240.08
')


select * from  openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER = ''  E517963224'' 
')

/* IVERIZA004289.DAT
4289 32467.80 ZA
WIZ_FILE_SEQ_NUMBER
8617
*/

select DATA_DATE,* from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER IN 
(
''  E885673751''
)    
')	



select DATA_DATE,* from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER IN 
(
''  E514848563''
)
')


select DATA_DATE,* from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE CREDIT_CLUB_NUMBER  = ''4707241000982817''
')

-- the 4 hundred thousand duplicate transactions START ------------------------------------------------------
select DATA_DATE,* from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE CREDIT_CLUB_NUMBER  = ''4601841501066437'' and TRANSACTION_AMOUNT = 7746.41
')
--4268

select DATA_DATE,* from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE CREDIT_CLUB_NUMBER  = ''4228250060816054'' and TRANSACTION_AMOUNT = 3512.63 
')

-- the 4 hundred thousand duplicate transactions END ------------------------------------------------------






select 'RA search in credit clubs : '
select * from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER IN 
(
  ''  E514276151'',
  ''  E513688350'',
  ''  E189556651''
)
')



-- NULL ENTRY_TIME means that DATAUPD hasn't run on it yet
select STATUS_STAGE,ENTRY_TIME,* from openquery(TRACCS, '
SELECT * FROM CLAIMS_REGISTER_P WHERE  PERIOD_CCYYPP = ( select PERIOD from GETCCYYPP ) {maxrows 10000}
order by ISN_CLAIMS_REGISTER_P desc
')

-- The CASE statement is the closest to IF in SQL and is supported on all versions of SQL Server
select CASE WHEN DATEADD(DAY, 2, TRIGGER_ALTER_TIME) = DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0) THEN 'DONE' ELSE 'NOT DONE' END from openquery(TRACCS, '
SELECT TRIGGER_ALTER_TIME FROM TRIGGER_VIEW WHERE TRIGGER_KEY = ''CONTROL'' AND TRIGGER_JOB_NAME = ''ERFDONE'' AND AVIS_COMP_CODE = ''AV''
')


select *,'<-- 2 days ago ERFDONE' from openquery(TRACCS, '
SELECT TRIGGER_ALTER_TIME FROM TRIGGER_VIEW WHERE TRIGGER_KEY = ''CONTROL'' AND TRIGGER_JOB_NAME = ''ERFDONE'' AND AVIS_COMP_CODE = ''AV''
')



--GET CURRENT PERIOD (Includes up to 3rd of the month):
select * from openquery(TRACCS, '
select PERIOD from GETCCYYPP
)
')

select * from openquery(TRACCS, '
select MONTHNAME from GETMONTHNAME
)
')



-- THE NEW CREDIT CLUB MESS :
select * from openquery(TRACCS, '
select COUNT(*),SUM(TRANSACTION_AMOUNT),INTERNAL_TAPE_SEQ_NO,CREDIT_CLUB_CODE,AVIS_COMP_CODE, WIZ_FILE_SEQ_NUMBER,DATA_DATE,PROCESSED_IND,ENTRY_TIME from CCS_DETAIL_FILE {usekey 3} 
where PERIOD_CCYYPP >=  ''211806'' 
AND AVIS_COMP_CODE IN (''ZA'',''B0'')
AND INTERNAL_TAPE_SEQ_NO = 4268
ORDER BY DATA_DATE,INTERNAL_TAPE_SEQ_NO
')
/*
4472	8346502.03
*/

select * from openquery(TRACCS, '
select COUNT(*),SUM(TRANSACTION_AMOUNT),INTERNAL_TAPE_SEQ_NO,CREDIT_CLUB_CODE,AVIS_COMP_CODE, WIZ_FILE_SEQ_NUMBER,DATA_DATE,PROCESSED_IND,ENTRY_TIME from CCS_DETAIL_FILE {usekey 3} 
where PERIOD_CCYYPP >=  ''211806'' 
AND AVIS_COMP_CODE IN (''ZA'',''B0'')
AND INTERNAL_TAPE_SEQ_NO = 4268 AND SERVICE_CODE = ''''
ORDER BY DATA_DATE,INTERNAL_TAPE_SEQ_NO
')
/*
4457	8259763.99
*/


select 'CO2 EMMISSIONS ON FLEET_MASTER_FILE ORDERED (Roughly 16000 the fleet have been provided CO2 emmissions out of 30000) :'
select * from openquery(TRACCS, '
SELECT FLEET_MASTER_VIEW.SHIPMENT_DATE,FLEET_MASTER_VIEW.REGISTRATION_NO,FLEET_MASTER_VIEW.CO2_EMISSION FROM FLEET_MASTER_VIEW 
WHERE FLEET_MASTER_VIEW.VEHICLE_STATUS IN (''A'',''E'') AND NAMIBIAN_YB IS NULL
ORDER BY FLEET_MASTER_VIEW.CO2_EMISSION , FLEET_MASTER_VIEW.SHIPMENT_DATE
')

select * from openquery(TRACCS, '
SELECT * FROM FLEET_MASTER_VIEW WHERE MVA_NUMBER = 858320
')



-- Awesome period calculation to check if the STATUS_CHANGE_TIME is correct :
/*
select * from openquery(TRACCS, '
select 
''21''
+
convert((
case when SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2) + 3 > 12
then
SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),3,2) + 1
else
SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),3,2)
end
),char(2))
+
CASE WHEN 
(
CASE WHEN SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2) + 3 > 12 then (SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2)) + 3 -12 ELSE SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2) + 3   END
< 10
)
then
(
''0'' + convert((CASE WHEN SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2) + 3 > 12 then (SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2)) + 3 -12 ELSE SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2) + 3   END),char)
)
else
(
convert((CASE WHEN SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2) + 3 > 12 then (SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2)) + 3 -12 ELSE SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2) + 3   END),char(2))
)
end
,
convert(STATUS_CHANGE_TIME, DATE),* from 

fleet_status_view
where 
''21''
+
convert((
case when SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2) + 3 > 12
then
SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),3,2) + 1
else
SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),3,2)
end
),char(2))
+
CASE WHEN 
(
CASE WHEN SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2) + 3 > 12 then (SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2)) + 3 -12 ELSE SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2) + 3   END
< 10
)
then
(
''0'' + convert((CASE WHEN SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2) + 3 > 12 then (SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2)) + 3 -12 ELSE SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2) + 3   END),char)
)
else
(
convert((CASE WHEN SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2) + 3 > 12 then (SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2)) + 3 -12 ELSE SUBSTRING(convert(convert(STATUS_CHANGE_TIME, DATE),Char(12)),6,2) + 3   END),char(2))
)
end
<> PERIOD_CCYYPP AND VEHICLE_STATUS = ''E''
ORDER BY convert(STATUS_CHANGE_TIME, DATE)
')
*/









/*
select * from openquery(TRACCS, '
SELECT * FROM SAA_IN_DETAIL
')


select * from openquery(TRACCS, '
SELECT * FROM BASE_MILES where rate_code = '  '
order by RATE_CODE
')

select * from openquery(TRACCS, '
SELECT * FROM BASE_MILES_AUD
')

*/


-- CLAIMS MISTAKES-----------------START :
select 'CLAIMS MISTAKES closed with handler:'
select STATUS_STAGE,HANDLER,ENTRY_TIME,FINALISED_DATE,* from openquery(TRACCS, '
SELECT * FROM CLAIMS_REGISTER_P WHERE  PERIOD_CCYYPP = ( select PERIOD from GETCCYYPP ) 
AND STATUS_STAGE = ''99''  AND HANDLER IS NOT NULL
order by ISN_CLAIMS_REGISTER_P desc
')

select STATUS_STAGE,HANDLER,ENTRY_TIME,FINALISED_DATE,* from openquery(TRACCS, '
SELECT * FROM CLAIMS_REGISTER_P WHERE  PERIOD_CCYYPP = ( select PERIOD from GETCCYYPP ) 
AND STATUS_STAGE = ''99'' AND FINALISED_DATE IS NULL
order by ISN_CLAIMS_REGISTER_P desc
')

select STATUS_STAGE,HANDLER,ENTRY_TIME,FINALISED_DATE,* from openquery(TRACCS, '
SELECT * FROM CLAIMS_REGISTER_P WHERE  PERIOD_CCYYPP = ( select PERIOD from GETCCYYPP ) 
AND STATUS_STAGE <> ''99'' AND FINALISED_DATE IS NOT NULL
order by ISN_CLAIMS_REGISTER_P desc
')
-- CLAIMS MISTAKES-----------------END



/*
858320 1 CA864743  
*/






--Riaan L :
/*
select * from openquery(TRACCS, '
select fleet_master_view.MVA_NUMBER,REGISTRATION_NO , ENGINE_NUMBER, CHASSIS_NUMBER,    MANUFACTURER_VIEW.SHORT_DESCRIPTION s,fleet_master_view.MANUFACTURER_CODE,AVIS_MODEL_CODE_VIEW.SHORT_DESCRIPTION ,AVIS_MODEL_CODE_VIEW.LONG_DESCRIPTION ,fleet_master_view.SHIPMENT_DATE ,WIZARD_COLOUR_VIEW.WIZARD_COLOUR_CODE, FLEET_STATUS_VIEW.STATUS_CHANGE_TIME from fleet_master_view 
LEFT JOIN AVIS_MODEL_CODE_VIEW ON FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE
LEFT JOIN MANUFACTURER_VIEW ON FLEET_MASTER_VIEW.MANUFACTURER_CODE = MANUFACTURER_VIEW.MANUFACTURER_CODE 
LEFT JOIN WIZARD_COLOUR_VIEW ON FLEET_MASTER_VIEW.WIZARD_COLOUR_CODE = WIZARD_COLOUR_VIEW.WIZARD_COLOUR_CODE 
LEFT JOIN FLEET_STATUS_VIEW ON FLEET_STATUS_VIEW.MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER
where MANUFACTURER_KEY = ''M'' AND FLEET_STATUS_VIEW.VEHICLE_STATUS = ''A''
')
*/

/* 01:57 seconds */




select DATA_DATE,* from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER IN 
(
''  E514848563''
)
')

/*
INTERNAL_TAPE_SEQ_NO
2242
*/
select DATA_DATE,* from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE INTERNAL_TAPE_SEQ_NO IN(2206,2242) AND DATA_DATE > ''2017-06-01''
')


select DATA_DATE,* from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE INTERNAL_TAPE_SEQ_NO = 2206 AND DATA_DATE > ''2017-06-01'' 
')


select DATA_DATE,* from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER IN 
(
''  E802005455'', /* --> 2272 */
''  E802005363'', /* -->-- its there on 2265 */ 
''	E514849300''
)
')


--order no 7632 HF79MDGP  
select STATUS_CHANGE_TIME,* from openquery(TRACCS, '
select * from FLEET_MASTER_VIEW WHERE MVA_NUMBER = ''855312'' 
')
-- INCORRECT CARS :
--#VATBACK
--select * from openquery(TRACCS, '
--select * from fl_order_item_aud WHERE order_no = 7633
--')

-- HYUNDAI and its actually a FORD ?
select MANUFACTURER_CODE,* from openquery(TRACCS, '
select * from fleet_master_view where registration_No = ''HG12XVGP''
')
--MVZ NUMBER : 1185132



--NNNNBBBB TO FIND ALL CAR RELATED INFORMATION FROM THE RA :
------------------------------------------------------------
select * from openquery(TRACCS, '
SELECT RA_MAINT_VIEW.RA_NUMBER , VENDOR_NO , CAR_MOVEMENT_VIEW2.MVA_NUMBER ''CAR_MOVEMENT_VIEW2.MVA_NUMBER'',  FLEET_MASTER_VIEW.MVA_NUMBER ,FLEET_MASTER_VIEW.REGISTRATION_NO  , FLEET_MOVEMENT.MVA_NUMBER  ''FLEET_MOVEMENT.MVA_NUMBER'', FLEET_MASTER_VIEW.FLEET_MODEL_CODE , AVIS_MODEL_CODE_VIEW.WIZARD_MODEL_CODE , ''<---should be the same--->'' , FLEET_MOVEMENT.VEH_MAKE_MODEL_CODE ,FLEET_MOVEMENT.VEH_MAKE_MODEL_DESC , FLEET_MOVEMENT.VEHICLE_LICENCE_NUMBER , FLEET_MOVEMENT.FLT_VEH_IDENT_NUMBER FROM RA_MAINT_VIEW 
LEFT JOIN CAR_MOVEMENT_VIEW2 ON CAR_MOVEMENT_VIEW2.RA_NUMBER = RA_MAINT_VIEW.RA_NUMBER 
LEFT JOIN FLEET_MASTER_VIEW ON FLEET_MASTER_VIEW.MVA_NUMBER = CAR_MOVEMENT_VIEW2.MVA_NUMBER
LEFT JOIN AVIS_MODEL_CODE_VIEW ON FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE
LEFT JOIN FLEET_MOVEMENT ON FLEET_MOVEMENT.MVA_NUMBER = CAR_MOVEMENT_VIEW2.MVA_NUMBER  
WHERE  RA_MAINT_VIEW.RA_NUMBER = ''123123123''
')

--NNNNBBBB TO FIND ALL CAR RELATED INFORMATION FROM THE REG or MVA :
-------------------------------------------------------------------
select * from openquery(TRACCS, '
select fleet_master_view.*,AVIS_MODEL_CODE_VIEW.SHORT_DESCRIPTION as a ,AVIS_MODEL_CODE_VIEW.LONG_DESCRIPTION as b,AVIS_MODEL_CODE_VIEW.MANUFACTURER_CODE as c , AVIS_MODEL_CODE_VIEW.WIZARD_MODEL_CODE , ''<---should be the same--->'' , FLEET_MOVEMENT.VEH_MAKE_MODEL_CODE , VEH_MAKE_MODEL_DESC  from fleet_master_view 
LEFT JOIN AVIS_MODEL_CODE_VIEW ON FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE
LEFT JOIN FLEET_MOVEMENT ON FLEET_MOVEMENT.MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER 
where fleet_master_view.registration_No = ''HG12XVGP''
')

-----------------WHERE FLEET_MOVEMENT.VEH_MAKE_MODEL_CODE <> WIZARD_MODEL_CODE :
/*
select * from openquery(TRACCS, '
select fleet_master_view.*,AVIS_MODEL_CODE_VIEW.SHORT_DESCRIPTION as a ,AVIS_MODEL_CODE_VIEW.LONG_DESCRIPTION as b,AVIS_MODEL_CODE_VIEW.MANUFACTURER_CODE as c , AVIS_MODEL_CODE_VIEW.WIZARD_MODEL_CODE , ''<---should be the same--->'' , FLEET_MOVEMENT.VEH_MAKE_MODEL_CODE , VEH_MAKE_MODEL_DESC  from fleet_master_view 
LEFT JOIN AVIS_MODEL_CODE_VIEW ON FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE
LEFT JOIN FLEET_MOVEMENT ON FLEET_MOVEMENT.MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER 
WHERE FLEET_MOVEMENT.VEH_MAKE_MODEL_CODE <> WIZARD_MODEL_CODE
ORDER BY STATUS_CHANGE_TIME DESC
')
*/
--1679





--select CAR_RENTAL_GROUP,* from FLEET_MASTER_VIEW where fleet_model_code = 'J11'

select AVIS_UPPER_MVA_1 -AVIS_LAST_MVA_1 'CARS LEFT!!!!!!!',AVIS_LOWER_MVA_1,AVIS_UPPER_MVA_1,AVIS_LAST_MVA_1, AVIS_LAST_MVA_1%7 ' mod 7 : MOD(X,7) doesnt exist in t-SQL so use %',* from openquery(TRACCS, '
select * from CONTROL_FILE_VIEW_FLAT where CONTROL_CODE = 99 AND MVA_RECORD_YB = ''Y'' AND AVIS_COMP_CODE = ''AV''
')

select AVIS_UPPER_MVA_2 -AVIS_LAST_MVA_2 'CARS LEFT!!!!!!!',AVIS_LOWER_MVA_2,AVIS_UPPER_MVA_2,AVIS_LAST_MVA_2, AVIS_LAST_MVA_2%7 'MOD(X,7) doesnt exist in t-SQL so use %',* from openquery(TRACCS, '
select * from CONTROL_FILE_VIEW_FLAT where CONTROL_CODE = 99 AND MVA_RECORD_YB = ''Y'' AND AVIS_COMP_CODE = ''AV''
')

select AVIS_UPPER_MVA_3 -AVIS_LAST_MVA_3 'CARS LEFT!!!!!!!',AVIS_LOWER_MVA_3,AVIS_UPPER_MVA_3,AVIS_LAST_MVA_3, AVIS_LAST_MVA_3%7 'MOD(X,7) doesnt exist in t-SQL so use %',* from openquery(TRACCS, '
select * from CONTROL_FILE_VIEW_FLAT where CONTROL_CODE = 99 AND MVA_RECORD_YB = ''Y'' AND AVIS_COMP_CODE = ''AV''
')

select * from openquery(TRACCS, '
SELECT * FROM RA_MAINT_VIEW WHERE RA_NUMBER = ''963473361''
')

select * from openquery(TRACCS, '
SELECT * FROM RA_OPEN_FILE WHERE RA_NUMBER = ''802059985'' and avis_comp_code = ''AV'' and RA_RECORD_TYPE = 1
')


--NNNNBBBB TO FIND ALL CAR RELATED INFORMATION FROM THE RA :
------------------------------------------------------------
select * from openquery(TRACCS, '
SELECT RA_MAINT_VIEW.RA_NUMBER , VENDOR_NO , CAR_MOVEMENT_VIEW2.MVA_NUMBER ''CAR_MOVEMENT_VIEW2.MVA_NUMBER'',  FLEET_MASTER_VIEW.MVA_NUMBER ,FLEET_MASTER_VIEW.REGISTRATION_NO  , FLEET_MOVEMENT.MVA_NUMBER  ''FLEET_MOVEMENT.MVA_NUMBER'', FLEET_MASTER_VIEW.FLEET_MODEL_CODE , AVIS_MODEL_CODE_VIEW.WIZARD_MODEL_CODE , ''<---should be the same--->'' , FLEET_MOVEMENT.VEH_MAKE_MODEL_CODE ,FLEET_MOVEMENT.VEH_MAKE_MODEL_DESC , FLEET_MOVEMENT.VEHICLE_LICENCE_NUMBER , FLEET_MOVEMENT.FLT_VEH_IDENT_NUMBER FROM RA_MAINT_VIEW 
LEFT JOIN CAR_MOVEMENT_VIEW2 ON CAR_MOVEMENT_VIEW2.RA_NUMBER = RA_MAINT_VIEW.RA_NUMBER 
LEFT JOIN FLEET_MASTER_VIEW ON FLEET_MASTER_VIEW.MVA_NUMBER = CAR_MOVEMENT_VIEW2.MVA_NUMBER
LEFT JOIN AVIS_MODEL_CODE_VIEW ON FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE
LEFT JOIN FLEET_MOVEMENT ON FLEET_MOVEMENT.MVA_NUMBER = CAR_MOVEMENT_VIEW2.MVA_NUMBER  
WHERE  RA_MAINT_VIEW.RA_NUMBER = ''248907050'' AND MOVEMENT_TYPE = ''O''
')




-----------------------------VEHICLE EXCHANGES IN TRACCS----------------------START
--select VRV_RENTAL_YB,VRV_NO,* from openquery(TRACCS, '
--SELECT * FROM RA_MAINT_VIEW WHERE RA_NUMBER = ''890402973''
--')
/*
RENTING_STATION
1431
BILLING_CHECK_OUT_DATE
2017-11-08
*/


/*
VRV_RENTAL_YB
Y
*/
--select * from openquery(TRACCS, '
--SELECT * FROM CAR_MOVEMENT_VIEW WHERE RA_NUMBER = ''890402973''
--')
--select * from openquery(TRACCS, '
--SELECT * FROM CAR_MOVEMENT_VIEW WHERE RA_NUMBER = ''89040297302''
--')
/* 
STATION_CODE	MOVEMENT_TIME
1431	2017-11-08 09:11:00.0000000
*/
-----------------------------VEHICLE EXCHANGES IN TRACCS----------------------END




















-- STATION CASH :
--0010 ******************************************************************
--0020 * PC TRACCS   :  REDV07P
--0030 * ERF FILE    :  RECORD TYPE 10
--0040 ******************************************************************
--0050 * NOTE: This program is commanly used by Namibia en RSA processing
--0060 ******************************************************************
--0070 * DESCRIPTION :  CASH REPORT PRT STATION DAILY
--0080 * PETRO STEYN     010195
--0090 ******************************************************************

-- Reported on with MPSCASH
/*
select * from openquery(TRACCS, '
select * from DAILY_CASH WHERE AVIS_COMP_CODE = ''BU''
')
*/








--- The problem
/*
select last_payment_date_end,installation_date from fleet_master_view , lease_advice
where LEASE_ADVICE.MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER AND
(LEASE_ADVICE.LAST_PAYMENT_DATE_END <>  FLEET_MASTER_VIEW.INSTALLATION_DATE AND LEASE_ADVICE.LAST_PAYMENT_DATE_END <> timestampadd(SQL_TSI_DAY, 1, FLEET_MASTER_VIEW.INSTALLATION_DATE)) AND
(LEASE_ADVICE.LAST_PAYMENT_DATE_END = FLEET_MASTER_VIEW.SHIPMENT_DATE )
*/








--select * from openquery(TRACCS, '
--select * from lease_advice_flat
--')

-- for Michael :
--select * from openquery(TRACCSdev, '
--SELECT * FROM CAR_MOVEMENT_VIEW where  MOVEMENT_TYPE =''I'' AND MVA_NUMBER = (select MVA_NUMBER from fleet_master_view where registration_No = ''CA702313'')
--order by movement_time
--')

--select * from openquery(TRACCSdev, '
--select * from fleet_master_view where registration_No = ''CA702313''
--')
/*17088816
U	2017-11-20 00:00:00.2000000
*/

select * from openquery(TRACCS, '
select * from CCS_TAPE_SEQ_FILE WHERE TAPE_ID_CODE = ''WZ'' and AVIS_COMP_CODE IN (''ZA'',''SW'',''B0'',''B1'')
')
/*
ISN_CCS_TAPE_SEQ_FILE	AVIS_COMP_CODE	TAPE_ID_CODE	INT_TAPE_SEQ_NO	TAPE_RUN_DATE	SP_COMP_TAPE_ID
2	ZA	WZ	8460	171128	ZAWZ
1	SW	WZ	8453	171121	SWWZ
52	B0	WZ	1025	171121	B0WZ
56	B1	WZ	1025	171121	B1WZ
*/


--update openquery(TRACCSQA, '
--select * from ccs_TAPE_sEQ_FILE where TAPE_ID_CODE = ''WZ'' and AVIS_COMP_CODE = ''ZA''
--') set INT_TAPE_SEQ_NO = 8453
--(1 row(s) affected)


--select * from openquery(TRACCSQA, '
--select * from CCS_DETAIL_FILE WHERE PROCESSED_IND = ''NO''
--')


--delete openquery(TRACCSQA, '
--select * from CCS_DETAIL_FILE WHERE PROCESSED_IND = ''NO''
--')




-- For Riaans Meeting (inventory system) looks like its just the ONE table:
select BIN_NUMBER,* from openquery(TRACCS, '
SELECT * FROM LICREG_DOC_VIEW WHERE BIN_NUMBER = ''I17/1''  
')
-- NEED MVA_NUMBER , REQUEST_REASON , RE_NUMBER
-- thee can't be 169400 bins ? - many entires for the same bin
--DOC_RECEIVED_DATE ?
--DOC_INDEX_NO ?


--------------MY TRAFFIC OFFENSE ????????????????????????????????????????????????DAte of offense : June 3rd 7017 
select REGISTRATION_NO,VEHICLE_STATUS,FLEET_MODEL_CODE,IGNITION_KEY,TRUNK_KEY,NAMIBIAN_YB,PUC_ASSET_SOLD,PUC_USER_ID,PUC_ADD_SOLD_TIME,* from openquery(TRACCS, '
select * from fleet_master_view where REGISTRATION_NO = ''CL32TVGP''
order by status_change_time
')
/*
VEHICLE_STATUS	STATUS_CHANGE_TIME
U				2013-05-08 00:00:00.2000000
TURNBACK_DATE
2014-04-07
*/


-- my staff cars : Golf VII 1.4 TSI Auto
select * from openquery(TRACCS, '
select REGISTRATION_NO,VEHICLE_STATUS,fleet_master_view.FLEET_MODEL_CODE,SHORT_DESCRIPTION,LONG_DESCRIPTION,IGNITION_KEY,TRUNK_KEY,NAMIBIAN_YB,PUC_ASSET_SOLD,PUC_USER_ID,PUC_ADD_SOLD_TIME from fleet_master_view join AVIS_MODEL_CODE_VIEW on fleet_master_view.FLEET_MODEL_CODE =  AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE where IGNITION_KEY = ''KIERAN''
order by status_change_time
')




--RACDCISVDFLOWC\IIS_IUSRS
--C:\Documents and Settings\All Users\Application Data\Microsoft\Crypto\RSA\MachineKeys


--Does 17/655322 17/655096 lee stone 

--CClaim lookup : 

select * from openquery(TRACCS, '
SELECT *  FROM CLAIMS_REGISTER WHERE CLAIM_NO IN (''17/655095'',''17/655322'',''17/655096'',''17/69206'') 
')



select * from openquery(TRACCS, '
SELECT *  FROM TRIGGER_VIEW WHERE TRIGGER_KEY = ''CONTROL''
')

select * from openquery(TRACCS, '
SELECT *  FROM TRIGGER_VIEW WHERE TRIGGER_KEY = ''CONTROL'' AND TRIGGER_JOB_NAME = ''ERFZA''
')



-- NEW QUERY PERFECTioN  (SC) CARD NOT PRESENT :
select 'NNNNNNNNNBBBBBBBBBBBBBBBBB: (COMES INTO THE BANK ACCOUNT SPLIT BETWEEN CARD TYPES LIKE THIS) MY NEW PERFECT QUERY for includint splitting SERVICE_CODE CARD PRESENT THING :' 
select * from openquery(TRACCS, '
select CASE WHEN SERVICE_CODE <> '''' THEN ''PRESENT'' ELSE ''NOT PRESENT'' END CARD_PRESENT,SUM(TRANSACTION_AMOUNT),INTERNAL_TAPE_SEQ_NO,CASE WHEN CREDIT_CLUB_CODE IN (''CX'',''CM'') THEN ''CMCX'' ELSE CREDIT_CLUB_CODE END CARD_CODE,      CASE WHEN AVIS_COMP_CODE IN (''ZA'',''B0'') THEN ''ZA'' CASE WHEN  AVIS_COMP_CODE IN (''SW'',''B1'') THEN ''SW'' ELSE AVIS_COMP_CODE END END COMP_CODE  , WIZ_FILE_SEQ_NUMBER,DATA_DATE,PROCESSED_IND,ENTRY_TIME from CCS_DETAIL_FILE {usekey 3} where PERIOD_CCYYPP >=  ( select PERIOD from GETCCYYPP )  
 AND AVIS_COMP_CODE IN (''ZA'',''B0'',''SW'',''B1'') 
/* AND AVIS_COMP_CODE = ''B1'' */
/* AND SUM(TRANSACTION_AMOUNT) = 2298.08 */
GROUP BY  CARD_CODE,COMP_CODE,DATA_DATE,INTERNAL_TAPE_SEQ_NO,CARD_PRESENT
ORDER BY DATA_DATE,INTERNAL_TAPE_SEQ_NO
')




-- Active fleet 


/*
How to Use the Public Folder
-----------------------------
The main use for this folder is to quickly share files and folders between user accounts on the same computer or with other computers and devices on the network.
Using the Public folder is a matter of choice and personal style. 
I prefer not to use it but this doesn't mean it cannot come in handy. 
For example, if you have multiple people using the same computer, each person with his own user account, you can use the Public folder to share files between all these user accounts. 
Everything you place inside this folder will be accessible to all the other user accounts. : ITS THE STUFF THAT GOES ON THE DESKTOP OF EVEYONE
----------------------------------------------------------------------------------------------------------------------------------------------
Each of you can make edits to any file and, once saved, they are available to all other user accounts.
The Public folder can also be used for sharing files with other computers on your network. If you choose to share this folder, other computers can access its contents. This can be useful especially when sharing files with non-Microsoft operating systems. Since you cannot have them join the Homegroup, for easy sharing, the Public folder works quickly and without any special setup.
*/



--ToDo :
-- PErformance of HQrefunds :
-- MVA recycling :
-- robot
-- charge

-- http://aviszwakala.avis.co.za/Operations/SitePages/Dashboard.aspx audit trail can be found here Agent Audit Trail - Checked In RA
-- RFLR72P1 (ZA FLEETREG):
--2540 READ FLEET-MASTER-VIEW BY ISN /*BY SP-RSA-FLEET-MVA /* TAKE OUT (5000)
--2550 *
--2560   IF L1.NAMIBIAN-YB NE ' '             /* South Africa ONLY
--2570     ESCAPE TOP
--2580   END-IF
--2590 *
--2600   IF L1.AVIS-COMP-CODE NE +CO-COMP-CODE     OR
--2610       L1.PERIOD-CCYYPP  NE +CO-PERIOD-CCYYPP OR
--2620       L1.NON-POOL       NE ' '
--2630     ESCAPE TOP
--2640   END-IF
--  where does the period come from ?
-- answer :
-- period gets updated if costed dirng that month
-- if the car is used/ turned back for the entire period then it wont be on the fleet register
/*
select namibian_yb,VEHICLE_STATUS,status_change_time,period_ccyypp,* from openquery(TRACCS, '
select * from fleet_master_view where period_ccyypp <> ''211712'' and namibian_yb is null
order by status_change_time
')

select namibian_yb,VEHICLE_STATUS,status_change_time,period_ccyypp,* from openquery(TRACCS, '
select * from fleet_master_view where period_ccyypp = ''211712'' and namibian_yb is null
order by status_change_time
')



--- 
select * from openquery(TRACCS, '
SELECT * FROM CAR_MOVEMENT_VIEW where  MOVEMENT_TYPE =''I'' AND MVA_NUMBER = (select MVA_NUMBER from fleet_master_view where registration_No = ''FN55KJGP'')
order by movement_time
')

/*
STATION_CODE	MOVEMENT_TIME	KM_READING	ENTRY_TIME
7013	2017-08-31 16:34:05.0000000	32035	2017-09-02 09:34:01.8000000
7097	2017-09-05 10:00:05.0000000	32104	2017-09-07 09:15:55.9000000
7013	2017-09-30 10:30:05.0000000	32106	2017-10-02 10:11:30.6000000
*/


*/

/*
FETCH RETURN 'FCASH01U'      -- Update Fleet masterview.Wiz-delivery-date from Fleet-movement
0010 *******************************************************************
0020 * PETRO       JUN 2016 UPDATE WIZ-DELIVERY-DATE FROM FLEET-MOVEMENT
0030 *******************************************************************
0380     IF R01.MVA-NUMBER NE R02.MVA-NUMBER           -- GET THE MATCHING MVA-NUMBER ON FLEET-MASTER
0390       ESCAPE BOTTOM
0400     END-IF
0410 *    
0420     DECIDE ON FIRST VALUE OF R02.VEHICLE-STATUS   -- ONLY UPDATE VEHICLE-STATUS A,E,U
0430       VALUE 'A' , 'E' , 'U'
0440         IGNORE
0450       NONE VALUE
0460         ESCAPE BOTTOM
0470     END-DECIDE
*/
SELECT 'THE Wiz_delivery_date BEING UPDATED from VEHICLE_DELIVERY_DATE :'
select * from openquery(TRACCS, '
SELECT Wiz_delivery_date Wiz_delivery_datex , VEHICLE_DELIVERY_DATE VEHICLE_DELIVERY_DATEx , INSTALLATION_DATE  INSTALLATION_DATEx , VEH_MAKE_MODEL_CODE VEH_MAKE_MODEL_CODEx,FLEET_MASTER_VIEW.VEHICLE_STATUS FLEET_MASTER_VIEW_VEHICLE_STATUS , NAMIBIAN_YB NAMIBIAN_YBx , FLEET_MOVEMENT.*, FLEET_MASTER_VIEW.INSTALLATION_DATE
from FLEET_MASTER_VIEW LEFT JOIN FLEET_MOVEMENT ON FLEET_MASTER_VIEW.MVA_NUMBER = FLEET_MOVEMENT.MVA_NUMBER 
WHERE FLEET_MOVEMENT.MVA_NUMBER IS NOT NULL
AND NAMIBIAN_YB IS NULL AND FLEET_MASTER_VIEW.VEHICLE_STATUS IN (''A'',''E'',''U'')
and (convert (SUBSTRING(VEHICLE_DELIVERY_DATE,7,4) + ''/'' +  SUBSTRING(VEHICLE_DELIVERY_DATE,4,2) + ''/'' +   SUBSTRING(VEHICLE_DELIVERY_DATE,1,2) date)) <> Wiz_delivery_date
ORDER BY VEHICLE_DELIVERY_DATE DESC
')


-- Does the installation date ever get backdated in TRACCS ? check audit report ?

-- ERFdaily requirements :
--\\racfs.abgza.co.za\vol2\DATA\TFRERF
--\\racfs.abgza.co.za\vol2\DATA NOOOOOOOOO!!!! its actually \\racfs.abgza.co.za\vol2\DATA\TFRACC

--Credit Clubs run requirements :
-- \\racfs.abgza.co.za\vol2\DATA\TFRCLUBS

--Daniel\Lucsa machine :
--\\Vmisfracerf1\c$\natreports
--HQrefund gets written here 
--\\blisfflowcrac\Source file
--select 'hqrefund CSV gets dumped here (By Daniel or Jabu):','\\blisfflowcrac\c$\FlowCentric Directory Watcher Actions\HQ Refunds\7511\Source file heres the actual share \\blisfflowcrac\Source file' 
--select 'hqrefund CSV gets moved here:','\\blisfflowcrac\c$\FlowCentric Directory Watcher Actions\HQ Refunds\7511\Archive File' , 'Actual Share' , '\\blisfflowcrac\Archive File' 


--PASSING PARAMETERS WITH OPENQUERY \ PASSING PARAMETERS WITH LINKED SERVER NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB :
/*
IF OBJECT_ID('tempdb..##TraccsResults') IS NOT NULL DROP TABLE ##TraccsResults

DECLARE @date AS DATE,
              @query AS VARCHAR(8000)

SET @date = GETDATE()
SET @query = '
SELECT * 
INTO ##TraccsResults
FROM OPENQUERY(TRACCSQA,
''SELECT U.USER_NAME, F.* 
FROM FLEET_MASTER_OLD F
JOIN TRACCS_USER U ON F.AUDIT_USER = U.USER_ID
WHERE CONVERT(F.AUDIT_TIME DATE) >= timestampadd(SQL_TSI_WEEK, -1, CURRENT_DATE())
AND CONVERT(F.AUDIT_TIME DATE) <= CONVERT(''''' + CONVERT(VARCHAR(30),@date, 111) + ''''' DATE)'')'

PRINT @query

EXEC(@query)

SELECT * FROM ##TraccsResults
*/



--Jacues Weeekly fleet changes / audit trail 17 OCT 2017

--INFONAUT VERSION :
/*

SELECT U.USER_NAME, F.* 
FROM FLEET_MASTER_OLD F
JOIN TRACCS_USER U ON LTRIM(RTRIM(F.AUDIT_USER)) = LTRIM(RTRIM(U.USER_ID))
WHERE CONVERT(AUDIT_TIME DATE) >= timestampadd(SQL_TSI_WEEK, -1, CURRENT_DATE())
AND CONVERT(AUDIT_TIME DATE) <= CURRENT_DATE()


--OPENQUERY VERSION :

select * from openquery(TRACCS, '
SELECT U.USER_NAME, F.* 
FROM FLEET_MASTER_OLD F
JOIN TRACCS_USER U ON LTRIM(RTRIM(F.AUDIT_USER)) = LTRIM(RTRIM(U.USER_ID))
WHERE CONVERT(AUDIT_TIME DATE) >= timestampadd(SQL_TSI_WEEK, -1, CURRENT_DATE())
AND CONVERT(AUDIT_TIME DATE) <= CURRENT_DATE()
/* AND U.USER_NAME <> ''Lucas Zwane'' */
')
*/


/*
"C:\Users\kieran.swanepoel\Dropbox\Sample of csv. data supplied to Diners(Diners data matching)"
*/
--we only get ZA invoice files : do they have the transactions ?
--epzainvd###.zip			G####v00		inv###.dat			h:\data\tfrinv
--\\racfs.abgza.co.za\vol2\DATA\TFRINV

-- Diners transactions :
select AVIS_COMP_CODE,ERF_COUNTRY,VENDOR_NO,STATION_VENDOR,REMARKS,GROSS_T_AND_M,NETT_T_AND_M,TOTAL_CHARGE,NETT_CHARGE,AMOUNT_DUE,* from openquery(TRACCS, '
SELECT * FROM RA_MAINT_VIEW WHERE RA_NUMBER = ''513500142''
')




--club290.bw
--club290.mz
--club290.zb
--club6622.sw
--club6622.za
-- which countries get loaded ?:
/*
select * from openquery(TRACCS, '
SELECT DISTINCT ERF_COUNTRY , FROM RA_MAINT_VIEW  WHERE PERIOD_CCYYPP = ''211712''
')
*/
/*
ERF_COUNTRY
BW
SW
ZA
*/

/*
RA-MAINT-VIEW(118):
This file stores all local vendors eg A10000 A10013 with AVIS_COMP_CODE = ‘AV’
The only other countries included are :
SW and BW 
INVOICE_DATE is the date of that days ERF data 100% correct – so it should be the date it will appear on the CCS-DETAIL file  

RA is indexed so we can do this:
SELECT * FROM RA_MAINT_VIEW WHERE RA_NUMBER = '273054924'
But BOTSWANA :
SELECT VENDOR_NO ,* FROM RA_MAINT_VIEW WHERE AVIS_COMP_CODE = 'BW' AND PERIOD_CCYYPP = '210801'
Monthend prints it with RMON01B1 
Or
SELECT * FROM RA_MAINT_VIEW WHERE RA_NUMBER = '211444995'  AND AVIS_COMP_CODE = 'BW' AND RA_RECORD_TYPE = '1'
And ZAMBIA:
SELECT REMARKS,* FROM RA_MAINT_VIEW WHERE PERIOD_CCYYPP = '210903' AND AVIS_COMP_CODE = 'ZB'


--Undoing REDV06P3 (note I havent fixed the movements on these cars):
--DELETE openquery(TRACCS, '
--SELECT * FROM RA_MAINT_VIEW WHERE PERIOD_CCYYPP = ''211803'' AND AVIS_COMP_CODE = ''ZB''
--')



Query below ONLY returns BW and ZB rentals :
SELECT REMARKS,INVOICE_DATE,BATCH_DATE,VENDOR_NO ,* FROM RA_MAINT_VIEW WHERE AVIS_COMP_CODE <> 'AV' AND PERIOD_CCYYPP = '210907' ORDER BY REMARKS


Query to return only RAC ZA (A10000) rentals and for a particular day(used for GERT):
SELECT SUM(RENTAL_DAYS_CNT),REMARKS,INVOICE_DATE,BATCH_DATE,VENDOR_NO ,* FROM RA_MAINT_VIEW WHERE AVIS_COMP_CODE = 'AV' AND PERIOD_CCYYPP = '210908' AND VENDOR_NO = 'A10000' AND REMARKS= 'ERF4068.ZA' ORDER BY REMARKS
/* 11925 days */
/*RMON01XZ = 11943 */

Using remarks to get a specific day :
select RENTING_STATION,EXPECTED_RETURN_STATION,REMARKS,* from RA_MAInT_VIEW where PERIOD_CCYYPP = 211611 AND AVIS_COMP_CODE = 'AV' 
AND REMARKS = 'H:\DATA\TFRERF\ERF6727.ZA' AND RENTING_STATION = 2501


To get NAMIBIA RENTALS FOR THE MONTH ONLY:
SELECT VENDOR_NO ,* FROM RA_MAINT_VIEW WHERE AVIS_COMP_CODE = 'AV' AND PERIOD_CCYYPP = '211009' AND VENDOR_NO = 'SW0000' order by REMARKS
*/




-- AUTH DETAILS FOR GUGU AND :
-- why ??????
select DATA_DATE,* from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER IN 
(
''  E667641413''
)
')

select DATA_DATE,* from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER IN 
(
''  E513389236''
)
')

select DATA_DATE,* from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER IN 
(
''  E929030561''
)
')




-- check for tersia
--select DATA_DATE,* from openquery(TRACCS, '
--select * from CCS_DETAIL_FILE WHERE RA_NUMBER IN 
--(
--''  E442169895''
--)
--')

--select DATA_DATE,* from openquery(TRACCS, '
--select * from CCS_DETAIL_FILE WHERE RA_NUMBER IN 
--(
--''  E890086105''
--)
--')







/*
AVIS_COMP_CODE
ZA
WIZ_FILE_SEQ_NUMBER	EXPIRY_DATE	INTERNAL_TAPE_SEQ_NO
8484				NULL		4214
*/


-- another check for tersia 
/*
select DATA_DATE,* from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER IN 
(
''  E435169604''
)
')
*/

/*
2017-09-29
INTERNAL_TAPE_SEQ_NO
2417
ENTRY_TIME
2017-10-02 11:46:48.0000000
AVIS_COMP_CODE
RB
*/


/*
---I found the problem (the first character is a space in the DB):
 ZOUTENDYK,CINDY              
*/
--NNNNNNNNNNNNNNBBBBBBBBBBBBBBBBBBBBBBBB : The whole installation date issue is now resolved snd fixed with FLEETREP prog !!!!!!!!!!!!!!
--FIX RUN FOR MICHAEL on 10 OCT 2017 :
/*

select * from openquery(TRACCS, '
select PROCESSED_IND  PROCESSED_INDx,* from CCS_DETAIL_FILE WHERE WIZ_FILE_SEQ_NUMBER IN (983,8411) 
')


UPDATE openquery(TRACCS, '
SELECT * FROM CCS_DETAIL_FILE  WHERE WIZ_FILE_SEQ_NUMBER IN (983,8411) 
')
SET PROCESSED_IND = 'NO' , INTERNAL_TAPE_SEQ_NO = NULL
--(2189 row(s) affected)
*/


/*
841902	842211
841002	842218
841903	842222
841007	842220
841009	842219
841302	842207
*/





--TEST54T :
/*
Last MVA	1697266
Lower Limit	1682000
Upper Limit	1710000
*/
-- The entire history of MVA range ALLOCATION is AUDITED : select * from CONTROL_FILE_AUD_FLAT where AUDIT_KEY= 'MVA RANGES' AND AUDIT_TYPE = '113V5'

select AVIS_UPPER_MVA_1 -AVIS_LAST_MVA_1 'CARS LEFT!!!!!!!',AVIS_LOWER_MVA_1,AVIS_UPPER_MVA_1,AVIS_LAST_MVA_1, AVIS_LAST_MVA_1%7 'MOD(X,7) doesnt exist in t-SQL so use %',* from openquery(TRACCS, '
select * from CONTROL_FILE_VIEW_FLAT where CONTROL_CODE = 99 AND MVA_RECORD_YB = ''Y'' AND AVIS_COMP_CODE = ''AV''
')

select AVIS_UPPER_MVA_2 -AVIS_LAST_MVA_2 'CARS LEFT!!!!!!!',AVIS_LOWER_MVA_2,AVIS_UPPER_MVA_2,AVIS_LAST_MVA_2, AVIS_LAST_MVA_2%7 'MOD(X,7) doesnt exist in t-SQL so use %',* from openquery(TRACCS, '
select * from CONTROL_FILE_VIEW_FLAT where CONTROL_CODE = 99 AND MVA_RECORD_YB = ''Y'' AND AVIS_COMP_CODE = ''AV''
')

select AVIS_UPPER_MVA_3 -AVIS_LAST_MVA_3 'CARS LEFT!!!!!!!',AVIS_LOWER_MVA_3,AVIS_UPPER_MVA_3,AVIS_LAST_MVA_3, AVIS_LAST_MVA_3%7 'MOD(X,7) doesnt exist in t-SQL so use %',* from openquery(TRACCS, '
select * from CONTROL_FILE_VIEW_FLAT where CONTROL_CODE = 99 AND MVA_RECORD_YB = ''Y'' AND AVIS_COMP_CODE = ''AV''
')



/*
SELECT Registration_No,FLEET_MASTER_VIEW.MVA_NUMBER,SOLD_DATE
FROM PUC_MASTER_VIEW INNER JOIN
FLEET_MASTER_VIEW ON
PUC_MASTER_VIEW.MVA_NUMBER =
FLEET_MASTER_VIEW.MVA_NUMBER
*/
--old QA WDD2050402R292514 
--new WDD2050402R296532 
select * from openquery(TRACCS, '
select * from fleet_master_view where Registration_NO = ''FW86TNGP''
')
--   WBA8E36070NU80	FX98KMGP    
select * from openquery(TRACCS, '
select * from fleet_master_view where CHASSIS_NUMBER = ''WDD2050402R296532'' 
')

select * from openquery(TRACCS, '
select * from fleet_movement where VEHICLE_LICENCE_NUMBER = ''FX98KMGP''    
')

select * from openquery(TRACCS, '
select fleet_master_view.*,fleet_movement.FLT_VEH_IDENT_NUMBER from fleet_master_view LEFT JOIN fleet_movement on REGISTRATION_NO = VEHICLE_LICENCE_NUMBER
where RTRIM(LTRIM(CHASSIS_NUMBER)) = RTRIM(LTRIM(FLT_VEH_IDENT_NUMBER)) 
')   

select 'VIN CHASSIS DUPLICATION :'
select * from openquery(TRACCS, '
select * from fleet_master_view where CHASSIS_NUMBER IN (
select CHASSIS_NUMBER from fleet_master_view  
GROUP BY CHASSIS_NUMBER 
HAVING COUNT(CHASSIS_NUMBER) > 1
)
ORDER BY CHASSIS_NUMBER 
')

select 'Started running at : ',GETDATE()
--3554 
/*
select 'Duplicate Registration Numbers: '
select VEHICLE_STATUS,* from openquery(TRACCS, '
select * from fleet_master_view where REGISTRATION_NO IN
(
select REGISTRATION_NO  from fleet_master_view where REGISTRATION_NO not in (''NOT KNOWN'',''WO/NOTINST'')
GROUP BY REGISTRATION_NO 
Having count(*) > 1 
)
')
*/

select 'TRACCS user audit table:'
select * from openquery(TRACCS, '
SELECT * FROM TRACCS_USER_AUD 
ORDER BY ISN_TRACCS_USER_AUD desc {maxrows 500}
')
/*
479	TRACDANM	2017-09-26 15:46:50.6000000	C	USER00D 	11604   	 	CLAIMS41
478	TRACDANM	2017-09-26 15:46:50.6000000	C	USER00D 	11604   	 	CLAIMS41
477	TRACDANM	2017-09-26 15:45:40.1000000	C	CUS102P 	11604   	O	CLAIMS41
476	TRACDANM	2017-09-26 15:45:40.1000000	A	CUS102P 	11604   	P	CLAIMS41
*/



--Block TRACCS User ID - TFRADM09 Created at 04/09/2017 11:25 by Marie Snyman - User should use TRFADM09 - Nobuhle Khumalo
-- http://aviszwakala.avis.co.za/avisworkflows/Lists/ITISRequestsArchive/DispForm.aspx?ID=10848&ContentTypeId=0x010015442BFC41378542B612E4D84A835D4E00306ED9192E866141A211A13A7E4FD0B0
-- ISR11390 Block TRACCS User ID - TFRADM09 -- Note the FP_ISR
select 'Block TRACCS User ID - TFRADM09 :'
select * from openquery(TRACCS, '
SELECT * FROM TRACCS_USER_AUD where USER_ID = ''TRFADM09''
ORDER BY ISN_TRACCS_USER_AUD desc {maxrows 500}
')

/*
TRACCS_USER_USER_NAME	PASSWORD	ENTRY_USER	ENTRY_TIME
Nobuhle Khumalo                                   	avis123             	TRACJABU	2017-09-04 09:07:57.5000000 <- locked this monring
CLAIMS53 TEBOGO TSHABALALA 
*/
-- reintall traccs for FLEET36  - Dance

--The Natural User Wrokflows live here :
--http://aviszwakala.avis.co.za/Operations/OperationsFleetControl/SitePages/TRACCS%20User%20Management.aspx

select 'Both tables combined AND ONLY (O)PEN USERS (THIS TIME ORDERED BY EXPIRY DATE descending):'
select * from openquery(TRACCS, '
SELECT CONTROL_USERS.*,
TRACCS_USER.AVIS_COMP_CODE as TRACCS_USER_AVIS_COMP_CODE,TRACCS_USER.USER_ID as TRACCS_USER_USER_ID,TRACCS_USER.USER_NAME as TRACCS_USER_USER_NAME,TRACCS_USER.PASSWORD,TRACCS_USER.ENTRY_USER,TRACCS_USER.ENTRY_TIME,TRACCS_USER.LOCK_TIME,TRACCS_USER.LOCK_IND,TRACCS_USER.EXPIRY_DATE,timestampadd(SQL_TSI_DAY, -45,TRACCS_USER.EXPIRY_DATE)	
FROM CONTROL_USERS,TRACCS_USER WHERE 
CONTROL_USERS.USER_ID *= TRACCS_USER.USER_ID
AND USER_REC_TYPE = 1
AND USER_OPEN_BLOCK_IND = ''O''
AND EXPIRY_DATE >= ''2016-01-01''              /* note this is used so that it doesnt include DEV accounts*/
ORDER BY TRACCS_USER.USER_ID
')
--ORDER BY TRACCS_USER.USER_NAME
--ORDER BY TRACCS_USER.USER_ID
--ORDER BY EXPIRY_DATE
--PLN0005 
--PLN0004  	Ronnie Lechoba    (His automatic Reply : Friday the 8th of September is his last day in the sales admin department)
--FLEET36 #Dancemalete01  DAncE123#           
--CLAIMS36	1	CLMREG  	Marinda Ras       - this one has been done 
--ISR11596 Kongeni Haiketi To be able log accident claims CLAIMS08	1	STNREG  	Charlton de Koe   ???? !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
--!!!!!!!!!!!! \\racdcisvpts1\c$\Users\Charlton.DeKoe
-- nett time and milea AND WAIVERS = TMW !!!
       
select 'Both tables combined AND ONLY (O)PEN USERS (THIS TIME ORDERED BY USER_NAME):'
select * from openquery(TRACCS, '
SELECT CONTROL_USERS.*,
TRACCS_USER.AVIS_COMP_CODE as TRACCS_USER_AVIS_COMP_CODE,TRACCS_USER.USER_ID as TRACCS_USER_USER_ID,TRACCS_USER.USER_NAME as TRACCS_USER_USER_NAME,TRACCS_USER.PASSWORD,TRACCS_USER.ENTRY_USER,TRACCS_USER.ENTRY_TIME,TRACCS_USER.LOCK_TIME,TRACCS_USER.LOCK_IND,TRACCS_USER.EXPIRY_DATE,timestampadd(SQL_TSI_DAY, -45,TRACCS_USER.EXPIRY_DATE)	
FROM CONTROL_USERS,TRACCS_USER WHERE 
CONTROL_USERS.USER_ID *= TRACCS_USER.USER_ID
AND USER_REC_TYPE = 1
AND USER_OPEN_BLOCK_IND = ''O''
AND EXPIRY_DATE >= ''2016-01-01''              /* note this is used so that it doesnt include DEV accounts*/
ORDER BY TRACCS_USER.USER_NAME
')
    

select 'Both tables combined AND ONLY (O)PEN USERS (THIS TIME LOCKED OUT!!):'
select * from openquery(TRACCS, '
SELECT CONTROL_USERS.*,
TRACCS_USER.AVIS_COMP_CODE as TRACCS_USER_AVIS_COMP_CODE,TRACCS_USER.USER_ID as TRACCS_USER_USER_ID,TRACCS_USER.USER_NAME as TRACCS_USER_USER_NAME,TRACCS_USER.PASSWORD,TRACCS_USER.ENTRY_USER,TRACCS_USER.ENTRY_TIME,TRACCS_USER.LOCK_TIME,TRACCS_USER.LOCK_IND,TRACCS_USER.EXPIRY_DATE,timestampadd(SQL_TSI_DAY, -45,TRACCS_USER.EXPIRY_DATE)	
FROM CONTROL_USERS,TRACCS_USER WHERE 
CONTROL_USERS.USER_ID *= TRACCS_USER.USER_ID
AND USER_REC_TYPE = 1
AND USER_OPEN_BLOCK_IND = ''O''
AND EXPIRY_DATE >= ''2016-01-01''              /* note this is used so that it doesnt include DEV accounts*/
AND LOCK_IND = ''X''
ORDER BY TRACCS_USER.USER_NAME
')

-- remove a user entirely from the TRACCS :
/*
DELETE openquery(TRACCS, '
select * from CONTROL_USERS WHERE USER_ID = ''FLEET41''
')

DELETE openquery(TRACCS, '
select * from TRACCS_USER WHERE USER_ID = ''FLEET41''
')
*/



-- for auditors :
/*
select 'Both tables combined AND ONLY (O)PEN USERS (THIS TIME ORDERED BY USER_NAME):'
select * from openquery(TRACCS, '
SELECT CONTROL_USERS.*,
TRACCS_USER.AVIS_COMP_CODE as TRACCS_USER_AVIS_COMP_CODE,TRACCS_USER.USER_ID as TRACCS_USER_USER_ID,TRACCS_USER.USER_NAME as TRACCS_USER_USER_NAME,TRACCS_USER.PASSWORD,TRACCS_USER.ENTRY_USER,TRACCS_USER.ENTRY_TIME,TRACCS_USER.LOCK_TIME,TRACCS_USER.LOCK_IND,TRACCS_USER.EXPIRY_DATE,timestampadd(SQL_TSI_DAY, -45,TRACCS_USER.EXPIRY_DATE)	
FROM CONTROL_USERS,TRACCS_USER WHERE 
CONTROL_USERS.USER_ID *= TRACCS_USER.USER_ID
AND USER_REC_TYPE = 1
AND USER_OPEN_BLOCK_IND = ''O''
AND EXPIRY_DATE >= ''2016-01-01''              /* note this is used so that it doesnt include DEV accounts*/
ORDER BY TRACCS_USER.USER_NAME
')
*/
/*
timestampadd(SQL_TSI_DAY,-45,EXPIRY_DATE)
TRACCS_USER_USER_NAME
Jerome Patel      2017-08-31 00:00:00.0000000                                  
Naressa Naiker    2017-08-08 00:00:00.0000000                                  
Nathan Uithalder  2017-08-01 00:00:00.0000000                                 
*/


-- This is Riaans audit trail - went live 8 August 2017 :
select * from openquery(TRACCS, '
select * from fleet_master_old where AUDIT_TIME > ''2017-08-07 16:00:42.6000000'' AND AVIS_COMP_CODE = ''AV''
')

select * from openquery(TRACCS, '
select * from fleet_master_old where AUDIT_KEY = ''1693083''
')

--#VATBACK
--select * from openquery(TRACCS, '
--select * from fleet_master_aud where AUDIT_TIME > ''2017-08-07 16:00:42.6000000'' AND AVIS_COMP_CODE = ''AV''
--')


select * from openquery(TRACCS, '
select * from fleet_status_view where entry_time > ''2017-08-07 16:00:42.6000000'' 
')

--http://vmisfsql4rac/Reports/Pages/Report.aspx?ItemPath=%2fAvis%2fNatural%2fFleetAuditSummary

/*
-- copied and pasted from the report :
Adriaan Kleynhans  1694781  8/14/2017 3:32:40 PM IN MANINS MANUAL INSTALLATION        
Adriaan Kleynhans  1697634  8/15/2017 9:43:08 AM IN MANINS MANUAL INSTALLATION        
Adriaan Kleynhans  1695203  8/16/2017 8:05:51 AM IN MANINS MANUAL INSTALLATION        
Adriaan Kleynhans  1696236  8/16/2017 11:55:05 AM IN MANINS MANUAL INSTALLATION        
Adriaan Kleynhans  1695514  8/17/2017 8:05:53 AM IN MANINS MANUAL INSTALLATION        
Adriaan Kleynhans  1694806  8/17/2017	 12:38:11 PM IN MANINS MANUAL INSTALLATION        
Adriaan Kleynhans  1697646  8/17/2017 12:55:52 PM IN MANINS MANUAL INSTALLATION        
Adriaan Kleynhans  1694803  8/17/2017 1:51:07 PM IN MANINS MANUAL INSTALLATION        
Adriaan Kleynhans  1697389  8/17/2017 3:24:00 PM IN MANINS MANUAL INSTALLATION        
Adriaan Kleynhans  1695164  8/18/2017 10:10:35 AM IN MANINS MANUAL INSTALLATION        
Adriaan Kleynhans  1697383  8/8/2017 9:35:44 AM IN MANINS MANUAL INSTALLATION        
Adriaan Kleynhans  1697109  8/8/2017 9:36:23 AM IN MANINS MANUAL INSTALLATION        
Adriaan Kleynhans  1694933  8/11/2017 2:14:01 PM IN MANINS MANUAL INSTALLATION        
Adriaan Kleynhans  1696595  8/10/2017 9:37:37 AM IN MANINS MANUAL INSTALLATION        
Adriaan Kleynhans  1695487  8/14/2017 9:05:52 AM IN MANINS MANUAL INSTALLATION        
Adriaan Kleynhans  1695618  8/14/2017 9:07:01 AM IN MANINS MANUAL INSTALLATION  
*/


select VEHICLE_DELIVERY_DATE,* from openquery(TRACCS, '
SELECT * FROM FLEET_MOVEMENT where MVA_NUMBER IN
(
 ''1694781'', 
 ''1697634'', 
 ''1695203'', 
 ''1696236'',  
 ''1695514'', 
 ''1694806'',  
 ''1697646'',  
 ''1694803'', 
 ''1697389'', 
 ''1695164'',  
 ''1697383'',
 ''1697109'',
 ''1694933'', 
 ''1696595'', 
 ''1695487'', 
 ''1695618''
 )
ORDER BY MVA_NUMBER
')


-- FIRST MOVEMENT :
select * from openquery(TRACCS, '
SELECT MVA_NUMBER,MIN(MOVEMENT_TIME) FROM CAR_MOVEMENT_VIEW where MVA_NUMBER IN
(
 ''1694781'', 
 ''1697634'', 
 ''1695203'', 
 ''1696236'',  
 ''1695514'', 
 ''1694806'',  
 ''1697646'',  
 ''1694803'', 
 ''1697389'', 
 ''1695164'',  
 ''1697383'',
 ''1697109'',
 ''1694933'', 
 ''1696595'', 
 ''1695487'', 
 ''1695618''
  )
 /* AND MOVEMENT_TIME = ( SELECT MAX(MOVEMENT_TIME) FROM CAR_MOVEMENT_VIEW WHERE MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER AND MOVEMENT_TYPE =''I'') */
 GROUP BY MVA_NUMBER
 ORDER BY MVA_NUMBER
')

-- NETT_BOOK_VALUE (for Automate project 100% perfect - NBV ) :




SELECT 'NET BOOK VALUE (NBV) NOTE I CHANGED FLEET_MASTER_VIEW.STATUS_CHANGE_TIME TO CONVERT(FLEET_MASTER_VIEW.STATUS_CHANGE_TIME , DATE) to get the date only!!!!NB!!!!!!:'
select * from openquery(TRACCS, '
Select SUBSTRING ( CAST (LAST_STATION AS VARCHAR(4))  , 1 ,2),
                                    ASSET_TYPE,
                                    PURCHASE_TYPE, 
                                    FLEET_MASTER_VIEW.STATUS_CHANGE_TIME,
                                    LAST_STATION as lastsation,
                                    FLEET_MASTER_VIEW.MVA_NUMBER, 
                                    MVA_CHECK,
                                    fleet_master_view.MANUFACTURER_CODE,
                                    fleet_master_view.FLEET_MODEL_CODE,
                                    WIZARD_COLOUR_CODE,
                                    REGISTRATION_NO,
                                    INSTALLATION_DATE,
                                    CHASSIS_NUMBER, 
                                    ENGINE_NUMBER,
                                    LAST_STATION,
                                    M_AND_M_REF,
                                    CASE WHEN VEHICLE_STATUS IN (''T'',''W'',''U'',''Q'') 
                                    THEN 
                                    (FLEET_MASTER_VIEW.PURCHASE_PRICE + FLEET_MASTER_VIEW.CAPITAL_ACCESSORIES_PRICE + FLEET_MASTER_VIEW.ADDON_ACCESSORIES_PRICE)
                                    - ((((timestampdiff(SQL_TSI_DAY, INSTALLATION_DATE, CONVERT(FLEET_MASTER_VIEW.STATUS_CHANGE_TIME , DATE)) + 1 ) * 
                                     (PURCHASE_PRICE + CAPITAL_ACCESSORIES_PRICE + ADDON_ACCESSORIES_PRICE - BUYBACK_PRICE)) 
                                     / (timestampdiff(SQL_TSI_DAY, INSTALLATION_DATE,TURNBACK_DATE)  + 1))) 
                                    ELSE 
                                    (FLEET_MASTER_VIEW.PURCHASE_PRICE + FLEET_MASTER_VIEW.CAPITAL_ACCESSORIES_PRICE + FLEET_MASTER_VIEW.ADDON_ACCESSORIES_PRICE)
                                    - ((((timestampdiff(SQL_TSI_DAY, INSTALLATION_DATE,CURRENT_DATE())  + 1) * 
                                     (PURCHASE_PRICE + CAPITAL_ACCESSORIES_PRICE + ADDON_ACCESSORIES_PRICE - BUYBACK_PRICE))  / 
                                     (timestampdiff(SQL_TSI_DAY, INSTALLATION_DATE,TURNBACK_DATE)  + 1)))
                                    END AS NETT_BOOK_VALUE,
                                    CASE WHEN NAMIBIAN_YB = ''Y'' THEN ''Namibia''
                                    CASE WHEN NAMIBIAN_YB = ''E'' THEN ''Botswana''
                                    CASE WHEN NAMIBIAN_YB = ''C'' THEN ''Sizwe''
                                    CASE WHEN NAMIBIAN_YB = ''L'' THEN ''CFF Drive / P2P''
                                    CASE WHEN NAMIBIAN_YB = ''D'' THEN ''Swaziland''
                                    CASE WHEN NAMIBIAN_YB = ''F'' THEN ''Luxury Cars'' 
                                    CASE WHEN NAMIBIAN_YB = ''G'' THEN ''Lesotho'' 
                                    CASE WHEN NAMIBIAN_YB = ''H'' THEN ''Nam 4x4'' 
                                    CASE WHEN NAMIBIAN_YB = ''I'' THEN ''Zambia'' 
                                    CASE WHEN NAMIBIAN_YB IS NULL THEN ''South Africa''
                                    END
                                    END
                                    END
                                    END
                                    END
                                    END
                                    END
                                    END
                                    END
                                    END AS FLEET_OWNER
                                   FROM  fleet_master_view , AVIS_MODEL_CODE_VIEW
                                    WHERE FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE  
                                    AND SUBSTRING ( CAST (LAST_STATION AS VARCHAR(4))  , 1 ,2) = ''70''
                                   AND NAMIBIAN_YB <> ''Z''
                                    AND
FLEET_MASTER_VIEW.MVA_NUMBER IN
(
(SELECT MVA_NUMBER FROM (SELECT MAX(ENTRY_TIME) AS ENTRY_TIME,MVA_NUMBER, AVIS_COMP_CODE FROM FLEET_STATUS_VIEW
WHERE FLEET_STATUS_VIEW.ENTRY_TIME >=  timestampadd(SQL_TSI_DAY,-7,CURDATE())
GROUP BY MVA_NUMBER ) )
)
')

-- This is the other 1/2 of the query for AUTOMATE (100% CORRECT):
/*
select 'NBV calc (NOTE I CHANGED FLEET_MASTER_VIEW.STATUS_CHANGE_TIME TO CONVERT(FLEET_MASTER_VIEW.STATUS_CHANGE_TIME , DATE) to get the date only!!!!NB!!!!!!:'
select * from openquery(TRACCS, '
Select ASSET_TYPE ,  PUC_STATUS ,
                                          PURCHASE_TYPE,
                                          STATUS_CHANGE_TIME,
                                          LAST_STATION,
                                          FLEET_MASTER_VIEW.MVA_NUMBER, FLEET_MASTER_VIEW.MVA_CHECK,
                                          fleet_master_view.MANUFACTURER_CODE ,                                          
                                          fleet_master_view.FLEET_MODEL_CODE ,
                                          WIZARD_COLOUR_CODE ,
                                          REGISTRATION_NO ,
                                          INSTALLATION_DATE ,
                                          CHASSIS_NUMBER , 
                                          ENGINE_NUMBER ,
                                          M_AND_M_REF ,
                                          CASE WHEN  VEHICLE_STATUS IN (''T'',''W'',''U'',''Q'') 
                                          THEN 
                                              (FLEET_MASTER_VIEW.PURCHASE_PRICE + FLEET_MASTER_VIEW.CAPITAL_ACCESSORIES_PRICE + FLEET_MASTER_VIEW.ADDON_ACCESSORIES_PRICE)
                                              - ((((timestampdiff(SQL_TSI_DAY, INSTALLATION_DATE, CONVERT(FLEET_MASTER_VIEW.STATUS_CHANGE_TIME , DATE)) + 1 ) * 
                                               (PURCHASE_PRICE + CAPITAL_ACCESSORIES_PRICE + ADDON_ACCESSORIES_PRICE - BUYBACK_PRICE)) 
                                               / (timestampdiff(SQL_TSI_DAY, INSTALLATION_DATE,TURNBACK_DATE)  + 1))) 
                                          ELSE 
                                              (FLEET_MASTER_VIEW.PURCHASE_PRICE + FLEET_MASTER_VIEW.CAPITAL_ACCESSORIES_PRICE + FLEET_MASTER_VIEW.ADDON_ACCESSORIES_PRICE)
                                              - ((((timestampdiff(SQL_TSI_DAY, INSTALLATION_DATE,CURRENT_DATE())  + 1) * 
                                               (PURCHASE_PRICE + CAPITAL_ACCESSORIES_PRICE + ADDON_ACCESSORIES_PRICE - BUYBACK_PRICE))  / 
                                               (timestampdiff(SQL_TSI_DAY, INSTALLATION_DATE,TURNBACK_DATE)  + 1)))
                                          END AS NETT_BOOK_VALUE,
                                          CASE WHEN NAMIBIAN_YB = ''Y'' THEN 
                                                  ''Namibia''
                                          CASE WHEN NAMIBIAN_YB = ''E'' THEN 
                                                  ''Botswana''
                                          CASE WHEN NAMIBIAN_YB = ''C'' THEN 
                                                  ''Sizwe''
                                          CASE WHEN NAMIBIAN_YB = ''L'' THEN 
                                                  ''CFF Drive / P2P''
                                          CASE WHEN NAMIBIAN_YB = ''D'' THEN 
                                                  ''Swaziland''
                                          CASE WHEN NAMIBIAN_YB = ''F'' THEN 
                                                  ''Luxury Cars'' 
                                          CASE WHEN NAMIBIAN_YB = ''G'' THEN 
                                                  ''Lesotho'' 
                                          CASE WHEN NAMIBIAN_YB = ''H'' THEN 
                                                  ''Nam 4x4'' 
                                          CASE WHEN NAMIBIAN_YB = ''I'' THEN 
                                                  ''Zambia'' 
                                          CASE WHEN NAMIBIAN_YB IS NULL THEN 
                                                  ''South Africa''
                                          END
                                          END
                                          END
                                          END
                                          END
                                          END
                                          END
                                          END
                                          END
                                          END AS FLEET_OWNER
                                          FROM fleet_master_view , AVIS_MODEL_CODE_VIEW , PUC_MASTER_VIEW
                                          WHERE FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE AND FLEET_MASTER_VIEW.MVA_NUMBER *= PUC_MASTER_VIEW.MVA_NUMBER 
                                          AND (NAMIBIAN_YB <> ''Z'' OR NAMIBIAN_YB IS NULL)
                                          AND REGISTRATION_NO = ''ND546655''
')

*/







/*
--SAME AS ABOVE BUT CONNX QUERY VERSION :
Select SUBSTRING ( CAST (LAST_STATION AS VARCHAR(4))  , 1 ,2),
                                    ASSET_TYPE,
                                    PURCHASE_TYPE, 
                                    FLEET_MASTER_VIEW.STATUS_CHANGE_TIME,
                                    LAST_STATION as lastsation,
                                    FLEET_MASTER_VIEW.MVA_NUMBER, 
                                    MVA_CHECK,
                                    fleet_master_view.MANUFACTURER_CODE,
                                    fleet_master_view.FLEET_MODEL_CODE,
                                    WIZARD_COLOUR_CODE,
                                    REGISTRATION_NO,
                                    INSTALLATION_DATE,
                                    CHASSIS_NUMBER, 
                                    ENGINE_NUMBER,
                                    LAST_STATION,
                                    M_AND_M_REF,
                                    CASE WHEN VEHICLE_STATUS IN ('T','W','U','Q') 
                                    THEN 
                                    (FLEET_MASTER_VIEW.PURCHASE_PRICE + FLEET_MASTER_VIEW.CAPITAL_ACCESSORIES_PRICE + FLEET_MASTER_VIEW.ADDON_ACCESSORIES_PRICE)
                                    - ((((timestampdiff(SQL_TSI_DAY, INSTALLATION_DATE, CONVERT(FLEET_MASTER_VIEW.STATUS_CHANGE_TIME , DATE)) + 1 ) * 
                                     (PURCHASE_PRICE + CAPITAL_ACCESSORIES_PRICE + ADDON_ACCESSORIES_PRICE - BUYBACK_PRICE)) 
                                     / (timestampdiff(SQL_TSI_DAY, INSTALLATION_DATE,TURNBACK_DATE)  + 1))) 
                                    ELSE 
                                    (FLEET_MASTER_VIEW.PURCHASE_PRICE + FLEET_MASTER_VIEW.CAPITAL_ACCESSORIES_PRICE + FLEET_MASTER_VIEW.ADDON_ACCESSORIES_PRICE)
                                    - ((((timestampdiff(SQL_TSI_DAY, INSTALLATION_DATE,CURRENT_DATE())  + 1) * 
                                     (PURCHASE_PRICE + CAPITAL_ACCESSORIES_PRICE + ADDON_ACCESSORIES_PRICE - BUYBACK_PRICE))  / 
                                     (timestampdiff(SQL_TSI_DAY, INSTALLATION_DATE,TURNBACK_DATE)  + 1)))
                                    END AS NETT_BOOK_VALUE,
                                    CASE WHEN NAMIBIAN_YB = 'Y' THEN 'Namibia'
                                    CASE WHEN NAMIBIAN_YB = 'E' THEN 'Botswana'
                                    CASE WHEN NAMIBIAN_YB = 'C' THEN 'Sizwe'
                                    CASE WHEN NAMIBIAN_YB = 'L' THEN 'CFF Drive / P2P'
                                    CASE WHEN NAMIBIAN_YB = 'D' THEN 'Swaziland'
                                    CASE WHEN NAMIBIAN_YB = 'F' THEN 'Luxury Cars' 
                                    CASE WHEN NAMIBIAN_YB = 'G' THEN 'Lesotho' 
                                    CASE WHEN NAMIBIAN_YB = 'H' THEN 'Nam 4x4' 
                                    CASE WHEN NAMIBIAN_YB = 'I' THEN 'Zambia' 
                                    CASE WHEN NAMIBIAN_YB IS NULL THEN 'South Africa'
                                    END
                                    END
                                    END
                                    END
                                    END
                                    END
                                    END
                                    END
                                    END
                                    END AS FLEET_OWNER
                                   FROM  fleet_master_view , AVIS_MODEL_CODE_VIEW
                                    WHERE FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE  
                                    AND SUBSTRING ( CAST (LAST_STATION AS VARCHAR(4))  , 1 ,2) = '70'
                                   AND NAMIBIAN_YB <> 'Z'
                                    AND
FLEET_MASTER_VIEW.MVA_NUMBER IN
(
(SELECT MVA_NUMBER FROM (SELECT MAX(ENTRY_TIME) AS ENTRY_TIME,MVA_NUMBER, AVIS_COMP_CODE FROM FLEET_STATUS_VIEW
WHERE FLEET_STATUS_VIEW.ENTRY_TIME >=  timestampadd(SQL_TSI_DAY,-7,CURDATE())
GROUP BY MVA_NUMBER ) )
)
*/



/*
SELECT 
 convert (SUBSTRING(VEHICLE_DELIVERY_DATE,7,4) + '/' +  SUBSTRING(VEHICLE_DELIVERY_DATE,4,2) + '/' +   SUBSTRING(VEHICLE_DELIVERY_DATE,1,2) date)
, SUBSTRING(VEHICLE_DELIVERY_DATE,7,4) + '/' +  SUBSTRING(VEHICLE_DELIVERY_DATE,4,2) + '/' +   SUBSTRING(VEHICLE_DELIVERY_DATE,1,2)
,VEHICLE_DELIVERY_DATE
,
* FROM FLEET_MOVEMENT 
*/

/*
select VEHICLE_DELIVERY_DATE,* from openquery(TRACCS, '
SELECT convert (SUBSTRING(VEHICLE_DELIVERY_DATE,7,4) + ''/'' +  SUBSTRING(VEHICLE_DELIVERY_DATE,4,2) + ''/'' +   SUBSTRING(VEHICLE_DELIVERY_DATE,1,2) date),* FROM FLEET_MOVEMENT 
ORDER BY convert (SUBSTRING(VEHICLE_DELIVERY_DATE,7,4) + ''/'' +  SUBSTRING(VEHICLE_DELIVERY_DATE,4,2) + ''/'' +   SUBSTRING(VEHICLE_DELIVERY_DATE,1,2) date)
')
*/

select 'Vans Diners transactions changed to CM when loaded :'
select * from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE  AVIS_COMP_CODE <> ''ZA'' AND AVIS_COMP_CODE <> ''SW'' AND AVIS_COMP_CODE <> ''B0'' AND AVIS_COMP_CODE <> ''B1''
AND CREDIT_CLUB_NUMBER like ''3613%''
')

-- Manufacturer Names :
select 'Manufacturer Names :'
select * from openquery(TRACCS, '
SELECT * FROM MANUFACTURER_VIEW WHERE MANUFACTURER_KEY = ''M'' AND STATUS = ''O'' AND PAYMENT_IND = ''I'' AND PAYMENT_PLUS_DAYS IS NOT NULL AND LONG_DESCRIPTION LIKE ''%M''
/* MANUFACTURER_CODE IS NOT NULL */
')

-- netstat -a : can get last logins and IPS from flowcentric aswell !!!!!!!!!!!!!!!!!!!!!
/*
  TCP    10.98.226.143:1024     nbahq5cg5432:64099     ESTABLISHED
  TCP    10.98.226.143:1024     10.97.194.105:53161    ESTABLISHED
  TCP    10.98.226.143:1024     dtahqtrf2501cww:51249  ESTABLISHED
  TCP    10.98.226.143:1024     dtahqtrf2501cww:61858  ESTABLISHED
  TCP    10.98.226.143:1024     nbahq5295yqk:55757     ESTABLISHED
  TCP    10.98.226.143:1024     nbrachq037:54978       ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq163:65420       ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc4293zmk:52436  ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc4293zw7:60988  ESTABLISHED
  TCP    10.98.226.143:1024     nbrachq40:54187        ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc293zqq:49349   ESTABLISHED
  TCP    10.98.226.143:1024     dtahq4293zmp:62864     ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq176:59340       ESTABLISHED
  TCP    10.98.226.143:1024     nbahq201g699:56820     ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq163:59184       ESTABLISHED
  TCP    10.98.226.143:1024     nbahqcnu42796kt:50614  ESTABLISHED
  TCP    10.98.226.143:1024     nbahqczc9478tyj:52063  ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc4293zvk:65134  ESTABLISHED
  TCP    10.98.226.143:1024     nbahq265ys:55347       ESTABLISHED
  TCP    10.98.226.143:1024     dtahqtrf22402rk:49915  ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc00hy:59438     ESTABLISHED
  TCP    10.98.226.143:1024     nbrachq128:51927       ESTABLISHED
  TCP    10.98.226.143:1024     10.97.194.204:57915    ESTABLISHED
  TCP    10.98.226.143:1024     dtahqtrfdcn:49295      ESTABLISHED
  TCP    10.98.226.143:1024     dtahq11l1:57531        ESTABLISHED
  TCP    10.98.226.143:1024     10.97.194.220:62301    ESTABLISHED
  TCP    10.98.226.143:1024     dtahq80281:56158       ESTABLISHED
  TCP    10.98.226.143:1024     nbrachq183:53290       ESTABLISHED
  TCP    10.98.226.143:1024     nbahqcnu246c2sr:49872  ESTABLISHED
  TCP    10.98.226.143:1024     dtahqtrf30v8f:55314    ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq242:61249       ESTABLISHED
  TCP    10.98.226.143:1024     dtahq26fsy:62788       ESTABLISHED
  TCP    10.98.226.143:1024     dtahq24bng:54782       ESTABLISHED
  TCP    10.98.226.143:1024     dtahq4381rfk:49778     ESTABLISHED
  TCP    10.98.226.143:1024     dtahq138025k:52702     ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc4293zn6:52325  ESTABLISHED
  TCP    10.98.226.143:1024     nbahqcnu352b9wf:56566  ESTABLISHED
  TCP    10.98.226.143:1024     nbahq8cg432069m:55692  ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc4293zlq:58874  ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq92:58005        ESTABLISHED
  TCP    10.98.226.143:1024     nbrachq018:50470       ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq142:60195       ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc293zmb:55641   ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq142:51428       ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc4015:50190     ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq078:50494       ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq154:52629       ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq154:56371       ESTABLISHED
  TCP    10.98.226.143:1024     nbrachq95:51609        ESTABLISHED
  TCP    10.98.226.143:1024     nbrachq119:54993       ESTABLISHED
  TCP    10.98.226.143:1024     dtahq35hny:51124       ESTABLISHED
  TCP    10.98.226.143:1024     dtaztrf22407g1:49671   ESTABLISHED
  TCP    10.98.226.143:1024     10.98.213.16:52489     ESTABLISHED
  TCP    10.98.226.143:1024     10.98.213.27:61353     ESTABLISHED
  TCP    10.98.226.143:1024     nbavremp001:63755      ESTABLISHED
  TCP    10.98.226.143:1024     10.98.213.42:57199     ESTABLISHED
  TCP    10.98.226.143:1024     10.98.213.50:51114     ESTABLISHED
  TCP    10.98.226.143:1024     vmisfracerf1:55120     ESTABLISHED


  TCP    10.98.226.143:1024     10.97.194.105:53161    ESTABLISHED
  TCP    10.98.226.143:1024     dtahqtrf2501cww:51249  ESTABLISHED
  TCP    10.98.226.143:1024     dtahqtrf2501cww:61858  ESTABLISHED
  TCP    10.98.226.143:1024     dtahq3150tpw:60096     ESTABLISHED
  TCP    10.98.226.143:1024     nbahq5295yqk:55757     ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc4293zmk:53854  ESTABLISHED
  TCP    10.98.226.143:1024     nbrachq037:54978       ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq163:65420       ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc4293zmk:52436  ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc4293zw7:60988  ESTABLISHED
  TCP    10.98.226.143:1024     nbrachq40:54187        ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc293zqq:65361   ESTABLISHED
  TCP    10.98.226.143:1024     dtahq4293zmp:62864     ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq176:59340       ESTABLISHED
  TCP    10.98.226.143:1024     nbahq201g699:56820     ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq163:59184       ESTABLISHED
  TCP    10.98.226.143:1024     nbahqcnu42796kt:50614  ESTABLISHED
  TCP    10.98.226.143:1024     nbahqczc9478tyj:52063  ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc4293zvk:65134  ESTABLISHED
  TCP    10.98.226.143:1024     nbahq265ys:55347       ESTABLISHED
  TCP    10.98.226.143:1024     dtahqtrf22402rk:49915  ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc00hy:59438     ESTABLISHED
  TCP    10.98.226.143:1024     nbrachq128:51927       ESTABLISHED
  TCP    10.98.226.143:1024     10.97.194.204:57915    ESTABLISHED
  TCP    10.98.226.143:1024     dtahqtrfdcn:49295      ESTABLISHED
  TCP    10.98.226.143:1024     dtahq11l1:57531        ESTABLISHED
  TCP    10.98.226.143:1024     10.97.194.220:62301    ESTABLISHED
  TCP    10.98.226.143:1024     dtahq80281:56158       ESTABLISHED
  TCP    10.98.226.143:1024     nbrachq183:53290       ESTABLISHED
  TCP    10.98.226.143:1024     nbahqcnu246c2sr:63540  ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq242:61249       ESTABLISHED
  TCP    10.98.226.143:1024     dtahq138025k:52702     ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc4293zn6:52325  ESTABLISHED
  TCP    10.98.226.143:1024     nbahqcnu352b9wf:56566  ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq92:58005        ESTABLISHED
  TCP    10.98.226.143:1024     nbrachq018:50470       ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq142:60195       ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc293zmb:55641   ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq142:51428       ESTABLISHED
  TCP    10.98.226.143:1024     dtahqczc4015:50190     ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq078:53962       ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq154:64803       ESTABLISHED
  TCP    10.98.226.143:1024     dtrachq154:56371       ESTABLISHED
  TCP    10.98.226.143:1024     nbrachq95:51609        ESTABLISHED
  TCP    10.98.226.143:1024     nbrachq119:54993       ESTABLISHED
  TCP    10.98.226.143:1024     dtahq35hny:51124       ESTABLISHED
  TCP    10.98.226.143:1024     dtaztrf22407g1:49671   ESTABLISHED
  TCP    10.98.226.143:1024     nbavremp001:52489      ESTABLISHED
  TCP    10.98.226.143:1024     10.98.213.27:61353     ESTABLISHED
  TCP    10.98.226.143:1024     nbavremp001:63755      ESTABLISHED
  TCP    10.98.226.143:1024     10.98.213.42:57199     ESTABLISHED
  TCP    10.98.226.143:1024     10.98.213.50:51114     ESTABLISHED


*/


---For the auditors :
/*
Good day Marie,
 
I’m just following up on the findings for the Traccs review that Tumi performed.
For the three users that were noted to not have forms, you advised that the users were already on the system (Naressa Naiker, Jerome Patel and Nathan Uithalder).
When were these users added to the system? Would they have been imported as part of system go –live?
I was under the impression that the Traccs system has been operational for a number of years? Or were there changes made to the system recently?

Thanks,
*/

/*
select 'Auditors - Both tables combined AND ONLY (O)PEN USERS (THIS TIME ORDERED BY EXPIRY DATE descending):'
select USER_ID,USER_GROUP_ID,USER_NAME,ENTRY_USER,ENTRY_TIME,LOCK_TIME,LOCK_IND,EXPIRY_DATE from openquery(TRACCS, '
SELECT CONTROL_USERS.*,
TRACCS_USER.AVIS_COMP_CODE as TRACCS_USER_AVIS_COMP_CODE,TRACCS_USER.USER_ID as TRACCS_USER_USER_ID,TRACCS_USER.USER_NAME as TRACCS_USER_USER_NAME,TRACCS_USER.PASSWORD,TRACCS_USER.ENTRY_USER,TRACCS_USER.ENTRY_TIME,TRACCS_USER.LOCK_TIME,TRACCS_USER.LOCK_IND,TRACCS_USER.EXPIRY_DATE,timestampadd(SQL_TSI_DAY, -45,TRACCS_USER.EXPIRY_DATE)	
FROM CONTROL_USERS,TRACCS_USER WHERE 
CONTROL_USERS.USER_ID *= TRACCS_USER.USER_ID
AND USER_REC_TYPE = 1
AND USER_OPEN_BLOCK_IND = ''O''
AND EXPIRY_DATE >= ''2016-01-01''              /* note this is used so that it doesnt include DEV accounts*/
ORDER BY EXPIRY_DATE
')
*/


/*
From: Riaan Weideman 
Sent: 07 August 2017 03:46 PM
To: Kieran Swanepoel <Kieran.Swanepoel@avisbudget.co.za>
Subject: TRACCS Error - Model Code AP

Hallo Kieran,
I get a funny error on Model Code AP. (some other codes also)
Why will this happen?
See below picture.
*/


/*
RCFV29PM :
-----------
1680   REPEAT
1690     FINDR.
1700     FIND AVIS-MODEL-CODE-VIEW



       Id Node Id  Login Id      ES Id User Id  File           ISN Locks  Flg
       -- -------  --------      ----- -------  ----           --- -----  ---
      215 CLAIMS51 044eb2ec       3820 3820      191       873,127   X
      458 FLEET34  06307cac       7340 7340      112         1,257   X <-- being held by McKay
      121 CLAIMSL2 0376bc94       2196 2196      191       744,387   X
      469 FLEET01  00d95638       7736 7736      112         1,969   X
      239 CLAIMS39 008d2bf0       2032 2032      191       812,058   X
      411 CLAIMS45 036c6708       7944 7944      191       886,815   X
      206 CLAIMS00 03179af4       5876 5876      191       709,975   X
       98 DAMAGE16 01ac170c       5900 5900      191       806,603   X
      206 CLAIMS00 03179af4       5876 5876      195       457,052   X     M
      206 CLAIMS00 03179af4       5876 5876      195       457,053   X     M

selected: 10, Used: 10, Queue Size: 800
ADAOPR-I-TERMINATED,   07-AUG-2017 15:46:42, elapsed time: 00:00:00
*/






select FLEET_MODEL_CODE,* from openquery(TRACCS, '
select * from AVIS_MODEL_CODE_VIEW where ISN_AVIS_MODEL_CODE_VIEW IN
(
1257, /* AP */
1969  /* APL */
)
')






/*
select '\\blisfflowcrac\c$\FlowCentric Directory Watcher Actions\HQ Refunds\7511\Archive File'
--D:\production scripts\logs>copy *.txt budget.xxx
--Waiting for ISN
select '\\vmisfractraccs\c$\inetpub\logs\LogFiles\W3SVC1','CONNX slowdown : IIS logs time is GMT so add 2 hours'
select '\\vmisfractraccs\d$\production scripts\logs'
-- ERFDAILY FILES :

select 'C:\Users\kieran.swanepoel\Dropbox\ALL TRACCS tasks\Lucas NEW server vmisfracerf1 CONSOLE.bat'

select '\\racfs.abgza.co.za\NATREPORTS\DailyFleet','<--First one VANS-12-March-2017.CSV comes out at 10:30ish'
select '\\racfs.abgza.co.za\vol2\DATA\TFRERF','<--arrive at 9AM.Sometimes at 8:15AM' 
select '\\racfs.abgza.co.za\vol2\DATA\TFRACC','<--arrive at 9AM.Sometimes at 8:15AM'
select '\\racfs.abgza.co.za\vol2\DATA\TFRCLUBS','<--arrive at 11AM'
select '\\racfs.abgza.co.za\vol2\iVeri\DATA','<--They dont generate the files on WEEKENDS - check folder for proof'
*/



/*
select * from openquery(TRACCS, '
SELECT * FROM DEFLEETING_VIEW WHERE REGISTRATION_NO = ''HWW173EC''
')
*/

--http://10.10.192.20/accelerated_pac_base.pac
-- Drive mappings 
/*
net use G: \\racfs.abgza.co.za\Vol1
net use H: \\racfs.abgza.co.za\Vol2
net use I: \\racfs.abgza.co.za\natreports
*/

/*
Transaction Not found : 17-07-07 E513585413 TSHABALALA,MJ MR
785.98
Transaction Not found : 17-07-07 E188196015 NGCOBO,TN
391.09
*/
-- Michelle Sohan check :
select 'RA search in credit clubs : '
select DATA_DATE,* from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER IN 
(
''  E513585413'',
''  E436331980''
)
')
select DATA_DATE,* from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER IN 
(
''  E499517922''
)
')



-- New issue :
/*
select 'RA search in credit clubs : '
select DATA_DATE,* from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER IN 
(
''  E514276151'',
''  E513688350'',
''  E189556651'',
''  E514314415'',
''  E189545591'',
''  E189545591'',
''  E189545591'',
''  E513528411'',
''  E513669785'',
''  E514519073'',
''  E514288073'',
''  E433660323'',
''  E357531484'',
''  E188772791'',
''  E188772791'',
''  E513563035'',
''  E433445530'',
''  E583435635'',
''  E514281810'',
''  E514281810'',
''  E311784561''
)
')
*/



select 'Test for missing days START :'
select * from openquery(TRACCS, '
SELECT COUNT(*),INVOICE_DATE INVOICE_DATEx ,REMARKS REMARKSx,AVIS_BUDGET_IND AVIS_BUDEGT_INDx, VENDOR_NO VENDOR_NOx,* FROM RA_MAINT_VIEW WHERE avis_comp_code = ''AV'' 
and RA_RECORD_TYPE = 1 AND PERIOD_CCYYPP = ( select PERIOD from GETCCYYPP ) 
AND VENDOR_NO = ''SW0000''  AND REMARKS LIKE ''%.SW''  
GROUP BY REMARKS
ORDER BY REMARKS
')
--            
/*
select * from openquery(TRACCS, '
SELECT COUNT(*),INVOICE_DATE INVOICE_DATEx ,REMARKS REMARKSx,AVIS_BUDGET_IND AVIS_BUDEGT_INDx, VENDOR_NO VENDOR_NOx,* FROM RA_MAINT_VIEW WHERE avis_comp_code = ''AV'' 
and RA_RECORD_TYPE = 1 AND PERIOD_CCYYPP = ( select PERIOD from GETCCYYPP )
AND VENDOR_NO = ''A10000''   AND REMARKS LIKE ''%.ZA'' 
GROUP BY REMARKS
ORDER BY REMARKS
')
*/

/*
select 'NNBB: Replication of TAPES - whole of the month ( leave in the 07 transactions) :'
select * from openquery(TRACCS, '
select SUM(TRANSACTION_AMOUNT),INTERNAL_TAPE_SEQ_NO,CREDIT_CLUB_CODE,AVIS_COMP_CODE, WIZ_FILE_SEQ_NUMBER,DATA_DATE,PROCESSED_IND,ENTRY_TIME from CCS_DETAIL_FILE {usekey 3} 
where PERIOD_CCYYPP >= ''211708''
/* AND AVIS_COMP_CODE = ''B1''  this narrows it down to the Nam Budget */
/* AND SUM(TRANSACTION_AMOUNT) = 2298.08 */
GROUP BY  CREDIT_CLUB_CODE,AVIS_COMP_CODE, WIZ_FILE_SEQ_NUMBER,DATA_DATE,INTERNAL_TAPE_SEQ_NO
ORDER BY DATA_DATE,INTERNAL_TAPE_SEQ_NO
')

*/
----Test for missing days END

-- FLEET MOVEMENT FILE (ALL STARTS WITH PROGRAM : FLEETREP ) :
-- FLEETREP :
-- COMPRESS '\\racfs.abgza.co.za\vol2\data\tfrfleet\VEH_DATAZA.TXT' INTO #WORK28 LEAVING NO
/*
FLEETDBV :
2870 F01.
2880 READ FLEET-MOVEMENT
2890 *
2900   IF F01.WIZ-OWNING-STN-NO EQ 9017 /* Bots */
2910       OR WIZ-OWNING-STN-NO EQ 9074 /* Nam */
2920       OR WIZ-OWNING-STN-NO EQ 7532 /* Moz */
2930       OR WIZ-OWNING-STN-NO EQ 7765 /* Zam */
2940       OR WIZ-OWNING-STN-NO EQ 9126 /* Zim */
2950       OR WIZ-OWNING-STN-NO EQ 7530 /* Ang */
2960       OR WIZ-OWNING-STN-NO EQ 9064 /* Les */
2970       OR WIZ-OWNING-STN-NO EQ 7316 /* Mad */
2980       OR WIZ-OWNING-STN-NO EQ 9134 /* Mal */
2990       OR WIZ-OWNING-STN-NO EQ 9897 /* Swa */
3000       OR WIZ-OWNING-STN-NO EQ 9106 /* RSA */
3010       OR WIZ-OWNING-STN-NO EQ 7396 /* Luxury */
3020       OR WIZ-OWNING-STN-NO EQ 7964 /* Chauf */
3030       OR WIZ-OWNING-STN-NO EQ 8614 /* Coach */
3040     ESCAPE TOP
3050   END-IF
*/

select * from openquery(TRACCS, '
SELECT * FROM FLEET_MOVEMENT WHERE VEHICLE_LICENCE_NUMBER = ''N189130W'' AND WIZ_OWNING_STN_NO = ''64737''
')






-- INSERT FROM TRACCSQA TO TRACCS PROCUCTION NNNNNNNNNNNNNNNBBBBBBBBBBBBBBBBBB - START move data from qa to production / move to prod --------------------------------------------
/*
select * from openquery(TRACCS, '
select TRANSACTION_AMOUNT TRANSACTION_AMOUNTx ,INTERNAL_TAPE_SEQ_NO INTERNAL_TAPE_SEQ_NOx,CREDIT_CLUB_CODE CREDIT_CLUB_CODEx,
AVIS_COMP_CODE AVIS_COMP_CODEx, WIZ_FILE_SEQ_NUMBER WIZ_FILE_SEQ_NUMBERx,DATA_DATE DATA_DATEx,PROCESSED_IND PROCESSED_INDx,* 
from CCS_DETAIL_FILE {usekey 3} where PERIOD_CCYYPP >= ''211709'' AND AVIS_COMP_CODE = ''B0'' AND WIZ_FILE_SEQ_NUMBER IN (854,855)
AND CREDIT_CLUB_CODE = ''CA''
AND ENTRY_TIME >= ''2017-06-01 12:29:35.0000000'' AND ENTRY_TIME <= ''2017-06-12 16:29:35.0000000''
ORDER BY DATA_DATE,WIZ_FILE_SEQ_NUMBER,INTERNAL_TAPE_SEQ_NO
')

update openquery(TRACCS, '
select * from CCS_DETAIL_FILE 
where PERIOD_CCYYPP >= ''211709'' AND AVIS_COMP_CODE = ''B0'' AND WIZ_FILE_SEQ_NUMBER IN (854,855)
AND CREDIT_CLUB_CODE = ''CA''
AND ENTRY_TIME >= ''2017-06-01 12:29:35.0000000'' AND ENTRY_TIME <= ''2017-06-12 16:29:35.0000000''
')
SET PROCESSED_IND = NULL , INTERNAL_TAPE_SEQ_NO = NULL

update openquery(TRACCS, '
select * from CCS_DETAIL_FILE 
where PERIOD_CCYYPP >= ''211709'' AND AVIS_COMP_CODE = ''B0'' AND WIZ_FILE_SEQ_NUMBER IN (854,855)
AND CREDIT_CLUB_CODE = ''CA''
AND ENTRY_TIME >= ''2017-06-01 12:29:35.0000000'' AND ENTRY_TIME <= ''2017-06-12 16:29:35.0000000''
')
SET PROCESSED_IND = 'NO' , INTERNAL_TAPE_SEQ_NO = NULL

 --drop table #MyTempTable
select * into #MyTempTable from openquery(TRACCSQA, '
select AVIS_COMP_CODE,	RA_NUMBER,	PERIOD_CCYYPP,	CREDIT_CLUB_CODE,	CREDIT_CLUB_NUMBER,	TRANSACTION_AMOUNT,	TRANSACTION_TYPE,	AUTH_CODE,	CUSTOMER_NAME,	CHECKOUT_LOCATION,	CHECKOUT_TIME,	CHECKIN_LOCATION,	CHECKIN_TIME,	RENTAL_KMS,	CHECKOUT_STATION_CODE,	ENTRY_TIME,	USER_ID,	WIZ_FILE_SEQ_NUMBER,	EXPIRY_DATE,	INTERNAL_TAPE_SEQ_NO,	DATA_DATE,	PROCESSED_IND
from CCS_DETAIL_FILE {usekey 3} where PERIOD_CCYYPP >= ''211709'' AND AVIS_COMP_CODE = ''B0'' AND WIZ_FILE_SEQ_NUMBER IN (854,855)
AND CREDIT_CLUB_CODE = ''CA''
AND ENTRY_TIME >= ''2017-06-01 12:29:35.0000000'' AND ENTRY_TIME <= ''2017-06-12 16:29:35.0000000''
ORDER BY DATA_DATE,WIZ_FILE_SEQ_NUMBER,INTERNAL_TAPE_SEQ_NO
')

select * from #MyTempTable
INSERT OPENQUERY (TRACCS, 'SELECT AVIS_COMP_CODE,	RA_NUMBER,	PERIOD_CCYYPP,	CREDIT_CLUB_CODE,	CREDIT_CLUB_NUMBER,	TRANSACTION_AMOUNT,	TRANSACTION_TYPE,	AUTH_CODE,	CUSTOMER_NAME,	CHECKOUT_LOCATION,	CHECKOUT_TIME,	CHECKIN_LOCATION,	CHECKIN_TIME,	RENTAL_KMS,	CHECKOUT_STATION_CODE,	ENTRY_TIME,	USER_ID,	WIZ_FILE_SEQ_NUMBER,	EXPIRY_DATE,	INTERNAL_TAPE_SEQ_NO,	DATA_DATE,	PROCESSED_IND FROM CCS_DETAIL_FILE') SELECT * FROM #MyTempTable
*/
-- INSERT FROM TRACCSQA TO TRACCS PROCUCTION NNNNNNNNNNNNNNNBBBBBBBBBBBBBBBBBB - END --------------------------------------------


--NNNNNNNNNNNBBBBBBBBBBBBBBBBBBBBBBBB Nice CASE used in UPDATE Reversing / reverse credit club transactions EXAMPLE (Example from Daniels stuff up):
/*
update  openquery(TRACCSQA, '
select * from CCS_DETAIL_FILE WHERE 
RA_NUMBER IN 
(
''  E118031955'',
''  E118034055'',
''  E118034291'',
''  E118034361'',
''  E118034512'',
''  E118035024'',
''  E118035805'',
''  E118037393''
)
')
SET TRANSACTION_TYPE = ( CASE WHEN TRANSACTION_TYPE = '05' THEN '06' WHEN TRANSACTION_TYPE = '06' THEN '05' ELSE TRANSACTION_TYPE END ) , TRANSACTION_AMOUNT = TRANSACTION_AMOUNT*-1
*/



-- ME-REP-13 not balancing to Daily Estimate :
select * from openquery(TRACCS, '
SELECT * FROM RA_MAINT_VIEW WHERE RA_NUMBER = ''432494904'' 
')
--and avis_comp_code = ''AV'' and RA_RECORD_TYPE = 1

--Namibian Rentals SW0000 :
select * from openquery(TRACCS, '
SELECT VENDOR_NO VENDOR_NOx,* FROM RA_MAINT_VIEW WHERE avis_comp_code = ''AV'' and RA_RECORD_TYPE = 1 AND PERIOD_CCYYPP = ( select PERIOD from GETCCYYPP )
AND VENDOR_NO like ''SW%''
')
--Namibian Rentals SW0000 particular rental :
select * from openquery(TRACCS, '
SELECT VENDOR_NO VENDOR_NOx,* FROM RA_MAINT_VIEW WHERE avis_comp_code = ''AV'' and RA_RECORD_TYPE = 1 AND PERIOD_CCYYPP = ( select PERIOD from GETCCYYPP )
AND VENDOR_NO like ''SW%'' AND RA_NUMBER LIKE ''%432494904%''
')

select * from openquery(TRACCS, '
SELECT VENDOR_NO VENDOR_NOx,* FROM RA_MAINT_VIEW WHERE avis_comp_code = ''AV'' and RA_RECORD_TYPE = 1 AND PERIOD_CCYYPP = ( select PERIOD from GETCCYYPP )
AND VENDOR_NO like ''SW%'' 
')
--AND RA_NUMBER LIKE ''%432494904%''
-- Some of them are SW0002

/*
select 'EASTER CATCHUP'
select * from openquery(TRACCS, '
select TRANSACTION_AMOUNT TRANSACTION_AMOUNTx ,INTERNAL_TAPE_SEQ_NO INTERNAL_TAPE_SEQ_NOx,CREDIT_CLUB_CODE CREDIT_CLUB_CODEx,
AVIS_COMP_CODE AVIS_COMP_CODEx, WIZ_FILE_SEQ_NUMBER WIZ_FILE_SEQ_NUMBERx,DATA_DATE DATA_DATEx,PROCESSED_IND PROCESSED_INDx,* 
from CCS_DETAIL_FILE {usekey 3} where PERIOD_CCYYPP >= ''211707''
AND ENTRY_TIME >= ''2017-04-14 12:29:35.0000000'' AND ENTRY_TIME <= ''2017-04-18 16:29:35.0000000''
ORDER BY DATA_DATE,INTERNAL_TAPE_SEQ_NO
')
*/





--For HQRefunds- 7511s in TRACCS ( NOTE: DATA_DATE will always be -2 days from today):
--Date from :
/*
select * from openquery(TRACCS, '
SELECT RA_NUMBER RA_NUMBERx,CHARGED_AMOUNT CHARGED_AMOUNTx,DATA_DATE DATA_DATEx,RUN_DATE as CAptureDAte,* FROM ACC_RDS_DAILY WHERE PERIOD_CCYYPP = ''211707''  
AND AVIS_COMP_CODE = ''ZA'' and CHARGED_VENDOR_NO = ''A10000'' AND LEDGER_ACCOUNT_NO = ''7511'' 
AND DATA_DATE >= ''2017-01-01'' AND CHARGED_AMOUNT >  1
')
*/


/*
select 'Incorrectly X cars:'
select * from openquery(TRACCS, '
SELECT NAMIBIAN_YB NAMIBIAN_YBx,* FROM FLEET_MASTER_VIEW WHERE REGISTRATION_NO LIKE ''%X'' AND VEHICLE_STATUS = ''A''
')
*/


/*
select * from openquery(TRACCS, '
SELECT * FROM FLEET_MASTER_VIEW WHERE MVA_NUMBER = ''1689591''
')
*/

/*
select 'Find the manually installed cars MANINS:'
select * from openquery(TRACCS, '
select REGISTRATION_NO REGISTRATION_NOx,AUDIT_USER AUDIT_USERx, * from FLEET_MASTER_AUDIT_FILE
WHERE 
ISN_FLEET_MASTER_AUDIT_FILE > 1246533 /* 6 months history */
AND AUDIT_FUNCTION = ''IN''
')
*/



-- Fleet information
/*
select * from openquery(TRACCS, '
SELECT COUNT(*),NAMIBIAN_YB FROM FLEET_MASTER_VIEW WHERE 
 VEHICLE_STATUS = ''A''
 GROUP BY NAMIBIAN_YB
')

*/
/*
RFLE07PF :
Fleets that we run NAMIBIAN_YB :
DECIDE ON FIRST VALUE OF FLEET-MASTER-VIEW.NAMIBIAN-YB
4395         VALUE 'Y'	
4400           MOVE 'Namibia' TO #FLEET-OWNER
4405         VALUE 'E'
4410           MOVE 'Botswana' TO #FLEET-OWNER
4415         VALUE 'C'
4420           MOVE 'Sizwe' TO #FLEET-OWNER
4425         VALUE 'L'
4430           MOVE 'CFF Drive / P2P' TO #FLEET-OWNER 
4435         VALUE 'D'	
4440           MOVE 'Swaziland' TO #FLEET-OWNER
4445         VALUE 'F'
4450           MOVE 'Luxury Cars' TO #FLEET-OWNER
4455         VALUE 'G'
4460           MOVE 'Lesotho'  TO #FLEET-OWNER
4465         VALUE 'H'
4470           MOVE 'Nam 4x4'  TO #FLEET-OWNER
4475         VALUE 'I'
4480           MOVE 'Zambia'   TO #FLEET-OWNER
4485         NONE VALUE
4490           MOVE 'Rsa' TO #FLEET-OWNER
4495       END-DECIDE
*/






------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------


      

/*


OLD VERSION BEFORE 04 APR 2017 :
--------------------------------
From: Kieran Swanepoel 
Sent: 21 February 2017 11:12 AM
To: Prize Tshuma <Prize.Tshuma@avisbudget.co.za>
Cc: Erika Huddlestone <Erika.Huddlestone@avisbudget.co.za>; Adriaan Lehmkuhl <Adriaan.Lehmkuhl@avisbudget.co.za>
Subject: RE: [Internal] Model Emmissions : SQL Query

Hi Prize/Riaan,

To get only en-route and active cars add the following where clause to the bottom of the query :
WHERE VEHICLE_STATUS IN ('A','E')

Regards,
Kieran


From: Kieran Swanepoel 
Sent: 15 February 2017 02:02 PM
To: Prize Tshuma
Cc: Erika Huddlestone; Adriaan Lehmkuhl
Subject: RE: [Internal] Model Emmissions : SQL Query

Hi Prize,

This field is no longer used for anything AVIS_MODEL_CODE so I haven’t included it.
SP_AVIS_MODEL_CODE_STATUS and SP_WIZARD_MODEL_CODE_STATUS are super descriptor fields and also shouldn’t be needed for anything on your side, so I have excluded them as well.


This should give you what you are looking for :

SELECT
REGISTRATION_NO,
MVA_NUMBER,MVA_CHECK,
WIZARD_MODEL_CODE, 
ISN_AVIS_MODEL_CODE_VIEW ISN_3_112,
SHORT_DESCRIPTION ,
LONG_DESCRIPTION,
AVIS_MODEL_CODE_VIEW.STATUS,
FLEET_MASTER_VIEW.AVIS_COMP_CODE,
FLEET_MASTER_VIEW.MANUFACTURER_CODE,
TB_GRACE_KMS,
TB_COST_PER_KM,
CAR_BODY,
IF(FLEET_MASTER_VIEW.[M&M_CODE] <> 0, FLEET_MASTER_VIEW.[M&M_CODE], AVIS_MODEL_CODE_VIEW.M_AND_M_REF) M_AND_M_REF,
FLEET_MASTER_VIEW.DISTANCE_LIMIT,
IF(FLEET_MASTER_VIEW.FUEL_TANK_CAPACITY <> 0,FLEET_MASTER_VIEW.FUEL_TANK_CAPACITY ,AVIS_MODEL_CODE_VIEW.FUEL_TANK_CAPACITY) FUEL_TANK_CAPACITY,
RESIDUAL_PERC,
WIZARD_USED_CODE,
IF(FLEET_MASTER_VIEW.FUEL_CONSUMPTION <> 0,FLEET_MASTER_VIEW.FUEL_CONSUMPTION ,AVIS_MODEL_CODE_VIEW.FUEL_CONSUMPTION) FUEL_CONSUMPTION,
IF(FLEET_MASTER_VIEW.VEHICLE_MODEL_CODE IS NOT NULL,FLEET_MASTER_VIEW.VEHICLE_MODEL_CODE ,AVIS_MODEL_CODE_VIEW.MANUFACTURER_MODEL_NO) MANUFACTURER_MODEL_NO,
IF(FLEET_MASTER_VIEW.FUEL_TYPE IS NOT NULL ,FLEET_MASTER_VIEW.FUEL_TYPE ,AVIS_MODEL_CODE_VIEW.FUEL_DIESEL_IND) FUEL_DIESEL_IND,
IF(FLEET_MASTER_VIEW.CO2_EMISSION <> 0,FLEET_MASTER_VIEW.CO2_EMISSION,AVIS_MODEL_CODE_VIEW.CO2) CO2
FROM FLEET_MASTER_VIEW  LEFT JOIN 
AVIS_MODEL_CODE_VIEW ON FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE

Regards,
Kieran

--NEW VERSION 04 APRIL 2017 (INTO A TEMP TABLE):
--------------------------------
select * INTO #TEMP2 from openquery(TRACCS, '
SELECT
REGISTRATION_NO,
MVA_NUMBER,MVA_CHECK,
WIZARD_MODEL_CODE, 
ISN_AVIS_MODEL_CODE_VIEW ISN_3_112,
SHORT_DESCRIPTION ,
LONG_DESCRIPTION,
AVIS_MODEL_CODE_VIEW.STATUS,
FLEET_MASTER_VIEW.AVIS_COMP_CODE,
FLEET_MASTER_VIEW.MANUFACTURER_CODE,
TB_GRACE_KMS,
TB_COST_PER_KM,
CAR_BODY,
IF(FLEET_MASTER_VIEW.[M&M_CODE] <> 0 AND FLEET_MASTER_VIEW.[M&M_CODE] <> '''', FLEET_MASTER_VIEW.[M&M_CODE], AVIS_MODEL_CODE_VIEW.M_AND_M_REF) M_AND_M_REF,
FLEET_MASTER_VIEW.DISTANCE_LIMIT,
IF(FLEET_MASTER_VIEW.FUEL_TANK_CAPACITY <> 0 AND FLEET_MASTER_VIEW.FUEL_TANK_CAPACITY <> '''',FLEET_MASTER_VIEW.FUEL_TANK_CAPACITY ,AVIS_MODEL_CODE_VIEW.FUEL_TANK_CAPACITY) FUEL_TANK_CAPACITY,
RESIDUAL_PERC,
WIZARD_USED_CODE,
IF(FLEET_MASTER_VIEW.FUEL_CONSUMPTION <> 0 AND FLEET_MASTER_VIEW.FUEL_CONSUMPTION <> '''',FLEET_MASTER_VIEW.FUEL_CONSUMPTION ,AVIS_MODEL_CODE_VIEW.FUEL_CONSUMPTION) FUEL_CONSUMPTION,
IF(FLEET_MASTER_VIEW.VEHICLE_MODEL_CODE IS NOT NULL AND FLEET_MASTER_VIEW.VEHICLE_MODEL_CODE <> '''',FLEET_MASTER_VIEW.VEHICLE_MODEL_CODE ,AVIS_MODEL_CODE_VIEW.MANUFACTURER_MODEL_NO) MANUFACTURER_MODEL_NO,
IF(FLEET_MASTER_VIEW.FUEL_TYPE IS NOT NULL AND FLEET_MASTER_VIEW.FUEL_TYPE <> '''',FLEET_MASTER_VIEW.FUEL_TYPE ,AVIS_MODEL_CODE_VIEW.FUEL_DIESEL_IND) FUEL_DIESEL_IND,
IF(FLEET_MASTER_VIEW.CO2_EMISSION <> 0 AND FLEET_MASTER_VIEW.CO2_EMISSION <> '''',FLEET_MASTER_VIEW.CO2_EMISSION,AVIS_MODEL_CODE_VIEW.CO2) CO2
FROM FLEET_MASTER_VIEW  LEFT JOIN 
AVIS_MODEL_CODE_VIEW ON FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE
')

*/
--------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------

--MPSVAN00 :
--2510         'A10003',/* KIERAN ADDED - 02 APRIL 2017
--3820     VALUE 'A10003' /* KIERAN ADDED - 02 APRIL 2017
--3830       MOVE '5502' TO RA-MAINT-VIEW.RENTING-STATION /* KIERAN ADDED - 02 APRIL 2017

--BEINTAYR:
/*
3150   IF      L1.RENTING-STATION NE  '4901'
3160       AND L1.RENTING-STATION NE  '4902'
3170       AND L1.RENTING-STATION NE  '5401'
3180       AND L1.RENTING-STATION NE  '5402'
3190       AND L1.RENTING-STATION NE  '5501'
3200       AND L1.RENTING-STATION NE  '5502'
3210       AND L1.RENTING-STATION NE  '7054'
3220       AND L1.RENTING-STATION NE  '7049'
3230       AND L1.RENTING-STATION NE  '5404'
3240       AND L1.RENTING-STATION NE  '7055'
3250       AND L1.RENTING-STATION NE  '5403'
3260       AND L1.RENTING-STATION NE  '5405'
3270       AND L1.RENTING-STATION NE  '5412'
3280       AND L1.RENTING-STATION NE  '5504'
3290       AND L1.RENTING-STATION NE  '5505'
3300       AND L1.RENTING-STATION NE  '5506'
3310       AND L1.RENTING-STATION NE  '5407'
3320       AND L1.RENTING-STATION NE  '5408'
3330     ESCAPE TOP 
*/

select 'BENITAYR: (Report should have +/- 600 Rentals, however it shows +/- 2000)'
/*
select * from openquery(TRACCS, '
SELECT * FROM RA_MAINT_VIEW WHERE 
PERIOD_CCYYPP = ''211706'' AND AVIS_COMP_CODE = ''AV''
AND RENTING_STATION IN
(
''4901'',
''4902'',
''5401'',
''5402'',
''5501'',
''5502'',
''7054'',
''7049'',
''5404'',
''7055'',
''5403'',
''5405'',
''5412'',
''5504'',
''5505'',
''5506'',
''5407'',
''5408''
)
')
*/












/*
select USER_PASSWORD,* from openquery(TRACCS, '
SELECT * FROM USER_ID_VIEW WHERE USER_PASSWORD IS NOT NULL
')
*/

/*
select  'new SID users only:'
select * from openquery(TRACCS, '
SELECT CONTROL_USERS.*,
TRACCS_USER.AVIS_COMP_CODE as TRACCS_USER_AVIS_COMP_CODE,TRACCS_USER.USER_ID as TRACCS_USER_USER_ID,TRACCS_USER.USER_NAME as TRACCS_USER_USER_NAME,TRACCS_USER.PASSWORD,TRACCS_USER.ENTRY_USER,TRACCS_USER.ENTRY_TIME,TRACCS_USER.LOCK_TIME,TRACCS_USER.LOCK_IND,TRACCS_USER.EXPIRY_DATE	
FROM CONTROL_USERS,TRACCS_USER WHERE 
CONTROL_USERS.USER_ID *= TRACCS_USER.USER_ID
AND USER_REC_TYPE = 1
/* AND USER_OPEN_BLOCK_IND = ''O'' */
/* AND EXPIRY_DATE >= ''2016-01-01''  */            /* note this is used so that it doesnt include DEV accounts*/
AND USER_GROUP_ID = ''SID''
ORDER BY USER_GROUP_ID
')
*/

-- VAN RENTAL SPLITS :
/*
select 'Find all van rental splits(75% foes to FLEET_VENDOR 25% goes to STATION_VENDOR:'
select * from openquery(TRACCS, '
SELECT VRV_NO VRV_NOx,(CASE WHEN LENGTH(CONVERT(RA_NUMBER,char(11))) = 11 THEN RA_NUMBER /100 ELSE RA_NUMBER END),RA_NUMBER RA_NUMBERx,VENDOR_NO VENDOR_NOx,TPW_AMOUNT TPW_AMOUNTx,* FROM RA_MAINT_VIEW WHERE PERIOD_CCYYPP = ''211705'' AND AVIS_COMP_CODE = ''AV''
AND VRV_RENTAL_YB = ''Y'' AND VRV_NO >= 50 
ORDER BY (CASE WHEN LENGTH(CONVERT(RA_NUMBER,char(11))) = 11 THEN RA_NUMBER /100 ELSE RA_NUMBER END)
')
*/

/*NNNNNNNNNNNNNBBBBBBBBBBBBBBBBB Reset All Dev Passwords to Password@1 and unlock all*/
/*
update openquery(TRACCSQA, '
SELECT * FROM TRACCS_USER 
')
SET LOCK_IND = ''  ,[PASSWORD] = 'Password@1' , EXPIRY_DATE = '2050/11/15'
*/

-- this seems to have worked :FIX ME !!!!!!!!!!!!!!!!
/*
INSERT 
INTO OPENQUERY(TRACCSQA, 'select
AVIS_COMP_CODE,	MVA_NUMBER,	MVA_CHECK,	REGISTRATION_NO,	AVIS_MODEL_CODE,	MANUFACTURER_COLOUR_CODE,	NON_POOL,	CAR_RENTAL_GROUP,CHASSIS_NUMBER,	ENGINE_NUMBER	,MANUFACTURER_CODE,	MANUFACTURER_JOB,	FACTORY_ACCESSORIES	ADDON_ACCESSORIES,	IGNITION_KEY,	TRUNK_KEY,	IMMOBILISER,	MOTOR_CODE,	ASSET_TYPE	,PURCHASE_TYPE	,LICENCE_EXPIRY_DATE,	ORDER_NO,	ORDER_ITEM,	DEALER_CODE	,VEHICLE_STATUS,	STATUS_CHANGE_TIME,	PAYMENT_DUE_DATE,	VPS_NO,	VPI_NO,	PURCHASE_PRICE	,OPERATING_PERIOD,	TURNBACK_DATE,	DISTANCE_LIMIT,	SHIPMENT_DATE,	SHIPMENT_REF,	BUYBACK_PRICE,	LEASE_SCHEDULE_NO,	INSTALLATION_DATE,	INSTALLATION_STATION,	DAMAGED_IND_YN,	INSTALLATION_KMS,	CAPITAL_ACCESSORIES_PRICE,	ADDON_ACCESSORIES_PRICE,	RESIDUAL_AMOUNT	,PERIOD_CCYYPP,	INTEREST_MTH,	INTEREST_TODATE,	INSURANCE_MTH,	INSURANCE_TODATE,	DEPRECIATION_MTH,	DEPRECIATION_TODATE	,NETT_BOOK_VALUE,	RECALL_IND_RB	,WIZARD_COLOUR_CODE	,SERVICE_DUE_KMS	,CAPITAL_ACCESSORIES	,LEASE_LAST_PAYMENT,	LEASE_PAYMENT_TODATE	,VPS_PRICE,	PRICE_PAID,	INSTALLATION_DOC_REF,	TRADE_VALUE,	LEASE_STATUS,	LEASE_LAST_DATE,	COSTING_END_DATE,	COSTING_START_DATE,	DEPR_RECOVERY,	DEPR_RECOVERY_REV,	DEPR_SHORTFALL	,DEPR_SHORTFALL_REV	,STAFF_YN,	ASSET_ADJUSTMENT,	ASSET_DISPOSAL,	ASSET_RECOVERY	,ASSET_TAKE_ON,	OLD_PURCHASE_TYPE,	PTYPE_CONTROL,	NAMIBIAN_YB	,PUC_ASSET_SOLD,PUC_STATION,	PUC_REMARKS,	PUC_USER_ID,	PUC_ADD_SOLD_TIME,	RECOVERY_CONDITION,	RECOVERY_DATE,	RECOVERY_KM_READING,	RECOVERY_PERSON,	RECOVERY_STATION,	TAX_AMOUNT,	LAST_STATION,	MVA_CHANGE_DATE	,OLD_MVA_CHECK,	PAYMENT_INVOICE_NO,	PAYMENT_ADVICE_NO,	PAYMENT_ADVICE_DATE	AA_DATA_TIME,	AA_LAST_STATUS,	AUTO_R_DATE	,HPI_DATA_TIME,	HPI_LAST_STATUS,	TMC_UPDATE_IND	,RSA_FLEET,	VPOD_DATE,	LEASE_CHARGES,	FLEET_MODEL_CODE,	VPOD_UPDATED,	CO2_EMISSION,	TYRE_SIZE,	[M&M_CODE],	FUEL_TANK_CAPACITY,	FUEL_CONSUMPTION,	FUEL_TYPE,	VEHICLE_MODEL_CODE,	RETAIL_PRICE,	WIZ_DELIVERY_DATE,	PROFIT_SHARE,	LEASE_AGREEMENT_AMOUNT,	LEASE_SETTLEMENT_AMOUNT,	ENTRY_USER_ID,	ENTRY_USER_TIME,	REMARKS
from fleet_master_view')
SELECT AVIS_COMP_CODE,	MVA_NUMBER,	MVA_CHECK,	REGISTRATION_NO,	AVIS_MODEL_CODE,	MANUFACTURER_COLOUR_CODE,	NON_POOL,	CAR_RENTAL_GROUP,CHASSIS_NUMBER,	ENGINE_NUMBER	,MANUFACTURER_CODE,	MANUFACTURER_JOB,	FACTORY_ACCESSORIES	ADDON_ACCESSORIES,	IGNITION_KEY,	TRUNK_KEY,	IMMOBILISER,	MOTOR_CODE,	ASSET_TYPE	,PURCHASE_TYPE	,LICENCE_EXPIRY_DATE,	ORDER_NO,	ORDER_ITEM,	DEALER_CODE	,VEHICLE_STATUS,	STATUS_CHANGE_TIME,	PAYMENT_DUE_DATE,	VPS_NO,	VPI_NO,	PURCHASE_PRICE	,OPERATING_PERIOD,	TURNBACK_DATE,	DISTANCE_LIMIT,	SHIPMENT_DATE,	SHIPMENT_REF,	BUYBACK_PRICE,	LEASE_SCHEDULE_NO,	INSTALLATION_DATE,	INSTALLATION_STATION,	DAMAGED_IND_YN,	INSTALLATION_KMS,	CAPITAL_ACCESSORIES_PRICE,	ADDON_ACCESSORIES_PRICE,	RESIDUAL_AMOUNT	,PERIOD_CCYYPP,	INTEREST_MTH,	INTEREST_TODATE,	INSURANCE_MTH,	INSURANCE_TODATE,	DEPRECIATION_MTH,	DEPRECIATION_TODATE	,NETT_BOOK_VALUE,	RECALL_IND_RB	,WIZARD_COLOUR_CODE	,SERVICE_DUE_KMS	,CAPITAL_ACCESSORIES	,LEASE_LAST_PAYMENT,	LEASE_PAYMENT_TODATE	,VPS_PRICE,	PRICE_PAID,	INSTALLATION_DOC_REF,	TRADE_VALUE,	LEASE_STATUS,	LEASE_LAST_DATE,	COSTING_END_DATE,	COSTING_START_DATE,	DEPR_RECOVERY,	DEPR_RECOVERY_REV,	DEPR_SHORTFALL	,DEPR_SHORTFALL_REV	,STAFF_YN,	ASSET_ADJUSTMENT,	ASSET_DISPOSAL,	ASSET_RECOVERY	,ASSET_TAKE_ON,	OLD_PURCHASE_TYPE,	PTYPE_CONTROL,	NAMIBIAN_YB	,PUC_ASSET_SOLD,PUC_STATION,	PUC_REMARKS,	PUC_USER_ID,	PUC_ADD_SOLD_TIME,	RECOVERY_CONDITION,	RECOVERY_DATE,	RECOVERY_KM_READING,	RECOVERY_PERSON,	RECOVERY_STATION,	TAX_AMOUNT,	LAST_STATION,	MVA_CHANGE_DATE	,OLD_MVA_CHECK,	PAYMENT_INVOICE_NO,	PAYMENT_ADVICE_NO,	PAYMENT_ADVICE_DATE	AA_DATA_TIME,	AA_LAST_STATUS,	AUTO_R_DATE	,HPI_DATA_TIME,	HPI_LAST_STATUS,	TMC_UPDATE_IND	,RSA_FLEET,	VPOD_DATE,	LEASE_CHARGES,	FLEET_MODEL_CODE,	VPOD_UPDATED,	CO2_EMISSION,	TYRE_SIZE,	[M&M_CODE],	FUEL_TANK_CAPACITY,	FUEL_CONSUMPTION,	FUEL_TYPE,	VEHICLE_MODEL_CODE,	RETAIL_PRICE,	WIZ_DELIVERY_DATE,	PROFIT_SHARE,	LEASE_AGREEMENT_AMOUNT,	LEASE_SETTLEMENT_AMOUNT,	ENTRY_USER_ID,	ENTRY_USER_TIME,	REMARKS
from OPENQUERY(TRACCS, 'select * from fleet_master_view where MVA_NUMBER = 123123 ')
*/





SELECT 'WHAT PROGRAMS GET CALLED BY WHAT MENU ITEMS who has access to what in TRACCS (EVERYTHING):'
select * from openquery(TRACCS, '
select * from CONTROL_MENUS 
WHERE MENU_SYSTEM_CODE = ''R''
')


SELECT 'WHAT PROGRAMS GET CALLED BY WHAT MENU ITEMS who has access to what in TRACCS:'
select * from openquery(TRACCS, '
select * from CONTROL_MENUS 
WHERE MENU_FUNCTION2 IN
(
 ''MM'',
 ''ME'', /* RFLE07PY */
 ''MF'',
 ''SH'', /* TFLV02PT */
 ''LR'', /* LRDMENU  */
 ''IN'', /* RFLV03P  */
 ''OR'', /* RFLV01P */
 ''EO''  /* OPENRAMN -> OPENRATS */
)
')




/* This should find the duplicate reg numbers / reused registration numbers / recycled mva numbers = Registration_Number_Exist_with_different_Mva''s-20170201.csv */
--02 March 2017 there were 88 - after erfdaily ruin (Access granted to Oupa and Tumelo today)
--02 MArch 85 
--03 MArch 82
--06 MArch 82
--07 MArch 72
--14 MArch 73
--15 MArch 71
--16 MArch 72
--22 MArch 73
--23 MArch 73
--27 March 71
--28 MArch 70
--29 MArch 70
--30 March 74
--31 March 75
--03 April 71
--04 April 78
--11 April (ZA RAC only) there are 3
--12 April (ZA RAC only) there are 0
select 'NNNNNNNNNNNNBBBBBBBBBBBBBBBBBBBB : Oupa started using this file today : Registration_Number_Exist_with_different_Mva''s-20170201.csv'
select 'C:\Users\kieran.swanepoel\Dropbox\ALL TRACCS tasks\investigate\Duplicate reg numbers FD59CFGP.bat'
select 'Example : \\raCFS.ABGZA.CO.ZA\NATREPORTS\DailyFleet\VehicleExceptions\Different_Reg_No-20161207.csv:5817545 ,FD59CFGP  ,E1 ,FD59CZGP  ,  WHI BAL57020550,  E0442409914'

select 'duplicate reg numbers rac only if comment below put back(actually same reg different mva report) : '
select * from openquery(TRACCS, '
SELECT VEHICLE_DELIVERY_DATE VEHICLE_DELIVERY_DATEx,VEH_MAKE_MODEL_CODE VEH_MAKE_MODEL_CODEx,FLEET_MASTER_VIEW.VEHICLE_STATUS FLEET_MASTER_VIEW_VEHICLE_STATUS , NAMIBIAN_YB NAMIBIAN_YBx , FLEET_MASTER_VIEW.MVA_NUMBER FMV.MVA_NUMBER , FLEET_MOVEMENT.*
from FLEET_MASTER_VIEW LEFT JOIN FLEET_MOVEMENT ON FLEET_MASTER_VIEW.REGISTRATION_NO = FLEET_MOVEMENT.VEHICLE_LICENCE_NUMBER AND FLEET_MASTER_VIEW.MVA_NUMBER <> FLEET_MOVEMENT.MVA_NUMBER
WHERE FLEET_MOVEMENT.MVA_NUMBER IS NOT NULL
AND NAMIBIAN_YB IS NULL AND FLEET_MASTER_VIEW.VEHICLE_STATUS IN (''A'',''E'')
ORDER BY VEHICLE_DELIVERY_DATE DESC
')

/*
select 'actually same mva different reg report : '
select * from openquery(TRACCS, '
SELECT FLEET_MASTER_VIEW.MVA_NUMBER FMV.MVA_NUMBER ,VEHICLE_LICENCE_NUMBER VEHICLE_LICENCE_NUMBERx ,REGISTRATION_NO,VEHICLE_DELIVERY_DATE VEHICLE_DELIVERY_DATEx,VEH_MAKE_MODEL_CODE VEH_MAKE_MODEL_CODEx,FLEET_MASTER_VIEW.VEHICLE_STATUS FLEET_MASTER_VIEW_VEHICLE_STATUS , NAMIBIAN_YB NAMIBIAN_YBx , FLEET_MOVEMENT.*
from FLEET_MASTER_VIEW LEFT JOIN FLEET_MOVEMENT ON FLEET_MASTER_VIEW.REGISTRATION_NO <> FLEET_MOVEMENT.VEHICLE_LICENCE_NUMBER AND FLEET_MASTER_VIEW.MVA_NUMBER = FLEET_MOVEMENT.MVA_NUMBER
WHERE FLEET_MOVEMENT.MVA_NUMBER IS NOT NULL AND REGISTRATION_NO <> ''NOT KNOWN''
AND NAMIBIAN_YB IS NULL AND FLEET_MASTER_VIEW.VEHICLE_STATUS IN (''A'',''E'')
ORDER BY VEHICLE_DELIVERY_DATE DESC
')
*/

-- to find the 2 Registrations from above :
/*
select * from openquery(TRACCS, '
SELECT * FROM FLEET_MASTER_VIEW WHERE REGISTRATION_NO = ''FZ58PPGP''
')
select * from openquery(TRACCS, '
SELECT * FROM FLEET_MOVEMENT WHERE VEHICLE_LICENCE_NUMBER = ''FZ58PPGP''
')
*/



--FD39ZLGP
select 'COMPARISON OF WHERE FLEET_MOVEMENT.VEH_MAKE_MODEL_CODE <> WIZARD_MODEL_CODE IN TRACCS AND WIZARD WHERE THEY ARE DIFFERENT (Prize Query with additions):'
select 'Now its only South African RAC Fleet and only A and E cars'
--There are currently 3608 cars on 3 March 2017 
--3601 cars on 6 March 2017 
--3598 cars on 7 March 2017 
--3599 cars on 14 March 2017
--2987 cars on 15 MArch 2017
--2807 cars on 16 MArch 2017
--2656 cars on 22 MArch 2017
--2627 cars on 23 MArch 2017
--57 NAMIBIAN_YB IS NULL cars AND FLEET_MASTER_VIEW.VEHICLE_STATUS IN (''A'',''E'') on 23 March 2016
--38 NAMIBIAN_YB IS NULL cars AND FLEET_MASTER_VIEW.VEHICLE_STATUS IN (''A'',''E'') on 28 March 2016
--41 NAMIBIAN_YB IS NULL cars AND FLEET_MASTER_VIEW.VEHICLE_STATUS IN (''A'',''E'') on 29 March 2016
--13 NAMIBIAN_YB IS NULL cars AND FLEET_MASTER_VIEW.VEHICLE_STATUS IN (''A'',''E'') on 30 March 2016
--14 NAMIBIAN_YB IS NULL cars AND FLEET_MASTER_VIEW.VEHICLE_STATUS IN (''A'',''E'') on 31 March 2016
--14 NAMIBIAN_YB IS NULL cars AND FLEET_MASTER_VIEW.VEHICLE_STATUS IN (''A'',''E'') on 03 April 2016
--14 NAMIBIAN_YB IS NULL cars AND FLEET_MASTER_VIEW.VEHICLE_STATUS IN (''A'',''E'') on 04 April 2016
--16 NAMIBIAN_YB IS NULL cars AND FLEET_MASTER_VIEW.VEHICLE_STATUS IN (''A'',''E'') on 11 April 2016
--15 NAMIBIAN_YB IS NULL cars AND FLEET_MASTER_VIEW.VEHICLE_STATUS IN (''A'',''E'') on 12 April 2016
select * from openquery(TRACCS, '
SELECT ISN_AVIS_MODEL_CODE_VIEW ISN_3_112, 
FLEET_MASTER_VIEW.NAMIBIAN_YB NAMIBIAN_YBx,
FLEET_MASTER_VIEW.INSTALLATION_DATE INSTALLATION_DATEx,
FLEET_MOVEMENT.VEH_MAKE_MODEL_CODE VEH_MAKE_MODEL_CODEx  , WIZARD_MODEL_CODE WIZARD_MODEL_CODEx,  
FLEET_MOVEMENT.VEH_MAKE_MODEL_DESC VEH_MAKE_MODEL_DESCx ,
SHORT_DESCRIPTION SHORT_DESCRIPTIONx,
LONG_DESCRIPTION LONG_DESCRIPTIONx,
FLEET_MASTER_VIEW.VEHICLE_STATUS FLEET_MASTER_VIEW.VEHICLE_STATUSx, 
FLEET_MASTER_VIEW.SHIPMENT_DATE FLEET_MASTER_VIEW.SHIPMENT_DATEx, 
FLEET_MASTER_VIEW.FLEET_MODEL_CODE FLEET_MASTER_VIEW.FLEET_MODEL_CODEx,
REGISTRATION_NO REGISTRATION_NOx,
FLEET_MASTER_VIEW.MVA_NUMBER MVA_NUMBERx,
MVA_CHECK MVA_CHECKx,
AVIS_MODEL_CODE_VIEW.STATUS AVIS_MODEL_CODE_VIEW.STATUSx,
FLEET_MASTER_VIEW.AVIS_COMP_CODE FLEET_MASTER_VIEW.AVIS_COMP_CODEx,
FLEET_MASTER_VIEW.MANUFACTURER_CODE FLEET_MASTER_VIEW.MANUFACTURER_CODEx,
TB_GRACE_KMS TB_GRACE_KMSx ,
TB_COST_PER_KM TB_COST_PER_KMx,
CAR_BODY CAR_BODYx,
IF(FLEET_MASTER_VIEW.[M&M_CODE] <> 0, FLEET_MASTER_VIEW.[M&M_CODE], AVIS_MODEL_CODE_VIEW.M_AND_M_REF) M_AND_M_REFx,
FLEET_MASTER_VIEW.DISTANCE_LIMIT FLEET_MASTER_VIEW.DISTANCE_LIMITx,
IF(FLEET_MASTER_VIEW.FUEL_TANK_CAPACITY <> 0,FLEET_MASTER_VIEW.FUEL_TANK_CAPACITY ,AVIS_MODEL_CODE_VIEW.FUEL_TANK_CAPACITY) FUEL_TANK_CAPACITYx,
RESIDUAL_PERC RESIDUAL_PERCx,
WIZARD_USED_CODE WIZARD_USED_CODEx,
IF(FLEET_MASTER_VIEW.FUEL_CONSUMPTION <> 0,FLEET_MASTER_VIEW.FUEL_CONSUMPTION ,AVIS_MODEL_CODE_VIEW.FUEL_CONSUMPTION) FUEL_CONSUMPTIONx,
IF(FLEET_MASTER_VIEW.VEHICLE_MODEL_CODE IS NOT NULL,FLEET_MASTER_VIEW.VEHICLE_MODEL_CODE ,AVIS_MODEL_CODE_VIEW.MANUFACTURER_MODEL_NO) MANUFACTURER_MODEL_NOx,
IF(FLEET_MASTER_VIEW.FUEL_TYPE IS NOT NULL ,FLEET_MASTER_VIEW.FUEL_TYPE ,AVIS_MODEL_CODE_VIEW.FUEL_DIESEL_IND) FUEL_DIESEL_INDx,
IF(FLEET_MASTER_VIEW.CO2_EMISSION <> 0,FLEET_MASTER_VIEW.CO2_EMISSION,AVIS_MODEL_CODE_VIEW.CO2) CO2x,
FLEET_MASTER_VIEW.* 
FROM FLEET_MASTER_VIEW  LEFT JOIN 
AVIS_MODEL_CODE_VIEW ON FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE
LEFT JOIN FLEET_MOVEMENT ON FLEET_MASTER_VIEW.REGISTRATION_NO = FLEET_MOVEMENT.VEHICLE_LICENCE_NUMBER
WHERE FLEET_MOVEMENT.VEH_MAKE_MODEL_CODE <> WIZARD_MODEL_CODE
AND NAMIBIAN_YB IS NULL
AND FLEET_MASTER_VIEW.VEHICLE_STATUS IN (''A'',''E'')
/* and FLEET_MASTER_VIEW.[M&M_CODE] = ''26526400'' */
ORDER BY INSTALLATION_DATE DESC
')



/*
From: Corne Rabe 
Sent: 13 Nov 15 14:50
To: Mahomed Dadabhai <Mahomed.Dadabhai@avisbudget.co.za>
Cc: Berto Basson <Berto.Basson@bwmr.co.za>
Subject: RE: Avis RAC

Hi Mahomed,

Details as requested below.

Server: bmr-isdb-legacy.cloudapp.net
Database: 
•	DiskDrive
•	IntegrationDB
•	MeadMcGrouther

RAC: 
Username: bw-rac-sql-mm 
Password: OPbaW#cIu#

The 3 databases is hosted in the cloud but can be accessed the same way than normal on premise databases. 

Hlekani can give Berto a call if she can’t connect.

Regards,


Cornè Rabè
Information & Development Manager
Barloworld Motor Retail

*/
/*
select 'The MandM Database would be queried something like this WE AHVE THE CO2 EMISSIONS !!!!!!!!!!!!!!!!:'

SELECT *, [ID]
      ,[MMCode]
      ,[VehicleType]
      ,[Make]
      ,[Variant]
      ,[Cyl]
      ,[CubicCapacity]
      ,[Kilowatts]
      ,[BodyType]
      ,[NoOfDoors]
      ,[FuelType]
      ,[FuelCapacity]
      ,[IntroDate]
      ,[DiscDate]
      ,[TareWeight]
      ,[No_Seats]
      ,[GVM]
      ,[CO2]
      ,[Code]
      ,[c18]
      ,[Year]
      ,[Month]
      ,[InsertDate]
      ,[Master_Model]
      ,[Name]
      ,[Axle]
  FROM [bmr-isdb-legacy.cloudapp.net].[MeadMcGrouther].[dbo].[CodesAndDescription] where MMCode = 26526400 and Year = 2017
*/

-- MandM codes that have more than 1 CO2 emissions
/*
SELECT [MMCode],[CO2],COUNT(*) MYCOUNT INTO #TEMP
  FROM [bmr-isdb-legacy.cloudapp.net].[MeadMcGrouther].[dbo].[CodesAndDescription] 
  WHERE [CO2] IS NOT NULL AND [CO2] <> ''
  group by [MMCode],[CO2]
  order by [MMCode],[CO2]


SELECT [MMCode],COUNT(*) FROM #TEMP 
GROUP BY [MMCode]
HAVING COUNT(*) > 1


SELECT [MMCode],[CO2],COUNT(*) MYCOUNT INTO #TEMP
  FROM [bmr-isdb-legacy.cloudapp.net].[MeadMcGrouther].[dbo].[CodesAndDescription] 
  WHERE [CO2] IS NOT NULL AND [CO2] <> ''
  AND [MMCode] in
  (

22032123,
22032125,
22032127,
22032129,
22032131,
22032133,
22032139,
22032141,
22032143,
22032145,
22032147,
22032149,
22032151,
22032295,
22032300,
22032403,
22032405,
22032407,
26526561,
30020641,
32122140,
65028220
)
group by [MMCode],[CO2]
order by [MMCode],[CO2]
 */
 


/*
UPDATE openquery(TRACCS, '
SELECT * FROM CCS_DETAIL_FILE  WHERE AVIS_COMP_CODE = ''B1'' AND WIZ_FILE_SEQ_NUMBER = ''730'' 
AND PERIOD_CCYYPP > ''211601'' AND CREDIT_CLUB_CODE = ''CA'' AND INTERNAL_TAPE_SEQ_NO = ''3425''
')
SET PROCESSED_IND = 'NO'
*/

--NNNNNNNNNNNNNNNNNNNNNBBBBBBBBB :
--(28900 row(s) affected)
-- 28900 -- this is the eact line that it seems to have stopped on in iaj0213.za - see the RA E435664305 -- these are the recods loaded with ALXADJW0
-- this gives the exact count and amount of lines from the monthly adjustment file (iaj0213) !!!!
/*
select * from openquery(TRACCS, '
select (if(DR_CR IS NULL , POSTING_AMOUNT , POSTING_AMOUNT*-1)) as ''Total'', BILL_DATE as BILL_DATE2  , POST_BILLING_DATE as POST_BILLING_DATE2 , * from GL_ADJUSTMENTS_VIEW WHERE PERIOD_CCYYPP = ''211705'' 
AND AVIS_COMP_CODE = ''A''  AND VENDOR_NUM <> ''SW0000''
ORDER BY ISN_GL_ADJUSTMENTS_VIEW
')
*/

--NNNNNNNNNNNNNNBBBBBBBBBBBBBBBBBBB DELETE OF THE ABOVE QUERY :
/*
DELETE openquery(TRACCS, '
select * from GL_ADJUSTMENTS_VIEW WHERE PERIOD_CCYYPP = ''211704'' 
AND AVIS_COMP_CODE = ''A''  AND VENDOR_NUM <> ''SW0000''
')
*/

--Prepayment Trigger :
--select * from openquery(TRACCS, '
--SELECT TRIGGER_DATA FROM TRIGGER_VIEW WHERE TRIGGER_KEY = ''PREPAY'' AND TRIGGER_JOB_NAME = ''CONTROL'' AND AVIS_COMP_CODE = ''AV''
--')



--CLMV10P and CLMH00N1 : 
--Claims audit trail CLMAUD :
--select * from openquery(TRACCS, '
--SELECT ENTRY_TIME xENTRY_TIME ,AUDIT_TIME xAUDIT_TIME, HANDLER xHANDLER,STATUS_STAGE xSTATUS_STAGE ,STATUS_CHANGE_TIME xSTATUS_CHANGE_TIME ,*  FROM CLAIMS_REGISTER_AUD WHERE CLAIM_NO = ''17/616701''
--')

/*
--Wandas query :
select * from openquery(TRACCS, '
SELECT RUN_DATE rundate,LEDGER_ACCOUNT_NO ledgeraccount ,LEDGER_SUB_ACC_NO subacc,CHARGED_STATION chargedstat,SUM(SELECT If(CHARGED_AMOUNT_SIGN = ''-'', CHARGED_AMOUNT*-1, CHARGED_AMOUNT)),* FROM ACC_RDS_DAILY WHERE PERIOD_CCYYPP = ''211704'' AND AVIS_COMP_CODE = ''ZA''
AND AVIS_BUDGET_IND = ''B''  AND CHARGED_STATION = 1395 
GROUP BY CHARGED_STATION , LEDGER_SUB_ACC_NO
ORDER BY CHARGED_STATION , LEDGER_SUB_ACC_NO
')
*/

/*
--Wandas query for 8 detail:
select * from openquery(TRACCS, '
SELECT RUN_DATE rundate,LEDGER_ACCOUNT_NO ledgeraccount ,LEDGER_SUB_ACC_NO subacc,CHARGED_STATION chargedstat,(SELECT If(CHARGED_AMOUNT_SIGN = ''-'', CHARGED_AMOUNT*-1, CHARGED_AMOUNT)),* FROM ACC_RDS_DAILY WHERE PERIOD_CCYYPP = ''211704'' AND AVIS_COMP_CODE = ''ZA''
AND AVIS_BUDGET_IND = ''B''  AND CHARGED_STATION = 1395 AND LEDGER_SUB_ACC_NO = 0008
/*GROUP BY CHARGED_STATION , LEDGER_SUB_ACC_NO */
 ORDER BY CHARGED_STATION , LEDGER_SUB_ACC_NO 
')
*/

--Filtered for GLRD use Copy of accrJAN2017mon.za.xlsx :
select * from openquery(TRACCS, '
SELECT RUN_DATE rundate,LEDGER_ACCOUNT_NO ledgeraccount ,LEDGER_SUB_ACC_NO subacc,CHARGED_STATION chargedstat,SUM(SELECT If(CHARGED_AMOUNT_SIGN = ''-'', CHARGED_AMOUNT*-1, CHARGED_AMOUNT)),* FROM ACC_RDS_DAILY WHERE PERIOD_CCYYPP = ( select PERIOD from GETCCYYPP ) AND AVIS_COMP_CODE = ''ZA''
AND AVIS_BUDGET_IND = ''A''  AND LEDGER_SUB_ACC_NO <>  ''0000''
GROUP BY CHARGED_STATION , LEDGER_ACCOUNT_NO , LEDGER_SUB_ACC_NO
ORDER BY CHARGED_STATION , LEDGER_ACCOUNT_NO , LEDGER_SUB_ACC_NO
')


/*
      Id Node Id  Login Id      ES Id User Id  File           ISN Locks  Flg
      -- -------  --------      ----- -------  ----           --- -----  ---
     583 FLEET26  063cf410       3088 3088      119       345,586   X
     583 FLEET26  063cf410       3088 3088      119       345,310   X
*/
--Adriaan Kleynhans Autoshipments : He doesnt even know how to do them ?
/*


select * from openquery(TRACCS, '
select * from FLEET_MASTER_AUDIT_FILE WHERE AUDIT_USER IN (
''FLEETT02'', /* Adriaan */
''FLEET03''   /* Oupa */
)
')
*/

/*
The 3 fleet tables together with PUC and movements:


select * from openquery(TRACCS, '
SELECT * FROM FLEET_MASTER_VIEW,FLEET_STATUS_VIEW,FLEET_MASTER_AUDIT_FILE ,PUC_MASTER_ViEW,CAR_MOVEMENT_VIEW 
WHERE
FLEET_MASTER_VIEW.REGISTRATION_NO = ''FC77LBGP''
AND
FLEET_MASTER_VIEW.MVA_NUMBER = FLEET_STATUS_VIEW.MVA_NUMBER and FLEET_STATUS_VIEW.AVIS_COMP_CODE = ''AV''
AND
FLEET_MASTER_VIEW.MVA_NUMBER = FLEET_MASTER_AUDIT_FILE.MVA_NUMBER and FLEET_MASTER_AUDIT_FILE.AVIS_COMP_CODE = ''AV''
AND
FLEET_MASTER_VIEW.MVA_NUMBER = PUC_MASTER_ViEW.MVA_NUMBER AND PUC_MASTER_ViEW.AVIS_COMP_CODE = ''AV''
AND
FLEET_MASTER_VIEW.MVA_NUMBER = CAR_MOVEMENT_VIEW.MVA_NUMBER AND CAR_MOVEMENT_VIEW.AVIS_COMP_CODE = ''AV''
')
*/

select 'All ADJUSTMENTS FOR THE MONTH :'
select * from openquery(TRACCS, '
select BILL_DATE , POST_BILLING_DATE , VENDOR_NUM as VEN,SUBSTR(GL_ACCOUNT_NUMBER,1,4) as GL_ACCOUNT_NUMBER, VENDOR_NUM, (if(DR_CR IS NULL , POSTING_AMOUNT , POSTING_AMOUNT*-1)) as ''Total'' from GL_ADJUSTMENTS_VIEW WHERE PERIOD_CCYYPP = ( select PERIOD from GETCCYYPP )
order by VENDOR_NUM , BILL_DATE , GL_ACCOUNT_NUMBER 
')


select 'All ADJUSTMENTS FOR THE MONTH ONLY A10000 Avis:'
select * from openquery(TRACCS, '
select BILL_DATE BILL_DATEx, POST_BILLING_DATE POST_BILLING_DATEx , VENDOR_NUM VENDOR_NUMx , 
SUBSTR(GL_ACCOUNT_NUMBER,1,4) as GL_ACCOUNT_NUMBERx,  (if(DR_CR IS NULL , POSTING_AMOUNT , POSTING_AMOUNT*-1)) as ''Total'' , *
from GL_ADJUSTMENTS_VIEW WHERE PERIOD_CCYYPP = ( select PERIOD from GETCCYYPP )
AND VENDOR_NUM = ''A10000''  AND AVIS_COMP_CODE = ''A''
order by VENDOR_NUM , BILL_DATE , GL_ACCOUNT_NUMBER 
')


select 'Heila gets this amount from TRACCS reports 1785132.90 but it should be 2.1 million !!  : '
select * from openquery(TRACCS, '
select SUM(if(DR_CR IS NULL , POSTING_AMOUNT , POSTING_AMOUNT*-1)) as ''Total'', BILL_DATE as BILL_DATE2  , POST_BILLING_DATE as POST_BILLING_DATE2 , * from GL_ADJUSTMENTS_VIEW WHERE PERIOD_CCYYPP = ''211704'' 
/* AND BILL_DATE NOT IN  (''2016-12-30'',''2016-12-31'') */
AND SUBSTR(GL_ACCOUNT_NUMBER,1,4) IN (''0110'',''0111'',''0114'',''0595'',''0596'',''0597'',''0598'',''0599'',''1098'')
AND VENDOR_NUM = ''A10000''  AND AVIS_COMP_CODE = ''A''
')

--group by GL_ACCOUNT_NO
--order by GL_ACCOUNT_NO


select 'Heila not summmarised :'
select * from openquery(TRACCS, '
select (if(DR_CR IS NULL , POSTING_AMOUNT , POSTING_AMOUNT*-1)) as ''Total'', BILL_DATE as BILL_DATE2  , POST_BILLING_DATE as POST_BILLING_DATE2 , * from GL_ADJUSTMENTS_VIEW WHERE PERIOD_CCYYPP = ''211704'' 
/* AND BILL_DATE NOT IN  (''2016-12-30'',''2016-12-31'') */
AND SUBSTR(GL_ACCOUNT_NUMBER,1,4) IN (''0110'',''0111'',''0114'',''0595'',''0596'',''0597'',''0598'',''0599'',''1098'')
AND VENDOR_NUM = ''A10000''  AND AVIS_COMP_CODE = ''A''
')

select 'This one actually works !'
select * from openquery(TRACCS, '
select VENDOR_NUM as VEN,SUBSTR(GL_ACCOUNT_NUMBER,1,4) as GL_ACCOUNT_NUMBERx, VENDOR_NUM VENDOR_NUMx ,POSTING_AMOUNT POSTING_AMOUNTx, SUM(if(DR_CR IS NULL , POSTING_AMOUNT , POSTING_AMOUNT*-1)) as ''Total'',* from GL_ADJUSTMENTS_VIEW WHERE PERIOD_CCYYPP = ''211704'' 
AND SUBSTR(GL_ACCOUNT_NUMBER,1,4) IN (''0110'',''0111'',''0114'',''0595'',''0596'',''0597'',''0598'',''0599'',''1098'')
group by VENDOR_NUM /* ,GL_ACCOUNT_NUMBER */
')

select  'AND SO DOES THIS ONE'
select * from openquery(TRACCS, '
select SUM(if(DR_CR IS NULL , POSTING_AMOUNT , POSTING_AMOUNT*-1)) as ''Total'', BILL_DATE as BILL_DATE2  , POST_BILLING_DATE as POST_BILLING_DATE2 , * from GL_ADJUSTMENTS_VIEW WHERE PERIOD_CCYYPP = ''211704'' 
/* AND BILL_DATE NOT IN  (''2016-12-30'',''2016-12-31'') */
AND SUBSTR(GL_ACCOUNT_NUMBER,1,4) IN (''0110'',''0111'',''0114'',''0595'',''0596'',''0597'',''0598'',''0599'',''1098'')
group by VENDOR_NUM  
')
--2049833.27


SELECT 'FULL FLEET(installed from 2016 onward) WITH MODEL CODE INFORMATION: Runs for 1 MINUTE and 29 seconds !!!!!!!'
/*
select * from openquery(TRACCS, '
SELECT  
       [ISN_FLEET_MASTER_VIEW]
      ,[MVA_NUMBER]
      ,[MVA_CHECK]
      ,[REGISTRATION_NO]
      ,FLEET_MASTER_VIEW.[AVIS_MODEL_CODE] [FMV_AVIS_MODEL_CODE] 
      ,[MANUFACTURER_COLOUR_CODE]
      ,[NON_POOL]
      ,[CAR_RENTAL_GROUP]
      ,[CHASSIS_NUMBER]
      ,[ENGINE_NUMBER]
      ,FLEET_MASTER_VIEW.[MANUFACTURER_CODE] [FMV_MANUFACTURER_CODE]
      ,[MANUFACTURER_JOB]
      ,[FACTORY_ACCESSORIES]
      ,[ADDON_ACCESSORIES]
      ,[IGNITION_KEY]
      ,[TRUNK_KEY]
      ,[IMMOBILISER]
      ,[MOTOR_CODE]
      ,[ASSET_TYPE]
      ,[PURCHASE_TYPE]
      ,[LICENCE_EXPIRY_DATE]
      ,[ORDER_NO]
      ,[ORDER_ITEM]
      ,[DEALER_CODE]
      ,[VEHICLE_STATUS]
      ,[STATUS_CHANGE_TIME]
      ,[PAYMENT_DUE_DATE]
      ,[VPS_NO]
      ,[VPI_NO]
      ,[PURCHASE_PRICE]
      ,[OPERATING_PERIOD]
      ,[TURNBACK_DATE]
      ,FLEET_MASTER_VIEW.[DISTANCE_LIMIT] .[FMV_DISTANCE_LIMIT]
      ,[SHIPMENT_DATE]
      ,[SHIPMENT_REF]
      ,[BUYBACK_PRICE]
      ,[LEASE_SCHEDULE_NO]
      ,[INSTALLATION_DATE]
      ,[INSTALLATION_STATION]
      ,[DAMAGED_IND_YN]
      ,[INSTALLATION_KMS]
      ,[CAPITAL_ACCESSORIES_PRICE]
      ,[ADDON_ACCESSORIES_PRICE]
      ,[RESIDUAL_AMOUNT]
      ,[PERIOD_CCYYPP]
      ,[INTEREST_MTH]
      ,[INTEREST_TODATE]
      ,[INSURANCE_MTH]
      ,[INSURANCE_TODATE]
      ,[DEPRECIATION_MTH]
      ,[DEPRECIATION_TODATE]
      ,[NETT_BOOK_VALUE]
      ,[RECALL_IND_RB]
      ,[WIZARD_COLOUR_CODE]
      ,[SERVICE_DUE_KMS]
      ,[CAPITAL_ACCESSORIES]
      ,[LEASE_LAST_PAYMENT]
      ,[LEASE_PAYMENT_TODATE]
      ,[VPS_PRICE]
      ,[PRICE_PAID]
      ,[INSTALLATION_DOC_REF]
      ,[TRADE_VALUE]
      ,[LEASE_STATUS]
      ,[LEASE_LAST_DATE]
      ,[COSTING_END_DATE]
      ,[COSTING_START_DATE]
      ,[DEPR_RECOVERY]
      ,[DEPR_RECOVERY_REV]
      ,[DEPR_SHORTFALL]
      ,[DEPR_SHORTFALL_REV]
      ,[STAFF_YN]
      ,[ASSET_ADJUSTMENT]
      ,[ASSET_DISPOSAL]
      ,[ASSET_RECOVERY]
      ,[ASSET_TAKE_ON]
      ,[OLD_PURCHASE_TYPE]
      ,[PTYPE_CONTROL]
      ,[NAMIBIAN_YB]
      ,[PUC_ASSET_SOLD]
      ,[PUC_STATION]
      ,[PUC_REMARKS]
      ,[PUC_USER_ID]
      ,[PUC_ADD_SOLD_TIME]
      ,[RECOVERY_CONDITION]
      ,[RECOVERY_DATE]
      ,[RECOVERY_KM_READING]
      ,[RECOVERY_PERSON]
      ,[RECOVERY_STATION]
      ,[TAX_AMOUNT]
      ,[LAST_STATION]
      ,[MVA_CHANGE_DATE]
      ,[OLD_MVA_CHECK]
      ,[PAYMENT_INVOICE_NO]
      ,[PAYMENT_ADVICE_NO]
      ,[PAYMENT_ADVICE_DATE]
      ,[AA_DATA_TIME]
      ,[AA_LAST_STATUS]
      ,[AUTO_R_DATE]
      ,[HPI_DATA_TIME]
      ,[HPI_LAST_STATUS]
      ,[TMC_UPDATE_IND]
      ,[RSA_FLEET]
      ,[VPOD_DATE]
      ,FLEET_MASTER_VIEW.[LEASE_CHARGES] [FMV_LEASE_CHARGES]
      ,FLEET_MASTER_VIEW.[FLEET_MODEL_CODE] [FMV_FLEET_MODEL_CODE]
      ,[VPOD_UPDATED]
      ,[CO2_EMISSION]
      ,[TYRE_SIZE]
      ,[M&M_CODE]
      ,FLEET_MASTER_VIEW.[FUEL_TANK_CAPACITY] [FMV_FUEL_TANK_CAPACITY]
      ,FLEET_MASTER_VIEW.[FUEL_CONSUMPTION] [FMV_FUEL_CONSUMPTION]
      ,[FUEL_TYPE]
      ,[VEHICLE_MODEL_CODE]
      ,[RETAIL_PRICE]
      ,[WIZ_DELIVERY_DATE]
      ,''XXX''
      ,[SHORT_DESCRIPTION]
      ,[LONG_DESCRIPTION]
      ,[STATUS]
      ,FLEET_MASTER_VIEW.[AVIS_COMP_CODE]
      ,FLEET_MASTER_VIEW.[MANUFACTURER_CODE]
      ,FLEET_MASTER_VIEW.[AVIS_MODEL_CODE]
      ,[WIZARD_MODEL_CODE]
      ,[TB_GRACE_KMS]
      ,[TB_COST_PER_KM]
      ,[CAR_BODY]
      ,[M_AND_M_REF]
      ,FLEET_MASTER_VIEW.[DISTANCE_LIMIT]
      ,[SERVICE_DUE_KMS_COUNT]
      ,[SERVICE_DUE_KMS_1]
      ,[SERVICE_DUE_KMS_2]
      ,[SERVICE_DUE_KMS_3]
      ,[SERVICE_DUE_KMS_4]
      ,[SERVICE_DUE_KMS_5]
      ,FLEET_MASTER_VIEW.[FUEL_TANK_CAPACITY]
      ,[RESIDUAL_PERC]
      ,[WIZARD_USED_CODE]
      ,FLEET_MASTER_VIEW.[FUEL_CONSUMPTION]
      ,[MANUFACTURER_MODEL_NO]
      ,[FUEL_DIESEL_IND]
      ,[CO2]
      ,FLEET_MASTER_VIEW.[LEASE_CHARGES]
      ,FLEET_MASTER_VIEW.[FLEET_MODEL_CODE]
FROM FLEET_MASTER_VIEW,AVIS_MODEL_CODE_VIEW  INNER JOIN 
AVIS_MODEL_CODE_VIEW ON FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE
WHERE [INSTALLATION_DATE] > ''2016-01-01 10:00:00''
')
*/

select 'Kind of query for Prize NNNNNNBBBBBBB awesome:'
select * from openquery(TRACCS, '
SELECT  [INSTALLATION_DATE],REGISTRATION_NO,VEHICLE_STATUS,FLEET_MASTER_VIEW.FLEET_MODEL_CODE,
FLEET_MASTER_VIEW.CO2_EMISSION FLEET_CO2_EMISSION , AVIS_MODEL_CODE_VIEW.CO2 MODEL_CODE_CO2,
FLEET_MASTER_VIEW.FUEL_TANK_CAPACITY FLEET_FUEL_TANK_CAPACITY ,AVIS_MODEL_CODE_VIEW.FUEL_TANK_CAPACITY  MODEL_CODE_FUEL_TANK_CAPACITY,
CONVERT(FLEET_MASTER_VIEW.[M&M_CODE], integer ) FLEET_M_AND_M, REPLACE(AVIS_MODEL_CODE_VIEW.M_AND_M_REF,'' '','''')  MODEL_CODE_M_AND_M,
SHORT_DESCRIPTION ,LONG_DESCRIPTION
FROM FLEET_MASTER_VIEW  LEFT JOIN 
AVIS_MODEL_CODE_VIEW ON FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE 
WHERE [INSTALLATION_DATE] > ''2016-01-01 10:00:00''
/* AND FLEET_MASTER_VIEW.CO2_EMISSION <> 0  */
/* AND  FLEET_MASTER_VIEW.CO2_EMISSION <> AVIS_MODEL_CODE_VIEW.CO2  */
AND CONVERT(FLEET_MASTER_VIEW.[M&M_CODE], integer ) <>  REPLACE(AVIS_MODEL_CODE_VIEW.M_AND_M_REF,'' '','''')
 AND CONVERT(FLEET_MASTER_VIEW.[M&M_CODE], integer ) <> 0
')



select 'EXACT!!!!!!! Prize query with FLEET_MODEL_CODE SHIPMENT_DATE INSTALLATION_DATE VEHICLE_STATUS added extra (RUNS FOR 13 SECONDS) !!!!!!!!!! This is for CO2 emissions on invoices:'
/*
select * from openquery(TRACCS, '
SELECT
FLEET_MASTER_VIEW.VEHICLE_STATUS FLEET_MASTER_VIEW.VEHICLE_STATUSx, 
FLEET_MASTER_VIEW.SHIPMENT_DATE FLEET_MASTER_VIEW.SHIPMENT_DATEx, 
FLEET_MASTER_VIEW.INSTALLATION_DATE INSTALLATION_DATEx,
FLEET_MASTER_VIEW.FLEET_MODEL_CODE FLEET_MASTER_VIEW.FLEET_MODEL_CODEx,
REGISTRATION_NO REGISTRATION_NOx,
MVA_NUMBER MVA_NUMBERx,
MVA_CHECK MVA_CHECKx,
WIZARD_MODEL_CODE WIZARD_MODEL_CODEx, 
ISN_AVIS_MODEL_CODE_VIEW ISN_3_112,
SHORT_DESCRIPTION SHORT_DESCRIPTIONx,
LONG_DESCRIPTION LONG_DESCRIPTIONx,
AVIS_MODEL_CODE_VIEW.STATUS AVIS_MODEL_CODE_VIEW.STATUSx,
FLEET_MASTER_VIEW.AVIS_COMP_CODE FLEET_MASTER_VIEW.AVIS_COMP_CODEx,
FLEET_MASTER_VIEW.MANUFACTURER_CODE FLEET_MASTER_VIEW.MANUFACTURER_CODEx,
TB_GRACE_KMS TB_GRACE_KMSx ,
TB_COST_PER_KM TB_COST_PER_KMx,
CAR_BODY CAR_BODYx,
IF(FLEET_MASTER_VIEW.[M&M_CODE] <> 0, FLEET_MASTER_VIEW.[M&M_CODE], AVIS_MODEL_CODE_VIEW.M_AND_M_REF) M_AND_M_REFx,
FLEET_MASTER_VIEW.DISTANCE_LIMIT FLEET_MASTER_VIEW.DISTANCE_LIMITx,
IF(FLEET_MASTER_VIEW.FUEL_TANK_CAPACITY <> 0,FLEET_MASTER_VIEW.FUEL_TANK_CAPACITY ,AVIS_MODEL_CODE_VIEW.FUEL_TANK_CAPACITY) FUEL_TANK_CAPACITYx,
RESIDUAL_PERC RESIDUAL_PERCx,
WIZARD_USED_CODE WIZARD_USED_CODEx,
IF(FLEET_MASTER_VIEW.FUEL_CONSUMPTION <> 0,FLEET_MASTER_VIEW.FUEL_CONSUMPTION ,AVIS_MODEL_CODE_VIEW.FUEL_CONSUMPTION) FUEL_CONSUMPTIONx,
IF(FLEET_MASTER_VIEW.VEHICLE_MODEL_CODE IS NOT NULL,FLEET_MASTER_VIEW.VEHICLE_MODEL_CODE ,AVIS_MODEL_CODE_VIEW.MANUFACTURER_MODEL_NO) MANUFACTURER_MODEL_NOx,
IF(FLEET_MASTER_VIEW.FUEL_TYPE IS NOT NULL ,FLEET_MASTER_VIEW.FUEL_TYPE ,AVIS_MODEL_CODE_VIEW.FUEL_DIESEL_IND) FUEL_DIESEL_INDx,
IF(FLEET_MASTER_VIEW.CO2_EMISSION <> 0,FLEET_MASTER_VIEW.CO2_EMISSION,AVIS_MODEL_CODE_VIEW.CO2) CO2x,
FLEET_MASTER_VIEW.*
FROM FLEET_MASTER_VIEW  LEFT JOIN 
AVIS_MODEL_CODE_VIEW ON FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE
')
*/

select 'EXACT!!!!!!! Prize query with FLEET_MODEL_CODE SHIPMENT_DATE INSTALLATION_DATE VEHICLE_STATUS added extra (RUNS FOR 13 SECONDS) !!!!!!!!!! This is for CO2 emissions on invoices:'
select 'as aboive but this added: WHERE FLEET_MASTER_VIEW.CO2_EMISSION <> 0 AND FLEET_MASTER_VIEW.CO2_EMISSION <> AVIS_MODEL_CODE_VIEW.CO2 AND FLEET_MASTER_VIEW.VEHICLE_STATUS IN (''A'',''E'') AND NAMIBIAN_YB IS NULL'
select * from openquery(TRACCS, '
SELECT
FLEET_MASTER_VIEW.CO2_EMISSION FLEET_MASTER_VIEW_CO2_EMISSION,
AVIS_MODEL_CODE_VIEW.CO2 AVIS_MODEL_CODE_VIEW_CO2,
FLEET_MASTER_VIEW.VEHICLE_STATUS FLEET_MASTER_VIEW.VEHICLE_STATUSx, 
FLEET_MASTER_VIEW.SHIPMENT_DATE FLEET_MASTER_VIEW.SHIPMENT_DATEx, 
FLEET_MASTER_VIEW.INSTALLATION_DATE INSTALLATION_DATEx,
FLEET_MASTER_VIEW.FLEET_MODEL_CODE FLEET_MASTER_VIEW.FLEET_MODEL_CODEx,
REGISTRATION_NO REGISTRATION_NOx,
MVA_NUMBER MVA_NUMBERx,
MVA_CHECK MVA_CHECKx,
WIZARD_MODEL_CODE WIZARD_MODEL_CODEx, 
ISN_AVIS_MODEL_CODE_VIEW ISN_3_112,
SHORT_DESCRIPTION SHORT_DESCRIPTIONx,
LONG_DESCRIPTION LONG_DESCRIPTIONx,
AVIS_MODEL_CODE_VIEW.STATUS AVIS_MODEL_CODE_VIEW.STATUSx,
FLEET_MASTER_VIEW.AVIS_COMP_CODE FLEET_MASTER_VIEW.AVIS_COMP_CODEx,
FLEET_MASTER_VIEW.MANUFACTURER_CODE FLEET_MASTER_VIEW.MANUFACTURER_CODEx,
TB_GRACE_KMS TB_GRACE_KMSx ,
TB_COST_PER_KM TB_COST_PER_KMx,
CAR_BODY CAR_BODYx,
IF(FLEET_MASTER_VIEW.[M&M_CODE] <> 0, FLEET_MASTER_VIEW.[M&M_CODE], AVIS_MODEL_CODE_VIEW.M_AND_M_REF) M_AND_M_REFx,
FLEET_MASTER_VIEW.DISTANCE_LIMIT FLEET_MASTER_VIEW.DISTANCE_LIMITx,
IF(FLEET_MASTER_VIEW.FUEL_TANK_CAPACITY <> 0,FLEET_MASTER_VIEW.FUEL_TANK_CAPACITY ,AVIS_MODEL_CODE_VIEW.FUEL_TANK_CAPACITY) FUEL_TANK_CAPACITYx,
RESIDUAL_PERC RESIDUAL_PERCx,
WIZARD_USED_CODE WIZARD_USED_CODEx,
IF(FLEET_MASTER_VIEW.FUEL_CONSUMPTION <> 0,FLEET_MASTER_VIEW.FUEL_CONSUMPTION ,AVIS_MODEL_CODE_VIEW.FUEL_CONSUMPTION) FUEL_CONSUMPTIONx,
IF(FLEET_MASTER_VIEW.VEHICLE_MODEL_CODE IS NOT NULL,FLEET_MASTER_VIEW.VEHICLE_MODEL_CODE ,AVIS_MODEL_CODE_VIEW.MANUFACTURER_MODEL_NO) MANUFACTURER_MODEL_NOx,
IF(FLEET_MASTER_VIEW.FUEL_TYPE IS NOT NULL ,FLEET_MASTER_VIEW.FUEL_TYPE ,AVIS_MODEL_CODE_VIEW.FUEL_DIESEL_IND) FUEL_DIESEL_INDx,
IF(FLEET_MASTER_VIEW.CO2_EMISSION <> 0,FLEET_MASTER_VIEW.CO2_EMISSION,AVIS_MODEL_CODE_VIEW.CO2) CO2x,
FLEET_MASTER_VIEW.*
FROM FLEET_MASTER_VIEW  LEFT JOIN 
AVIS_MODEL_CODE_VIEW ON FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE
WHERE FLEET_MASTER_VIEW.CO2_EMISSION <> 0 AND FLEET_MASTER_VIEW.CO2_EMISSION <> AVIS_MODEL_CODE_VIEW.CO2 AND FLEET_MASTER_VIEW.VEHICLE_STATUS IN (''A'',''E'') AND NAMIBIAN_YB IS NULL
')


-- COMPACT VERSION OF Exact Prize query ( ONLY USEFUL FIELDS) - FOR AS400 MANAGED MAINTENANCE COMARISON  (ORDERED BT REGISTRATION NO):
/*
select * from openquery(TRACCS, '
SELECT  
       [MVA_NUMBER]
      ,[MVA_CHECK]
      ,[REGISTRATION_NO]
      ,FLEET_MASTER_VIEW.[AVIS_MODEL_CODE] [FMV_AVIS_MODEL_CODE] 
      ,[MANUFACTURER_COLOUR_CODE]
      ,[CHASSIS_NUMBER]
      ,[ENGINE_NUMBER]
      ,FLEET_MASTER_VIEW.[MANUFACTURER_CODE] [FMV_MANUFACTURER_CODE]
      ,[IGNITION_KEY]
      ,[TRUNK_KEY]
      ,[IMMOBILISER]
      ,[ASSET_TYPE]
      ,[PURCHASE_TYPE]
      ,[LICENCE_EXPIRY_DATE]
      ,[ORDER_NO]
      ,[ORDER_ITEM]
      ,[VEHICLE_STATUS]
      ,[STATUS_CHANGE_TIME]
      ,[TURNBACK_DATE]
      ,FLEET_MASTER_VIEW.[DISTANCE_LIMIT] .[FMV_DISTANCE_LIMIT]
      ,[SHIPMENT_DATE]
      ,[BUYBACK_PRICE]
      ,[INSTALLATION_DATE]
      ,[NETT_BOOK_VALUE]
      ,[WIZARD_COLOUR_CODE]
      ,[SERVICE_DUE_KMS]
      ,[NAMIBIAN_YB]
      ,[PUC_ASSET_SOLD]
      ,[PUC_ADD_SOLD_TIME]
      ,[RECOVERY_DATE]
      ,[VPOD_DATE]
      ,FLEET_MASTER_VIEW.[LEASE_CHARGES] [FMV_LEASE_CHARGES]
      ,FLEET_MASTER_VIEW.[FLEET_MODEL_CODE] [FMV_FLEET_MODEL_CODE]
      ,[VPOD_UPDATED]
      ,[CO2_EMISSION]
      ,[TYRE_SIZE]
      ,[M&M_CODE]
      ,FLEET_MASTER_VIEW.[FUEL_TANK_CAPACITY] [FMV_FUEL_TANK_CAPACITY]
      ,FLEET_MASTER_VIEW.[FUEL_CONSUMPTION] [FMV_FUEL_CONSUMPTION]
      ,[FUEL_TYPE]
      ,[VEHICLE_MODEL_CODE]
      ,[RETAIL_PRICE]
      ,[WIZ_DELIVERY_DATE]
      ,''XXX''
      ,[ISN_AVIS_MODEL_CODE_VIEW]
      ,[SHORT_DESCRIPTION]
      ,[LONG_DESCRIPTION]
      ,[STATUS]
      ,FLEET_MASTER_VIEW.[AVIS_COMP_CODE]
      ,FLEET_MASTER_VIEW.[MANUFACTURER_CODE]
      ,FLEET_MASTER_VIEW.[AVIS_MODEL_CODE]
      ,[WIZARD_MODEL_CODE]
      ,[M_AND_M_REF]
      ,FLEET_MASTER_VIEW.[DISTANCE_LIMIT]
      ,[SERVICE_DUE_KMS_COUNT]
      ,[SERVICE_DUE_KMS_1]
      ,[SERVICE_DUE_KMS_2]
      ,[SERVICE_DUE_KMS_3]
      ,[SERVICE_DUE_KMS_4]
      ,[SERVICE_DUE_KMS_5]
      ,FLEET_MASTER_VIEW.[FUEL_TANK_CAPACITY]
      ,[RESIDUAL_PERC]
      ,[WIZARD_USED_CODE]
      ,FLEET_MASTER_VIEW.[FUEL_CONSUMPTION]
      ,[MANUFACTURER_MODEL_NO]
      ,[FUEL_DIESEL_IND]
      ,[CO2]
      ,FLEET_MASTER_VIEW.[LEASE_CHARGES]
      ,FLEET_MASTER_VIEW.[FLEET_MODEL_CODE]
FROM FLEET_MASTER_VIEW,AVIS_MODEL_CODE_VIEW  INNER JOIN 
AVIS_MODEL_CODE_VIEW ON FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE
WHERE [INSTALLATION_DATE] > ''2016-01-01 10:00:00''
ORDER BY [REGISTRATION_NO]
')
*/






select 'MMReport (Report for Adriaan of all cars from the MM screen - this has now changed ):'

/*
select CONCAT(FLEET_MASTER_VIEW.MVA_NUMBER, FLEET_MASTER_VIEW.MVA_CHECK ) as 'Mva No',
FLEET_MASTER_VIEW.REGISTRATION_NO 'Registration No',
CONCAT(CONCAT(ORDER_NO , '/'), ORDER_ITEM) 'Order No /Item',
FLEET_MASTER_VIEW.MANUFACTURER_CODE 'Manufacturer Code',
MANUFACTURER_VIEW.SHORT_DESCRIPTION 'Manufacturer Description',
ENGINE_NUMBER 'Engine Number',
CHASSIS_NUMBER 'Chassis Number',
FLEET_MASTER_VIEW.CAR_RENTAL_GROUP 'Car Rental Group',
FLEET_MASTER_VIEW.FLEET_MODEL_CODE 'Fleet Model Code',
AVIS_MODEL_CODE_VIEW.SHORT_DESCRIPTION 'Model Code Description',
AVIS_MODEL_CODE_VIEW.WIZARD_MODEL_CODE 'Wizard Model',
AVIS_MODEL_CODE_VIEW.WIZARD_USED_CODE 'Wizard Use Code',
FLEET_MASTER_VIEW.MANUFACTURER_COLOUR_CODE 'Manufacturer Colour',
MANUFACTURER_COLOUR_VIEW.SHORT_DESCRIPTION 'Manufacturer Colour Description',
FLEET_MASTER_VIEW.WIZARD_COLOUR_CODE 'Wizard Colour Code', 
WIZARD_COLOUR_VIEW.SHORT_DESCRIPTION 'Wizard Colour Description',
FLEET_MASTER_VIEW.PAYMENT_ADVICE_NO 'Payment Advice No',
FLEET_MASTER_VIEW.PAYMENT_INVOICE_NO 'Payment Invoice No',
FLEET_MASTER_VIEW.INSTALLATION_STATION 'Install Station',
FLEET_MASTER_VIEW.INSTALLATION_DATE 'Install Date',
FLEET_MASTER_VIEW.OPERATING_PERIOD 'Operating Period',
FLEET_MASTER_VIEW.TURNBACK_DATE 'Turnback Date',
FLEET_MASTER_VIEW.DISTANCE_LIMIT 'Distance Limit',
                                    CASE WHEN FLEET_MASTER_VIEW.VEHICLE_STATUS = 'A' THEN 'Active'
                                    CASE WHEN FLEET_MASTER_VIEW.VEHICLE_STATUS = 'C' THEN 'Converted'
                                    CASE WHEN FLEET_MASTER_VIEW.VEHICLE_STATUS = 'EC' THEN 'En-Route'
                                    CASE WHEN FLEET_MASTER_VIEW.VEHICLE_STATUS = 'Q' THEN 'W/Off Stolen'
                                    CASE WHEN FLEET_MASTER_VIEW.VEHICLE_STATUS = 'S' THEN 'Stolen'
                                    CASE WHEN FLEET_MASTER_VIEW.VEHICLE_STATUS = 'T' THEN 'Turn Back' 
                                    CASE WHEN FLEET_MASTER_VIEW.VEHICLE_STATUS = 'U' THEN 'Used Cars' 
                                    CASE WHEN FLEET_MASTER_VIEW.VEHICLE_STATUS = 'W' THEN 'W/Off - Acc' 
                                    CASE WHEN FLEET_MASTER_VIEW.VEHICLE_STATUS = 'Z' THEN 'Staff' 
END
END
END
END
END
END
END
END
END 'Current Status is',
FLEET_MASTER_VIEW.STATUS_CHANGE_TIME 'Since',
CAR_MOVEMENT_VIEW.STATION_CODE 'Last Station',
CAR_MOVEMENT_VIEW.KM_READING 'Last KM Reading',
FLEET_MASTER_VIEW.ASSET_TYPE 'Asset Type'
from FLEET_MASTER_VIEW
LEFT JOIN AVIS_MODEL_CODE_VIEW ON FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE 
LEFT JOIN MANUFACTURER_VIEW ON FLEET_MASTER_VIEW.MANUFACTURER_CODE = MANUFACTURER_VIEW.MANUFACTURER_CODE 
LEFT JOIN MANUFACTURER_COLOUR_VIEW ON  FLEET_MASTER_VIEW.MANUFACTURER_COLOUR_CODE = MANUFACTURER_COLOUR_VIEW.MANUFACTURER_COLOUR_CODE AND FLEET_MASTER_VIEW.MANUFACTURER_CODE =  MANUFACTURER_COLOUR_VIEW.MANUFACTURER_CODE
LEFT JOIN WIZARD_COLOUR_VIEW ON FLEET_MASTER_VIEW.WIZARD_COLOUR_CODE = WIZARD_COLOUR_VIEW.WIZARD_COLOUR_CODE 
LEFT JOIN CAR_MOVEMENT_VIEW ON FLEET_MASTER_VIEW.MVA_NUMBER = CAR_MOVEMENT_VIEW.MVA_NUMBER 
LEFT JOIN DEALER_CODE_VIEW ON FLEET_MASTER_VIEW.DEALER_CODE = DEALER_CODE_VIEW.DEALER_CODE AND FLEET_MASTER_VIEW.MANUFACTURER_CODE = DEALER_CODE_VIEW.MANUFACTURER_CODE
WHERE 
MANUFACTURER_KEY = 'M'
AND MOVEMENT_TIME = ( SELECT MAX(MOVEMENT_TIME) FROM CAR_MOVEMENT_VIEW WHERE MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER AND MOVEMENT_TYPE ='I')
AND CONVERT(STATUS_CHANGE_TIME  date)  BETWEEN  timestampadd(SQL_TSI_DAY, -7, CURRENT_DATE() )  AND timestampadd(SQL_TSI_DAY, -1, CURRENT_DATE() )
AND FLEET_MASTER_VIEW.VEHICLE_STATUS = 'A'
AND FLEET_MASTER_VIEW.AVIS_COMP_CODE = 'AV'

*/


/*
ALL ABOUT VAN RENTALS :
Only South Africa (A10000) and Namibia (SW0000) create separate Diners and Amex files
Vans go through with rest of the Iveri transactions as below (eg IVERIDB001933.DAT):
All vans Iveri files get written with this program :
CCS150P1
*/






--CREDIT CLUB LISCHEN QUERY EXAMPLE--------------------------------------------------------START 
/*

select 'NNBB: Replication of TAPES - whole of the month :'
select * from openquery(TRACCS, '
select SUM(TRANSACTION_AMOUNT),INTERNAL_TAPE_SEQ_NO,CREDIT_CLUB_CODE,AVIS_COMP_CODE, WIZ_FILE_SEQ_NUMBER,DATA_DATE,PROCESSED_IND,ENTRY_TIME from CCS_DETAIL_FILE {usekey 3} where PERIOD_CCYYPP >=  ( select PERIOD from GETCCYYPP ) 
/* AND AVIS_COMP_CODE = ''B1''  this narrows it down to the Nam Budget */
/* AND SUM(TRANSACTION_AMOUNT) = 2298.08 */
GROUP BY  CREDIT_CLUB_CODE,AVIS_COMP_CODE, WIZ_FILE_SEQ_NUMBER,DATA_DATE,INTERNAL_TAPE_SEQ_NO
ORDER BY DATA_DATE,INTERNAL_TAPE_SEQ_NO
')


--Receivables register EXCLUDING VANS :
select * from openquery(TRACCS, '
select SUM(TRANSACTION_AMOUNT),INTERNAL_TAPE_SEQ_NO,CREDIT_CLUB_CODE,AVIS_COMP_CODE, WIZ_FILE_SEQ_NUMBER,DATA_DATE,PROCESSED_IND,ENTRY_TIME from CCS_DETAIL_FILE {usekey 3} where PERIOD_CCYYPP >=  ( select PERIOD from GETCCYYPP )  /* AND TRANSACTION_TYPE <> ''07'' */
AND AVIS_COMP_CODE IN (''ZA'',''B0'',''SW'',''B1'')
/* AND AVIS_COMP_CODE = ''B1'' */
/* AND SUM(TRANSACTION_AMOUNT) = 2298.08 */
GROUP BY  CREDIT_CLUB_CODE,AVIS_COMP_CODE, WIZ_FILE_SEQ_NUMBER,DATA_DATE,INTERNAL_TAPE_SEQ_NO
ORDER BY DATA_DATE,INTERNAL_TAPE_SEQ_NO
')


select 'NNBB: Replication of receivables register (Usually Lischen) : This example is for B1 :'
select * from openquery(TRACCS, '
select SUM(TRANSACTION_AMOUNT),INTERNAL_TAPE_SEQ_NO,CREDIT_CLUB_CODE,AVIS_COMP_CODE, WIZ_FILE_SEQ_NUMBER,DATA_DATE,PROCESSED_IND,ENTRY_TIME from CCS_DETAIL_FILE {usekey 3} where PERIOD_CCYYPP >=  ( select PERIOD from GETCCYYPP )  /* AND TRANSACTION_TYPE <> ''07'' */
 AND AVIS_COMP_CODE = ''B1''  /* this narrows it down to the Nam Budget */
/* AND SUM(TRANSACTION_AMOUNT) = 2298.08 */
GROUP BY  CREDIT_CLUB_CODE,AVIS_COMP_CODE, WIZ_FILE_SEQ_NUMBER,DATA_DATE,INTERNAL_TAPE_SEQ_NO
ORDER BY DATA_DATE,INTERNAL_TAPE_SEQ_NO
')
/*
SUM(TRANSACTION_AMOUNT)	INTERNAL_TAPE_SEQ_NO	CREDIT_CLUB_CODE	AVIS_COMP_CODE	WIZ_FILE_SEQ_NUMBER	DATA_DATE 
1256.83					3425					CA					B1				730					2017-01-29
*/

select 'Detail of above query :'
select * from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE AVIS_COMP_CODE = ''B1'' AND WIZ_FILE_SEQ_NUMBER = ''730'' 
AND PERIOD_CCYYPP > ''211601'' AND CREDIT_CLUB_CODE = ''CA'' AND INTERNAL_TAPE_SEQ_NO = ''3425''
')

/*
ISN_CCS_DETAIL_FILE	AVIS_COMP_CODE	RA_NUMBER	PERIOD_CCYYPP	CREDIT_CLUB_CODE	CREDIT_CLUB_NUMBER	TRANSACTION_AMOUNT	TRANSACTION_TYPE	AUTH_CODE	CUSTOMER_NAME	CHECKOUT_LOCATION	CHECKOUT_TIME	CHECKIN_LOCATION	CHECKIN_TIME	RENTAL_KMS	CHECKOUT_STATION_CODE	ENTRY_TIME	USER_ID	WIZ_FILE_SEQ_NUMBER	EXPIRY_DATE	INTERNAL_TAPE_SEQ_NO	DATA_DATE	PROCESSED_IND	SP_CO_PROCESSED_IND	SP_CO_CLUB_CARD	SP_CO_INTER_TAPE_NO	SP_CO_PERIOD_CLUB	SP_CO_WIZ_SEQ_NO	SP_CO_ENTRY_TIME
8468501	B1	  E687545526 	211704	CA	375417155196523       	1256.83	05	114675    	PEDERSEN,ODD KRISTIAN         	WINDHOEK            	2017-01-21 12:58:00.0000000	BDWINDHOEK INTAPT   	2017-01-28 15:00:00.0000000	1557	5193	2017-01-30 12:52:09.1000000	TRACOPS 	730	0617	3425	2017-01-29	NULL	B1  	B1CA375417155196523       	B1003425	B1pLCA	B1000730	B16R‘5)
*/

select 'I am marking the transaction as unprocessed (mark as unprocessed):'
/*
UPDATE openquery(TRACCS, '
SELECT * FROM CCS_DETAIL_FILE  WHERE AVIS_COMP_CODE = ''B1'' AND WIZ_FILE_SEQ_NUMBER = ''730'' 
AND PERIOD_CCYYPP > ''211601'' AND CREDIT_CLUB_CODE = ''CA'' AND INTERNAL_TAPE_SEQ_NO = ''3425''
')
SET PROCESSED_IND = 'NO' , INTERNAL_TAPE_SEQ_NO = NULL
*/
--(1 row(s) affected)



select 'I am marking the transaction as processed again :'
/*
UPDATE openquery(TRACCS, '
SELECT * FROM CCS_DETAIL_FILE  WHERE AVIS_COMP_CODE = ''B1'' AND WIZ_FILE_SEQ_NUMBER = ''730'' 
AND PERIOD_CCYYPP > ''211601'' AND CREDIT_CLUB_CODE = ''CA'' AND INTERNAL_TAPE_SEQ_NO = ''3425''
')
SET PROCESSED_IND = NULL
*/
--(1 row(s) affected)





select 'The whole tape (remember the reports will be split in 2):'
select * from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE 
PERIOD_CCYYPP > ''211601'' AND CREDIT_CLUB_CODE = ''CA'' AND INTERNAL_TAPE_SEQ_NO = ''3425''
')


select '3 tapes were combined into 1 for payment to us:'
select * from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE 
PERIOD_CCYYPP > ''211601'' AND CREDIT_CLUB_CODE = ''CA'' AND INTERNAL_TAPE_SEQ_NO IN (''3423'',''3424'',''3425'',''3426'',''3427'')
')

*/

/*
select 'Credit Card Number search in credit clubs : '
select * from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE CREDIT_CLUB_NUMBER = 5412820018121956
')
*/



--CREDIT CLUB LISCHEN QUERY EXAMPLE--------------------------------------------------------END 

select 'RA search in credit clubs : '
select * from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER = ''  E596145362'' 
')
-- Tersia testing again :
select * from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER IN
(
''  E248670251 '',
''  E248670273 '',
''  E801190456 ''
)
')




select 'List for TERSIA for SAFARI NAMIBIA THAT SHOULD BE ON SW0002 but are on SW0000:'
select * from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE CHECKIN_LOCATION = ''SAFARI NAMIBIA      '' AND AVIS_COMP_CODE = ''SW'' AND PERIOD_CCYYPP > ''211601''
')




select * from openquery(TRACCS, '
SELECT * FROM FLEET_MOVEMENT WHERE VEHICLE_LICENCE_NUMBER IN
(
''DR34NVGP'',
''FP35DMGP'',
''FP38VBGP'',
''FP38VDGP'',
''FP38VGGP'',
''BN78TYGP'', /* this one is wrong reg date REG_EXPIRATION_DATE = 30/01/2017  VEH_PURCHASE_DATE = 10/11/2011 VEHICLE_DELIVERY_DATE = 10/11/2011 VEHICLE_ADD_ENTERED_DATE = 10/11/2011 */
''CC12PPGP'', /* this one has the wrong kms VEHICLE_MILES_KILOMETRES = 234622 */
''CS86WZGP'', /* not on wizard example , its not on FLEET_MOVEMENT either */
''DY63KSGP'', /* not on wizard example , its not on FLEET_MOVEMENT either */   
''DY63NZGP'', /* not on wizard example , its not on FLEET_MOVEMENT either */   
''DY63VDGP'', /* not on wizard example , its not on FLEET_MOVEMENT either */   
''DY63WCGP''  /* not on wizard example , its not on FLEET_MOVEMENT either */  
)
')






-- FLEET34 MCKAY MATSEBANANE ( 159 FLEET34  05c21d38       2360 2360      112         1,882   X ) CODES-FILE-S : select FLEET_MODEL_CODE,WIZARD_MODEL_CODE,* from CODES_FILE_S WHERE ISN_CODES_FILE_S = 1882
--147 FLEET34  06bfd4e8        232 232       112         1,370   X - select FLEET_MODEL_CODE,WIZARD_MODEL_CODE,* from CODES_FILE_S WHERE ISN_CODES_FILE_S = 1370
-- 419 FLEET34  04ae9fac       6060 6060      112         1,883   X - select FLEET_MODEL_CODE,WIZARD_MODEL_CODE,* from CODES_FILE_S WHERE ISN_CODES_FILE_S = 1883
--    369 FLEET03  010b9578       5496 5496      119       349,957   X -  SELECT * FROM FLEET_MASTER_VIEW WHERE ISN_FLEET_MASTER_VIEW = 349957 (1014568 2 NOT KNOWN AHTLB52E903114934  1ZRV406265  TO  E   201701301200AM )
select 'Both tables combined AND ONLY (O)PEN USERS (THIS TIME ORDERED BY EXPIRY DATE descending):'
select * from openquery(TRACCS, '
SELECT CONTROL_USERS.*,
TRACCS_USER.AVIS_COMP_CODE as TRACCS_USER_AVIS_COMP_CODE,TRACCS_USER.USER_ID as TRACCS_USER_USER_ID,TRACCS_USER.USER_NAME as TRACCS_USER_USER_NAME,TRACCS_USER.PASSWORD,TRACCS_USER.ENTRY_USER,TRACCS_USER.ENTRY_TIME,TRACCS_USER.LOCK_TIME,TRACCS_USER.LOCK_IND,TRACCS_USER.EXPIRY_DATE,timestampadd(SQL_TSI_DAY, -45,TRACCS_USER.EXPIRY_DATE)	
FROM CONTROL_USERS,TRACCS_USER WHERE 
CONTROL_USERS.USER_ID *= TRACCS_USER.USER_ID
AND USER_REC_TYPE = 1
AND USER_OPEN_BLOCK_IND = ''O''
AND EXPIRY_DATE >= ''2016-01-01''              /* note this is used so that it doesnt include DEV accounts*/
ORDER BY EXPIRY_DATE
')
/*        TSHepi@18           
ORDER BY TRACCS_USER.USER_NAME    
ORDER BY CONTROL_USERS.USER_ID
ORDER BY TRACCS_USER.ISN_TRACCS_USER
*/	



/* RA is indexed so we can do this: */
-- Gerts no shows on ERF file today 11 Jan 2017 -- gert gives them 0 bill days AND 0 REVENUE
/*
select * from openquery(TRACCS, '
SELECT * FROM RA_MAINT_VIEW WHERE RA_NUMBER IN 
(
''431848756'',
''431943271'',
''432371531''
)
')
*/

-- STAFF CAR / COMPANY CAR SECTION----------------------------------------------------------------------------------------START 
/*


SELECT 'STAFF CARS only ACTIVE !!!:'
select * from openquery(TRACCS, '
select VEHICLE_STATUS,REGISTRATION_NO,CAR_RENTAL_GROUP,PUC_ADD_SOLD_TIME,TIMESTAMPADD(SQL_TSI_MONTH,6,PUC_ADD_SOLD_TIME),TURNBACK_DATE,NAMIBIAN_YB,IGNITION_KEY,TRUNK_KEY,IMMOBILISER,PURCHASE_PRICE,INSTALLATION_DATE,LONG_DESCRIPTION from fleet_master_view 
INNER JOIN AVIS_MODEL_CODE_VIEW ON FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE 
where NAMIBIAN_YB = ''Z''
AND VEHICLE_STATUS = ''A''                   
order by TURNBACK_DATE
/* order by PURCHASE_PRICE */
')



SELECT 'NNNNBBBBB Staff cars that haven’t been SOLD yet (status becomes S when get back from automate):'
select * from openquery(TRACCS, '
SELECT * FROM PUC_MASTER_VIEW  WHERE PUC_MASTER_VIEW.MVA_NUMBER IN 
( SELECT FLEET_MASTER_VIEW.MVA_NUMBER FROM FLEET_MASTER_VIEW WHERE NAMIBIAN_YB = ''Z'') AND PUC_STATUS <> ''S''
ORDER BY PUC_ADD_DATE
')

SELECT 'STAFF CARS - MINE-(INCLUDING CALCULATED TURNBACK DATE):'
select * from openquery(TRACCS, '
select VEHICLE_STATUS,REGISTRATION_NO,CAR_RENTAL_GROUP,PUC_ADD_SOLD_TIME,TIMESTAMPADD(SQL_TSI_MONTH,6,PUC_ADD_SOLD_TIME),TURNBACK_DATE,NAMIBIAN_YB,IGNITION_KEY,TRUNK_KEY,IMMOBILISER,PURCHASE_PRICE,INSTALLATION_DATE,LONG_DESCRIPTION from fleet_master_view 
INNER JOIN AVIS_MODEL_CODE_VIEW ON FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE 
where NAMIBIAN_YB = ''Z''
AND IGNITION_KEY = ''KIERAN'' 
order by IGNITION_KEY,TRUNK_KEY,INSTALLATION_DATE
')
*/


-- STAFF CAR SECTION----------------------------------------------------------------------------------------END

-- TRAFFIC FINE SECTION----------------------------------------------------------------------------------------START
select 'Are the weekly VTC files being loaded dor Sue and Traffic fines(PROGRAM IS CALLED TFRWEEK):'
select 'ARRIVE AND ARE RUN ON MONDAYS: \\racfs.abgza.co.za\vol2\DATA\TFRVTC\weekly'
select 'C:\Users\kieran.swanepoel\Dropbox\ALL TRACCS tasks\investigate\WeeklyVTCsearch - 6914229.bat'
select PERIOD_CCYYPP, SEQ_NO, FILEDATE from openquery(TRACCS, 'SELECT * FROM VTC_DETAIL_VIEW WHERE PERIOD_CCYYPP >= 211704
GROUP BY SEQ_NO , FILEDATE
')
select * from openquery(TRACCS, 'SELECT * FROM CAR_MOVEMENT_VIEW WHERE AVIS_COMP_CODE = ''AV'' 
AND RA_NUMBER IN
(
''3729800'',
''3814959'',
''3818689'',
''3839749'',
''3846443'',
''3847026'',
''3847592'',
''3847752'',
''6851394'',
''6914229''
)
ORDER BY MOVEMENT_TIME
')

select * from openquery(TRACCS, 'SELECT * FROM VTC_DETAIL_VIEW WHERE VTC_NUMBER IN
(
''8826261'',
''8841400''
)
ORDER BY CI_TIME
')
-- TRAFFIC FINE SECTION----------------------------------------------------------------------------------------END


-- This is the table created for the DARAUPD program 
select 'DARA_CLAIMS (The list that updates and deletes - there are currently 1080 here ):'
select * from openquery(TRACCS, '
SELECT count(*) FROM DARA_CLAIMS
')

-- Some are here and some are not :
/*
select * from openquery(TRACCS, '
SELECT * FROM CLAIMS_REGISTER WHERE CLAIM_NO IN 
(
SELECT CLAIM_NO FROM DARA_CLAIMS
)
AND AVIS_COMP_CODE = ''AV''
')
*/

/*
--scroll to last one :
select top 1000 * from openquery(TRACCS, '
SELECT * FROM DARA_CLAIMS
order by ISN_DARA_CLAIMS
')


SELECT * FROM openquery(TRACCS, '
SELECT * FROM DARA_CLAIMS WHERE ISN_DARA_CLAIMS < 5447368
')

delete openquery(TRACCS, '
SELECT * FROM DARA_CLAIMS WHERE ISN_DARA_CLAIMS < 5447368
')


*/


-- ALL ABOUT VPOD :
/*
NNNBBB:
REG-EXPIRATION-DATE = comes from fleet file !!!!
VPOD-EXPIRY-DATE = LICENCE-EXPIRY-DATE only if updated by VPOD !!!! format  eg 1016 = October 2016 
Its actually a VPOD MONTH 
VPOD-DATE = This is the date that the car was scanned = CURRENT_TIMESTAMP()
If the engine number is found, then the following fields are updated :
WIZARD_COLOUR_CODE 
LICENCE_EXPIRY_DATE
VPOD_UPDATED (updated to Y)
VPOD_DATE (updated with current timestamp)
*/

/*
select 'VPOD SCANNED CARS (COUNT PER DAY: In the last 100 days):'
select * from openquery(TRACCS, '
SELECT CONVERT(VPOD_DATE  date), count(*)
from FLEET_MASTER_VIEW where VPOD_UPDATED = ''Y''
AND CONVERT(VPOD_DATE  date) >= timestampadd(SQL_TSI_DAY, -100,CURRENT_DATE())
group BY CONVERT(VPOD_DATE  date) 
ORDER BY VPOD_DATE DESC
')
*/

select 'VPOD SCANNED CARS (In the last 3 days):'
select * from openquery(TRACCS, '
SELECT [VPOD_DATE]
	  ,[WIZARD_COLOUR_CODE]
	  ,[LICENCE_EXPIRY_DATE]
      ,[AVIS_COMP_CODE]
      ,[MVA_NUMBER]
      ,[MVA_CHECK]
      ,[REGISTRATION_NO]
      ,[AVIS_MODEL_CODE]
      ,[MANUFACTURER_COLOUR_CODE]
      ,[NON_POOL]
      ,[CAR_RENTAL_GROUP]
      ,[CHASSIS_NUMBER]
      ,[ENGINE_NUMBER]
      ,[MANUFACTURER_CODE]
      ,[MANUFACTURER_JOB]
      ,[FACTORY_ACCESSORIES]
      ,[ADDON_ACCESSORIES]
      ,[IGNITION_KEY]
      ,[TRUNK_KEY]
      ,[IMMOBILISER]
      ,[MOTOR_CODE]
      ,[ASSET_TYPE]
      ,[PURCHASE_TYPE]
      ,[ORDER_NO]
      ,[ORDER_ITEM]
      ,[DEALER_CODE]
      ,[VEHICLE_STATUS]
      ,[STATUS_CHANGE_TIME]
      ,[PAYMENT_DUE_DATE]
      ,[VPS_NO]
      ,[VPI_NO]
      ,[PURCHASE_PRICE]
      ,[OPERATING_PERIOD]
      ,[TURNBACK_DATE]
      ,[DISTANCE_LIMIT]
      ,[SHIPMENT_DATE]
      ,[SHIPMENT_REF]
      ,[BUYBACK_PRICE]
      ,[LEASE_SCHEDULE_NO]
      ,[INSTALLATION_DATE]
      ,[INSTALLATION_STATION]
      ,[DAMAGED_IND_YN]
      ,[INSTALLATION_KMS]
      ,[CAPITAL_ACCESSORIES_PRICE]
      ,[ADDON_ACCESSORIES_PRICE]
      ,[RESIDUAL_AMOUNT]
      ,[PERIOD_CCYYPP]
      ,[INTEREST_MTH]
      ,[INTEREST_TODATE]
      ,[INSURANCE_MTH]
      ,[INSURANCE_TODATE]
      ,[DEPRECIATION_MTH]
      ,[DEPRECIATION_TODATE]
      ,[NETT_BOOK_VALUE]
      ,[RECALL_IND_RB]
      ,[SERVICE_DUE_KMS]
      ,[CAPITAL_ACCESSORIES]
      ,[LEASE_LAST_PAYMENT]
      ,[LEASE_PAYMENT_TODATE]
      ,[VPS_PRICE]
      ,[PRICE_PAID]
      ,[INSTALLATION_DOC_REF]
      ,[TRADE_VALUE]
      ,[LEASE_STATUS]
      ,[LEASE_LAST_DATE]
      ,[COSTING_END_DATE]
      ,[COSTING_START_DATE]
      ,[DEPR_RECOVERY]
      ,[DEPR_RECOVERY_REV]
      ,[DEPR_SHORTFALL]
      ,[DEPR_SHORTFALL_REV]
      ,[STAFF_YN]
      ,[ASSET_ADJUSTMENT]
      ,[ASSET_DISPOSAL]
      ,[ASSET_RECOVERY]
      ,[ASSET_TAKE_ON]
      ,[OLD_PURCHASE_TYPE]
      ,[PTYPE_CONTROL]
      ,[NAMIBIAN_YB]
      ,[PUC_ASSET_SOLD]
      ,[PUC_STATION]
      ,[PUC_REMARKS]
      ,[PUC_USER_ID]
      ,[PUC_ADD_SOLD_TIME]
      ,[RECOVERY_CONDITION]
      ,[RECOVERY_DATE]
      ,[RECOVERY_KM_READING]
      ,[RECOVERY_PERSON]
      ,[RECOVERY_STATION]
      ,[TAX_AMOUNT]
      ,[LAST_STATION]
      ,[MVA_CHANGE_DATE]
      ,[OLD_MVA_CHECK]
      ,[PAYMENT_INVOICE_NO]
      ,[PAYMENT_ADVICE_NO]
      ,[PAYMENT_ADVICE_DATE]
      ,[AA_DATA_TIME]
      ,[AA_LAST_STATUS]
      ,[AUTO_R_DATE]
      ,[HPI_DATA_TIME]
      ,[HPI_LAST_STATUS]
      ,[TMC_UPDATE_IND]
      ,[RSA_FLEET]
      ,[LEASE_CHARGES]
      ,[FLEET_MODEL_CODE]
      ,[VPOD_UPDATED]
      ,[CO2_EMISSION]
      ,[TYRE_SIZE]
      ,[M&M_CODE]
      ,[FUEL_TANK_CAPACITY]
      ,[FUEL_CONSUMPTION]
      ,[FUEL_TYPE]
      ,[VEHICLE_MODEL_CODE]
      ,[RETAIL_PRICE]
      ,[WIZ_DELIVERY_DATE]
from FLEET_MASTER_VIEW where VPOD_UPDATED = ''Y''
AND CONVERT(VPOD_DATE  date) >= timestampadd(SQL_TSI_DAY, -2,CURRENT_DATE())
ORDER BY VPOD_DATE DESC
')
select * from openquery(TRACCS, '
select * from TRACCS_USER where USER_NAME like ''%marie%''
')
select 'Checking for particular users / specific users (USERID or NAME):'
select * from openquery(TRACCS, '
SELECT CONTROL_USERS.*,
TRACCS_USER.AVIS_COMP_CODE as TRACCS_USER_AVIS_COMP_CODE,TRACCS_USER.USER_ID as TRACCS_USER_USER_ID,TRACCS_USER.USER_NAME as TRACCS_USER_USER_NAME,TRACCS_USER.PASSWORD,TRACCS_USER.ENTRY_USER,TRACCS_USER.ENTRY_TIME,TRACCS_USER.LOCK_TIME,TRACCS_USER.LOCK_IND,TRACCS_USER.EXPIRY_DATE	
FROM CONTROL_USERS,TRACCS_USER WHERE 
CONTROL_USERS.USER_ID *= TRACCS_USER.USER_ID
AND CONTROL_USERS.USER_NAME IS NOT NULL 
AND CONTROL_USERS.USER_GROUP_ID IS NOT NULL
/* AND USER_OPEN_BLOCK_IND = ''B'' */
AND CONTROL_USERS.USER_ID IN
(
''FLEET03'', /* Oupa Radzilani    */
''CLAIMS08'', /* USER BLOCKED   = Charlton de Koe */
''PLN0003'',
''FLEET88'',
''TMC0002'', /* USER BLOCKED  = Tyron Padayachee   */
''FLEET21'',
''FLEET12B'',
''TMC0015'',
''CLAIMS60''
''CLAIMS68'', /* Loutjie Hughes */
''DAMAGE11'', /* Daleen */
''DAMAGE16'',  /* not created yet tsHE01@@   */
''TMC0009'', /* Richie Richards   */
''TMC0016'',
''TMC0017'',
''REMZEDA1'',
''RATES03'', /* Charmaine Maake */
''RATES04'', /* Daphney  Mathe */
''RATES07'', /* ANDRE DU PREEZ */
''RATES11'', /* PAULA PEREIRA */
''FLEET14'', /* MUKESH */
''CLAIMS69'', /* Prayer Nkosi */
''REMCTN06'', /* Tanya Otto */
''TMC0004'',   /*(Christopher Cloete)*/
''FLEET26'',   /* Chantell Lensly */
''CLAIMSL2'', /* Melita Mashiane */
''PLNE002'', /* Elsje Clark */
''TMC0017'', /* MERVIN KANDASAMY  */
''CLAIMS51'', /* Rooksana Rahim */
''CLAIMS45'', /* Shirley Gaanakgo  */
''SPECIAL5'', /* Lebo Phasumane */
''FLEET32'', /* Tristan - Fleet Analyst */
''FLEET19'', /* Tumelo Sello */
''CLAIMS51'', /* CLAIMS00 is based on CLAIMS51 */
''CLAIMS00'', /* Dipuo Kodisang */
''FLEETT02'' /* Adriaan K */
)
/* AND TRACCS_USER.USER_NAME LIKE ''%tyron%''  */                     
ORDER BY CONTROL_USERS.USER_ID 
')

/*
FLEET26 	1	FLEETOPS	Chantell Lensly   
FLEETT02	1	FLEETOPS	Adriaan Kleynhans 
*/



--NNNBBB Both tables combined AND ONLY (O)PEN USERS:
select 'Both tables combined AND ONLY (O)PEN USERS:'
select * from openquery(TRACCS, '
SELECT CONTROL_USERS.*,
TRACCS_USER.AVIS_COMP_CODE as TRACCS_USER_AVIS_COMP_CODE,TRACCS_USER.USER_ID as TRACCS_USER_USER_ID,TRACCS_USER.USER_NAME as TRACCS_USER_USER_NAME,TRACCS_USER.PASSWORD,TRACCS_USER.ENTRY_USER,TRACCS_USER.ENTRY_TIME,TRACCS_USER.LOCK_TIME,TRACCS_USER.LOCK_IND,TRACCS_USER.EXPIRY_DATE,timestampadd(SQL_TSI_DAY, -45,TRACCS_USER.EXPIRY_DATE)	
FROM CONTROL_USERS,TRACCS_USER WHERE 
CONTROL_USERS.USER_ID = TRACCS_USER.USER_ID
AND USER_REC_TYPE = 1
AND USER_OPEN_BLOCK_IND = ''O''
ORDER BY CONTROL_USERS.USER_ID
')
/*P4ssword*                 
ORDER BY TRACCS_USER.USER_NAME    
ORDER BY CONTROL_USERS.USER_ID
ORDER BY TRACCS_USER.ISN_TRACCS_USER
*/

select 'Only the TRACCS_USER process:'
select * from openquery(TRACCS, '
select * from traccs_user 
WHERE USER_ID IN
(
''CLAIMS68'',
''DAMAGE16''
)
order by USER_ID
')




select 'Both tables combined AND ONLY (O)PEN USERS (ONLY NULL EXPIRY_DATE and NO ADMINS):'
select 'Brand new users start out this way (They then need to enter a new password at first login)'
select * from openquery(TRACCS, '
SELECT CONTROL_USERS.*,
TRACCS_USER.AVIS_COMP_CODE as TRACCS_USER_AVIS_COMP_CODE,TRACCS_USER.USER_ID as TRACCS_USER_USER_ID,TRACCS_USER.USER_NAME as TRACCS_USER_USER_NAME,TRACCS_USER.PASSWORD,TRACCS_USER.ENTRY_USER,TRACCS_USER.ENTRY_TIME,TRACCS_USER.LOCK_TIME,TRACCS_USER.LOCK_IND,TRACCS_USER.EXPIRY_DATE	
FROM CONTROL_USERS,TRACCS_USER WHERE 
CONTROL_USERS.USER_ID = TRACCS_USER.USER_ID
AND USER_REC_TYPE = 1
AND USER_OPEN_BLOCK_IND = ''O''
AND EXPIRY_DATE IS NULL					/* NOTE THIS LINE */
AND TRACCS_USER.USER_ID NOT LIKE ''%TRAC%''			/* AND THIS LINE */
ORDER BY TRACCS_USER.USER_NAME
')

select 'Both tables combined AND ONLY (O)PEN USERS (BUT ONLY LOCKED(X) ):'
select * from openquery(TRACCS, '
SELECT CONTROL_USERS.*,
TRACCS_USER.AVIS_COMP_CODE as TRACCS_USER_AVIS_COMP_CODE,TRACCS_USER.USER_ID as TRACCS_USER_USER_ID,TRACCS_USER.USER_NAME as TRACCS_USER_USER_NAME,TRACCS_USER.PASSWORD,TRACCS_USER.ENTRY_USER,TRACCS_USER.ENTRY_TIME,TRACCS_USER.LOCK_TIME,TRACCS_USER.LOCK_IND,TRACCS_USER.EXPIRY_DATE,timestampadd(SQL_TSI_DAY, -45,TRACCS_USER.EXPIRY_DATE)	
FROM CONTROL_USERS,TRACCS_USER WHERE 
CONTROL_USERS.USER_ID *= TRACCS_USER.USER_ID
AND USER_REC_TYPE = 1
AND USER_OPEN_BLOCK_IND = ''O''
AND LOCK_IND IS NOT NULL
ORDER BY TRACCS_USER.USER_NAME
')


select ' \\raCFS.ABGZA.CO.ZA\NATREPORTS\DailyFleet\VehicleExceptions\New_Vehicle_Installations-20170201.csv '
select ' Registration_Number_Exist_with_different_Mva''s-20170201.csv'
select ' Different_Reg_No-20170201.csv'
select ' Incorrect_Metric_Indicators-20170201.csv'

/* These should be the cars that cant install : */
/*
select * from openquery(TRACCS, '
SELECT * FROM FLEET_MASTER_VIEW WHERE MVA_NUMBER IN
(
SELECT FLEET_MOVEMENT.MVA_NUMBER from FLEET_MASTER_VIEW LEFT JOIN FLEET_MOVEMENT ON FLEET_MASTER_VIEW.REGISTRATION_NO = FLEET_MOVEMENT.VEHICLE_LICENCE_NUMBER AND FLEET_MASTER_VIEW.MVA_NUMBER <> FLEET_MOVEMENT.MVA_NUMBER
WHERE FLEET_MOVEMENT.MVA_NUMBER IS NOT NULL
)
')
*/







/*
select * from openquery(TRACCS, '
SELECT TRIGGER_ALTER_TIME FROM TRIGGER_VIEW WHERE TRIGGER_KEY = ''CONTROL'' AND TRIGGER_JOB_NAME = ''ERFDONE'' AND AVIS_COMP_CODE = ''AV''')
*/

-- LOOPING AND WAITING SECTION START
--declare @finished bit
--set @finished = 0
--WHILE @finished = 0 
--BEGIN
--IF
--	(
--	select * from openquery(TRACCS, '
--	SELECT TRIGGER_ALTER_TIME FROM TRIGGER_VIEW WHERE TRIGGER_KEY = ''CONTROL'' AND TRIGGER_JOB_NAME = ''ERFDONE'' AND AVIS_COMP_CODE = ''AV''')
--	)
--=
--	DATEADD(dd, DATEDIFF(dd,2,GETDATE()), 0) -- This is to check of TODAYS erf daily has run !!!
--	set @finished = 1 -- change to 1 
--ELSE
--	WAITFOR DELAY '00:05:00' -- HH:MM:SS -- This is 5 minutes 
--END
-- LOOPING AND WAITING SECTION END



-- Riaan Bothas User Report (should correlate to PETUSR05 in TRACTMP ) :
/*
select * from openquery(TRACCS, '
SELECT
cu.USER_GROUP_ID AS ''CU USER GROUP ID'',
cu.USER_NAME AS ''CU USER NAME'',
cu.USER_ID AS ''CU USER ID'',
IFNULL(tu.USER_NAME,''UNKNOWN'') AS ''TU USER NAME'',
IFNULL(tu.USER_ID,''UNKNOWN'') AS ''TU USER ID'',
IFNULL(cu.USER_OPEN_BLOCK_IND,'' '') AS ''CU OPEN/BLOCK INDICATOR'',
IFNULL(tu.LOCK_IND,'' '') AS ''TU LOCKED INDICATOR'',
tu.LOCK_TIME AS ''TU LOCKED TIME'',
tu.EXPIRY_DATE AS ''TU EXPIRY DATE'',
tu.ENTRY_TIME AS ''TU ENTRY TIME'',
tu.ENTRY_USER AS ''TU ENTRY USER'',
FROM 
CONTROL_USERS cu LEFT JOIN TRACCS_USER tu ON cu.USER_ID = tu.USER_ID
WHERE USER_REC_TYPE = 1
and cu.USER_GROUP_ID IS NOT NULL
ORDER BY cu.USER_GROUP_ID
')
*/





select 'Wizard fleet / Movements :'
select * from openquery(TRACCS, '
SELECT *  FROM FLEET_MOVEMENT
WHERE WIZ_OWNING_STN_NO = ''9106''
AND VEHICLE_STATUS <> ''UNAV/REG''
ORDER BY WIZ_OWNING_STN_NO
')


--SOLUTION TO ERROR BELOW: Put parentheses around the select statement in the if clause:
--Msg 156, Level 15, State 1, Line 1
--Incorrect syntax near the keyword 'select'.
--Msg 102, Level 15, State 1, Line 1
--Incorrect syntax near '='.
--Boolean_expression
-- Is an expression that returns TRUE or FALSE. If the Boolean expression contains a SELECT statement, the SELECT statement must be enclosed in parentheses.
--{sql_statement | statement_block}
-- Is any Transact-SQL statement or statement grouping as defined with a statement block. To define a statement block, use the control-of-flow keywords BEGIN and END.
--BREAK
-- Causes an exit from the innermost WHILE loop. Any statements that appear after the END keyword, marking the end of the loop, are executed.
--CONTINUE
-- Causes the WHILE loop to restart, ignoring any statements after the CONTINUE keyword.


-- NNNBBB: This section stopse execution if the erfdaily isnt done yet :
--------------------------------------------------------------------------------(RETURNSECTION_START)


--IF @finished = 0
--BEGIN
--BREAK
--END
---------------------------------------------------------------------------------(RETURNSECTION_END)



/*
Overview
-	Current Purchase Types
o	Purchase = P:  The vehicle is Purchased 
o	Lease = L: Lease agreement with manufacturer 
-	Current Asset Types
o	Risk = R: Vehicle will be sold by Avis Budget Car Sales 
o	Buy-back = B: Agreement with Manufacturer when the vehicle reach Turnback status
-	New Asset Type
o	Shared Revenue = S:  Agreement with the manufacturer where monthly revenue is shared 
These are the only 2 correct options:
-------------------------------------
L,B = 69 (turnback) – lb69
P,R = 70 (zeda)	
-------------------------------------
*/


/*
Hi the NBV should be the same on the Natural disposal report and on the automatic vehicle upload . In the month of September I have 66 cars uploaded with different NBV'S to what is on the Natural disposal report here is 5 of the cars ca318069 1304606,dt34vlgp 1304954,dv40sxgp 1308122,dv81hmgp 1309259,nd809871 1310601
In the month of September I have 66 cars uploaded with different NBV'S to what is on the Natural disposal report here is 5 of the cars ca318069 1304606,dt34vlgp 1304954,dv40sxgp 1308122,dv81hmgp 1309259,nd809871 1310601
*/
/*
select 'ISR8015 NBV should be the same on the Natural disposal report and on the automatic vehicle upload :'
select * from openquery(TRACCS, '
SELECT 
timestampdiff (SQL_TSI_DAY , CONVERT(FLEET_MASTER_VIEW.STATUS_CHANGE_TIME  date)  , CONVERT(CAR_MOVEMENT_VIEW.MOVEMENT_TIME  date)),
FLEET_MASTER_VIEW.MVA_NUMBER,
FLEET_MASTER_VIEW.MVA_CHECK,
FLEET_MASTER_VIEW.REGISTRATION_NO,
FLEET_MASTER_VIEW.PURCHASE_TYPE,
FLEET_MASTER_VIEW.ASSET_TYPE,
FLEET_MASTER_VIEW.VEHICLE_STATUS,
FLEET_MASTER_VIEW.STATUS_CHANGE_TIME,
FLEET_MASTER_VIEW.TURNBACK_DATE,
PUC_MASTER_VIEW.PUC_STATUS,
PUC_MASTER_VIEW.PUC_ADD_DATE,
CAR_MOVEMENT_VIEW.MOVEMENT_TIME AS MOVEMENT_TIME1,
CAR_MOVEMENT_VIEW.ENTRY_TIME AS ENTRY_TIME1,
CAR_MOVEMENT_VIEW.STATION_CODE AS STATION_CODE1
FROM vmisfractraccs.dbo.FLEET_MASTER_VIEW LEFT JOIN
PUC_MASTER_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
PUC_MASTER_VIEW.MVA_NUMBER LEFT JOIN
CAR_MOVEMENT_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
CAR_MOVEMENT_VIEW.MVA_NUMBER
WHERE  MOVEMENT_TIME = ( SELECT MIN(MOVEMENT_TIME) FROM CAR_MOVEMENT_VIEW WHERE MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER AND MOVEMENT_TYPE =''I'' AND SUBSTRING ( CAST (STATION_CODE AS VARCHAR(4))  , 1 ,2) = ''70'' ) 
and
FLEET_MASTER_VIEW.REGISTRATION_NO IN 
(
''CA318069'' ,''DT34VLGP'',''DV40SXGP'' ,''DV81HMGP'' ,''ND809871''
)
/* and timestampdiff (SQL_TSI_DAY , CONVERT(FLEET_MASTER_VIEW.STATUS_CHANGE_TIME  date)  , CONVERT(CAR_MOVEMENT_VIEW.MOVEMENT_TIME  date)) <> 0 */
order by MOVEMENT_TIME
')
*/



/*
-- RMMV01B (MANAGED MAINTENANCE INVESTIGATION EXAMPLE):
-- ----------------------------------------------------
      FPM.
      FIND PUC-MAST WITH SP-MVA = #SP-MVA
        ASSIGN #PUC = 'Y'
        IF FPM.PUC-STATUS = 'S'
          ADD 1 TO #SOLD
          IF F1.NAMIBIAN-YB EQ 'Y'
            ADD 1 TO #SOLDN
            MOVE 'R' TO F1.VEHICLE-STATUS
          ELSE
            ADD 1 TO #SOLDSA
*           IF F1.PUC-ASSET-SOLD = 'Y'
            MOVE F1.PUC-ADD-SOLD-TIME TO #TB-HOLD
            COMPUTE #TB-CLOSE-DATE = #TB-HOLD + 14
            IF #TB-CLOSE-DATE LE *DATX
              ADD 1 TO #SOLDNE
              MOVE 'R' TO F1.VEHICLE-STATUS
            END-IF
*           END-IF
          END-IF
        END-IF
      END-FIND
    NONE VALUE
      IGNORE 
  END-DECIDE
*/

/*
select * from openquery(TRACCS, '
SELECT 
timestampdiff (SQL_TSI_DAY , CONVERT(FLEET_MASTER_VIEW.STATUS_CHANGE_TIME  date)  , CONVERT(CAR_MOVEMENT_VIEW.MOVEMENT_TIME  date)),
FLEET_MASTER_VIEW.MVA_NUMBER,
FLEET_MASTER_VIEW.MVA_CHECK,
FLEET_MASTER_VIEW.REGISTRATION_NO,
FLEET_MASTER_VIEW.PURCHASE_TYPE,
FLEET_MASTER_VIEW.ASSET_TYPE,
FLEET_MASTER_VIEW.VEHICLE_STATUS,
FLEET_MASTER_VIEW.STATUS_CHANGE_TIME,
FLEET_MASTER_VIEW.TURNBACK_DATE,
PUC_MASTER_VIEW.PUC_STATUS,
PUC_MASTER_VIEW.PUC_ADD_DATE,
CAR_MOVEMENT_VIEW.MOVEMENT_TIME AS MOVEMENT_TIME1,
CAR_MOVEMENT_VIEW.ENTRY_TIME AS ENTRY_TIME1,
CAR_MOVEMENT_VIEW.STATION_CODE AS STATION_CODE1
FROM vmisfractraccs.dbo.FLEET_MASTER_VIEW LEFT JOIN
PUC_MASTER_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
PUC_MASTER_VIEW.MVA_NUMBER LEFT JOIN
CAR_MOVEMENT_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
CAR_MOVEMENT_VIEW.MVA_NUMBER
WHERE  MOVEMENT_TIME = ( SELECT MIN(MOVEMENT_TIME) FROM CAR_MOVEMENT_VIEW WHERE MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER AND MOVEMENT_TYPE =''I'' AND SUBSTRING ( CAST (STATION_CODE AS VARCHAR(4))  , 1 ,2) = ''70'' ) 
and
FLEET_MASTER_VIEW.REGISTRATION_NO IN 
(
''FF82CHGP'',''FH26MJGP''
)
/* and timestampdiff (SQL_TSI_DAY , CONVERT(FLEET_MASTER_VIEW.STATUS_CHANGE_TIME  date)  , CONVERT(CAR_MOVEMENT_VIEW.MOVEMENT_TIME  date)) <> 0 */
order by MOVEMENT_TIME
')
*/

/*
select 'Run this to get the list of errors : C:\Users\kieran.swanepoel\Dropbox\ALL TRACCS tasks\investigate\NewAutomateERRORS.bat'
select 'AUTOMATE PROJECT logs not being looked at: P,R = 70 (zeda):'
select * from openquery(TRACCS, '
SELECT 
PUC_MASTER_VIEW.PUC_STATUS,
PUC_MASTER_VIEW.PUC_ADD_DATE,
FLEET_MASTER_VIEW.MVA_NUMBER,
FLEET_MASTER_VIEW.MVA_CHECK,
FLEET_MASTER_VIEW.REGISTRATION_NO,
FLEET_MASTER_VIEW.PURCHASE_TYPE,
FLEET_MASTER_VIEW.ASSET_TYPE,
FLEET_MASTER_VIEW.VEHICLE_STATUS,
FLEET_MASTER_VIEW.STATUS_CHANGE_TIME,
FLEET_MASTER_VIEW.TURNBACK_DATE,
CAR_MOVEMENT_VIEW.MOVEMENT_TIME AS MOVEMENT_TIME1,
CAR_MOVEMENT_VIEW.ENTRY_TIME AS ENTRY_TIME1,
CAR_MOVEMENT_VIEW.STATION_CODE AS STATION_CODE1
FROM vmisfractraccs.dbo.FLEET_MASTER_VIEW LEFT JOIN
PUC_MASTER_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
PUC_MASTER_VIEW.MVA_NUMBER LEFT JOIN
CAR_MOVEMENT_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
CAR_MOVEMENT_VIEW.MVA_NUMBER
WHERE MOVEMENT_TIME = ( SELECT MAX(MOVEMENT_TIME) FROM CAR_MOVEMENT_VIEW WHERE MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER )
AND
FLEET_MASTER_VIEW.REGISTRATION_NO IN 
(
''DV39BZGP'',
''ND684081'',
''DX26ZMGP'',
''DL60JFGP'',
''DY13CGGP'',
''DY13DCGP'',
''NT5114'',  
''NPN10943'',
''BG37WSGP'',
''NPS507'',  
''NT14097'', 
''NT21576'', 
''DV43MMGP'',
''DL58PFGP'',
''DY94RWGP'',
''DT09VSGP'',
''DV43MMGP'',
''DL88SZGP'',
''ND534489'',
''DX28GBGP'',
''DY12WBGP'',
''DL88SZGP'',
''DY67KKGP'',
''DX41WGGP'',
''DZ34NPGP'',
''NUZ327'',  
''NU16152'', 
''NP60205'', 
''CA677686'',
''CY127046'',
''DY34BTGP'',
''DX40NYGP'',
''DX40KZGP'',
''DV39VNGP'',
''DX16KPGP'',
''DL88SZGP'',
''DT03PYGP'',
''CA237016'',
''HNS415EC'',
''DT03PYGP'',
''DW07KSGP'',
''DW10KGGP'',
''NP202465'',
''DL59XKGP'',
''DW94SFGP'',
''DJ50NPGP'',
''DX37XWGP'',
''THG971GP'',
''NUB5878'', 
''DW46SWGP'',
''ND750438'',
''DX27CGGP'',
''DM44HKGP'',
''NU107614'',
''ND518516'',
''RVJ448GP'',
''ND273743'',
''FTB546FS'',
''DZK437FS'',
''FSN226FS'',
''CWR868L'', 
''DZP757FS'',
''DZ16XKGP'',
''DX42NNGP'',
''DX26ZBGP'',
''ND598536'',
''CA513456'',
''DW05PVGP'',
''DX40MNGP'',
''DX40LYGP'',
''DX37XVGP'',
''DY95CKGP'',
''DL79FYGP'',
''DY42LHGP'',
''DL58VNGP'',
''DX27CMGP''
)
')
*/
/* -----------NNNNNNNNNNNBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB PUT THIS BACK :
--- Only the A - Active cars THIS TIME !!!!!!!!!!!!!! - note the T's are these are profit shares :
select 'Run this to get the list of errors : C:\Users\kieran.swanepoel\Dropbox\ALL TRACCS tasks\investigate\NewAutomateERRORS.bat'
select 'AUTOMATE PROJECT logs not being looked at: P,R = 70 (zeda):'
select * from openquery(TRACCS, '
SELECT 
PUC_MASTER_VIEW.PUC_STATUS,
PUC_MASTER_VIEW.PUC_ADD_DATE,
FLEET_MASTER_VIEW.MVA_NUMBER,
FLEET_MASTER_VIEW.MVA_CHECK,
FLEET_MASTER_VIEW.REGISTRATION_NO,
FLEET_MASTER_VIEW.PURCHASE_TYPE,
FLEET_MASTER_VIEW.ASSET_TYPE,
FLEET_MASTER_VIEW.VEHICLE_STATUS,
FLEET_MASTER_VIEW.STATUS_CHANGE_TIME,
FLEET_MASTER_VIEW.TURNBACK_DATE,
CAR_MOVEMENT_VIEW.MOVEMENT_TIME AS MOVEMENT_TIME1,
CAR_MOVEMENT_VIEW.ENTRY_TIME AS ENTRY_TIME1,
CAR_MOVEMENT_VIEW.STATION_CODE AS STATION_CODE1
FROM vmisfractraccs.dbo.FLEET_MASTER_VIEW LEFT JOIN
PUC_MASTER_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
PUC_MASTER_VIEW.MVA_NUMBER LEFT JOIN
CAR_MOVEMENT_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
CAR_MOVEMENT_VIEW.MVA_NUMBER
WHERE MOVEMENT_TIME = ( SELECT MAX(MOVEMENT_TIME) FROM CAR_MOVEMENT_VIEW WHERE MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER )
AND
VEHICLE_STATUS = ''A''
AND
FLEET_MASTER_VIEW.REGISTRATION_NO IN 
(
''DV39BZGP'',
''ND684081'',
''DX26ZMGP'',
''DL60JFGP'',
''DY13CGGP'',
''DY13DCGP'',
''NT5114'',  
''NPN10943'',
''BG37WSGP'',
''NPS507'',  
''NT14097'', 
''NT21576'', 
''DV43MMGP'',
''DL58PFGP'',
''DY94RWGP'',
''DT09VSGP'',
''DV43MMGP'',
''DL88SZGP'',
''ND534489'',
''DX28GBGP'',
''DY12WBGP'',
''DL88SZGP'',
''DY67KKGP'',
''DX41WGGP'',
''DZ34NPGP'',
''NUZ327'',  
''NU16152'', 
''NP60205'', 
''CA677686'',
''CY127046'',
''DY34BTGP'',
''DX40NYGP'',
''DX40KZGP'',
''DV39VNGP'',
''DX16KPGP'',
''DL88SZGP'',
''DT03PYGP'',
''CA237016'',
''HNS415EC'',
''DT03PYGP'',
''DW07KSGP'',
''DW10KGGP'',
''NP202465'',
''DL59XKGP'',
''DW94SFGP'',
''DJ50NPGP'',
''DX37XWGP'',
''THG971GP'',
''NUB5878'', 
''DW46SWGP'',
''ND750438'',
''DX27CGGP'',
''DM44HKGP'',
''NU107614'',
''ND518516'',
''RVJ448GP'',
''ND273743'',
''FTB546FS'',
''DZK437FS'',
''FSN226FS'',
''CWR868L'', 
''DZP757FS'',
''DZ16XKGP'',
''DX42NNGP'',
''DX26ZBGP'',
''ND598536'',
''CA513456'',
''DW05PVGP'',
''DX40MNGP'',
''DX40LYGP'',
''DX37XVGP'',
''DY95CKGP'',
''DL79FYGP'',
''DY42LHGP'',
''DL58VNGP'',
''DX27CMGP''
)
')
*/


/* ---------------------------- PUT THIS BACK !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
select 'This time used but not sold - these must be timing issues :'
select 'Run this to get the list of errors : C:\Users\kieran.swanepoel\Dropbox\ALL TRACCS tasks\investigate\NewAutomateERRORS.bat'
select 'AUTOMATE PROJECT logs not being looked at: P,R = 70 (zeda):'
select * from openquery(TRACCS, '
SELECT 
PUC_MASTER_VIEW.PUC_STATUS,
PUC_MASTER_VIEW.PUC_ADD_DATE,
FLEET_MASTER_VIEW.MVA_NUMBER,
FLEET_MASTER_VIEW.MVA_CHECK,
FLEET_MASTER_VIEW.REGISTRATION_NO,
FLEET_MASTER_VIEW.PURCHASE_TYPE,
FLEET_MASTER_VIEW.ASSET_TYPE,
FLEET_MASTER_VIEW.VEHICLE_STATUS,
FLEET_MASTER_VIEW.STATUS_CHANGE_TIME,
FLEET_MASTER_VIEW.TURNBACK_DATE,
CAR_MOVEMENT_VIEW.MOVEMENT_TIME AS MOVEMENT_TIME1,
CAR_MOVEMENT_VIEW.ENTRY_TIME AS ENTRY_TIME1,
CAR_MOVEMENT_VIEW.STATION_CODE AS STATION_CODE1
FROM vmisfractraccs.dbo.FLEET_MASTER_VIEW LEFT JOIN
PUC_MASTER_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
PUC_MASTER_VIEW.MVA_NUMBER LEFT JOIN
CAR_MOVEMENT_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
CAR_MOVEMENT_VIEW.MVA_NUMBER
WHERE MOVEMENT_TIME = ( SELECT MAX(MOVEMENT_TIME) FROM CAR_MOVEMENT_VIEW WHERE MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER )
AND
VEHICLE_STATUS = ''U''
AND
PUC_STATUS <> ''S''
AND
FLEET_MASTER_VIEW.REGISTRATION_NO IN 
(
''DV39BZGP'',
''ND684081'',
''DX26ZMGP'',
''DL60JFGP'',
''DY13CGGP'', /* LHFAUTOErrorlog04102016T.csv STATUS_CHANGE_TIME 2016-09-30 00:00:01.4000000 */
''DY13DCGP'',
''NT5114'',  
''NPN10943'',
''BG37WSGP'',
''NPS507'',  
''NT14097'', 
''NT21576'', 
''DV43MMGP'',
''DL58PFGP'',
''DY94RWGP'',
''DT09VSGP'',
''DV43MMGP'',
''DL88SZGP'',
''ND534489'',
''DX28GBGP'',
''DY12WBGP'',
''DL88SZGP'',
''DY67KKGP'',
''DX41WGGP'',
''DZ34NPGP'',
''NUZ327'',  
''NU16152'', 
''NP60205'', 
''CA677686'',
''CY127046'',
''DY34BTGP'',
''DX40NYGP'',
''DX40KZGP'',
''DV39VNGP'',
''DX16KPGP'',
''DL88SZGP'',
''DT03PYGP'',
''CA237016'',
''HNS415EC'',
''DT03PYGP'',
''DW07KSGP'',
''DW10KGGP'',
''NP202465'',
''DL59XKGP'',
''DW94SFGP'',
''DJ50NPGP'',
''DX37XWGP'',
''THG971GP'',
''NUB5878'', 
''DW46SWGP'',
''ND750438'',
''DX27CGGP'',
''DM44HKGP'',
''NU107614'',
''ND518516'',
''RVJ448GP'',
''ND273743'',
''FTB546FS'',
''DZK437FS'',
''FSN226FS'',
''CWR868L'', 
''DZP757FS'',
''DZ16XKGP'',
''DX42NNGP'',
''DX26ZBGP'',
''ND598536'',
''CA513456'',
''DW05PVGP'',
''DX40MNGP'',
''DX40LYGP'',
''DX37XVGP'',
''DY95CKGP'',
''DL79FYGP'',
''DY42LHGP'',
''DL58VNGP'',
''DX27CMGP''
)
')
*/



select 'Started running AT 69 BUT ACTIVE at : ',GETDATE()


-----------NNNNNNNNNNNBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB PUT THIS BACK :
--select 'Commented out because it runs for 30 mins !!!!(AT 69 BUT ACTIVE - Riaan W  "EA0 appreaing on the daily fleet issue" issue ). These are mostly becaue they are loaded INCORRECLTY as ZEDA cars - PR and not turnbacks - LB :'
--------------------------------------------------------------------------------------
/*
select * from openquery(TRACCS, '
SELECT FLEET_MASTER_VIEW.MVA_NUMBER,
FLEET_MASTER_VIEW.MVA_CHECK,
FLEET_MASTER_VIEW.REGISTRATION_NO,
FLEET_MASTER_VIEW.PURCHASE_TYPE,
FLEET_MASTER_VIEW.ASSET_TYPE,
FLEET_MASTER_VIEW.VEHICLE_STATUS,
FLEET_MASTER_VIEW.STATUS_CHANGE_TIME,
FLEET_MASTER_VIEW.TURNBACK_DATE,
PUC_MASTER_VIEW.PUC_STATUS,
PUC_MASTER_VIEW.PUC_ADD_DATE,
CAR_MOVEMENT_VIEW.MOVEMENT_TIME AS MOVEMENT_TIME1,
CAR_MOVEMENT_VIEW.ENTRY_TIME AS ENTRY_TIME1,
CAR_MOVEMENT_VIEW.STATION_CODE AS STATION_CODE1
FROM vmisfractraccs.dbo.FLEET_MASTER_VIEW LEFT JOIN
PUC_MASTER_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
PUC_MASTER_VIEW.MVA_NUMBER LEFT JOIN
CAR_MOVEMENT_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
CAR_MOVEMENT_VIEW.MVA_NUMBER
WHERE MOVEMENT_TIME = ( SELECT MAX(MOVEMENT_TIME) FROM CAR_MOVEMENT_VIEW WHERE MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER )
AND
VEHICLE_STATUS = ''A''
AND
FLEET_MASTER_VIEW.AVIS_COMP_CODE = ''AV''
AND
SUBSTRING ( CAST (STATION_CODE AS VARCHAR(4))  , 1 ,2) = ''69''
ORDER BY MOVEMENT_TIME
')
*/

--THESE WERE THE CARS IN THE LIST ON THE MORNING OF 08 DEC 2016 :
---------------------------------------------------------------
--REGISTRATION_NO	PURCHASE_TYPE	ASSET_TYPE	VEHICLE_STATUS
--CA859496  		P				R			A
--DD80RBGP  		L				R			A
--DH06PLGP  		P				R			A
--DV45DSGP  		P				R			A
--DV23HTGP  		P				R			A
--DT96LZGP  		P				R			A
--DW54NDGP  		L				B			A fixed now
--DW59KHGP  		L				B			A fixed now
--DY49KTGP  		P				R			A
--FC39YPGP  		P				R			A fixed now 
--FB14WXGP  		P				R			A
--HWR265MP  		P				R			A
--FC27PLGP  		P				R			A




select 'SAKI BUILT A FIX SO THEY CANT LOAD them as LR or PB anymore!!! These ones will never go into T becasue of the LR (they should be LB)'
select * from openquery(TRACCS, '
SELECT FLEET_MASTER_VIEW.MVA_NUMBER,
FLEET_MASTER_VIEW.MVA_CHECK,
FLEET_MASTER_VIEW.REGISTRATION_NO,
FLEET_MASTER_VIEW.PURCHASE_TYPE,
FLEET_MASTER_VIEW.ASSET_TYPE,
FLEET_MASTER_VIEW.VEHICLE_STATUS,
FLEET_MASTER_VIEW.STATUS_CHANGE_TIME,
FLEET_MASTER_VIEW.TURNBACK_DATE,
PUC_MASTER_VIEW.PUC_STATUS,
PUC_MASTER_VIEW.PUC_ADD_DATE,
CAR_MOVEMENT_VIEW.MOVEMENT_TIME AS MOVEMENT_TIME1,
CAR_MOVEMENT_VIEW.ENTRY_TIME AS ENTRY_TIME1,
CAR_MOVEMENT_VIEW.STATION_CODE AS STATION_CODE1
FROM vmisfractraccs.dbo.FLEET_MASTER_VIEW LEFT JOIN
PUC_MASTER_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
PUC_MASTER_VIEW.MVA_NUMBER LEFT JOIN
CAR_MOVEMENT_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
CAR_MOVEMENT_VIEW.MVA_NUMBER
WHERE	
		MOVEMENT_TIME = ( SELECT MAX(MOVEMENT_TIME) FROM CAR_MOVEMENT_VIEW WHERE MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER )
		AND
		VEHICLE_STATUS = ''A''
		AND
		FLEET_MASTER_VIEW.AVIS_COMP_CODE = ''AV''
		AND
		(
		(PURCHASE_TYPE = ''L'' AND ASSET_TYPE = ''R'')
		OR
		(PURCHASE_TYPE = ''P'' AND ASSET_TYPE = ''B'')
		)
		
ORDER BY MOVEMENT_TIME
')

--Lischen enquiry :



/*
-----Original Message-----
From: Nedbank Support [mailto:support@iveri.co.za] 
Sent: 13 October 2016 11:31 AM
To: Lucas Zwane <Lucas.Zwane@avisbudget.co.za>
Cc: FileUploadReports <File.UploadReports@avis.co.za>
Subject: IVERIZA003925.DAT Uploaded

Dear  Client

We have received your Batch file bat-iveriz870e37a3.zip uploaded on 2016-10-13 11:28:07

We found the following warning(s):

Record Number: 1587	(Merchant Reference: E442240676 00392501587)
BatchItem element CCNumber/PAN element Not Valid

PLEASE NOTE: The above Batch file has been rejected for the specified reason and you need to make the necessary correction/s before uploading this batch file again.

*/
/*
select * from openquery(TRACCS, '
SELECT TRANSACTION_AMOUNT,                                              WIZ_FILE_SEQ_NUMBER,WIZ_FILE_SEQ_NUMBER - 5632,DATA_DATE,INTERNAL_TAPE_SEQ_NO,''1'' AS SORT_ORDER FROM CCS_DETAIL_FILE WHERE 
INTERNAL_TAPE_SEQ_NO = 3925 AND PERIOD_CCYYPP >= 211701 AND AVIS_COMP_CODE IN (''ZA'') AND USER_ID <> ''PREPAY''
UNION
SELECT SUM(TRANSACTION_AMOUNT) AS TRANSACTION_AMOUNT,WIZ_FILE_SEQ_NUMBER,WIZ_FILE_SEQ_NUMBER - 5632,DATA_DATE,INTERNAL_TAPE_SEQ_NO,''2'' AS SORT_ORDER FROM CCS_DETAIL_FILE WHERE 
INTERNAL_TAPE_SEQ_NO = 3925 AND PERIOD_CCYYPP >= 211701 AND AVIS_COMP_CODE IN (''ZA'') AND USER_ID <> ''PREPAY''
UNION
SELECT TRANSACTION_AMOUNT,                                              WIZ_FILE_SEQ_NUMBER,WIZ_FILE_SEQ_NUMBER - 5632,DATA_DATE,INTERNAL_TAPE_SEQ_NO,''3'' AS SORT_ORDER FROM CCS_DETAIL_FILE WHERE 
INTERNAL_TAPE_SEQ_NO = 3925 AND PERIOD_CCYYPP >= 211701 AND AVIS_COMP_CODE IN (''ZA'') AND USER_ID = ''PREPAY''
UNION
SELECT SUM(TRANSACTION_AMOUNT) AS TRANSACTION_AMOUNT,WIZ_FILE_SEQ_NUMBER,WIZ_FILE_SEQ_NUMBER - 5632,DATA_DATE,INTERNAL_TAPE_SEQ_NO,''4'' AS SORT_ORDER FROM CCS_DETAIL_FILE WHERE 
INTERNAL_TAPE_SEQ_NO = 3925 AND PERIOD_CCYYPP >= 211701 AND AVIS_COMP_CODE IN (''ZA'') AND USER_ID = ''PREPAY''
UNION
SELECT TRANSACTION_AMOUNT,                                              WIZ_FILE_SEQ_NUMBER,WIZ_FILE_SEQ_NUMBER - 5632,DATA_DATE,INTERNAL_TAPE_SEQ_NO,''5'' AS SORT_ORDER FROM CCS_DETAIL_FILE WHERE 
INTERNAL_TAPE_SEQ_NO = 3925 AND PERIOD_CCYYPP >= 211701 AND AVIS_COMP_CODE IN (''B0'')
UNION
SELECT SUM(TRANSACTION_AMOUNT) AS TRANSACTION_AMOUNT,WIZ_FILE_SEQ_NUMBER,WIZ_FILE_SEQ_NUMBER - 5632,DATA_DATE,INTERNAL_TAPE_SEQ_NO,''6'' AS SORT_ORDER FROM CCS_DETAIL_FILE WHERE 
INTERNAL_TAPE_SEQ_NO = 3925 AND PERIOD_CCYYPP >= 211701 AND AVIS_COMP_CODE IN (''B0'')
UNION
SELECT SUM(TRANSACTION_AMOUNT) AS TRANSACTION_AMOUNT,WIZ_FILE_SEQ_NUMBER,WIZ_FILE_SEQ_NUMBER - 5632,DATA_DATE,INTERNAL_TAPE_SEQ_NO,''7'' AS SORT_ORDER FROM CCS_DETAIL_FILE WHERE 
INTERNAL_TAPE_SEQ_NO = 3925 AND PERIOD_CCYYPP >= 211701 AND AVIS_COMP_CODE IN (''ZA'',''B0'')
ORDER BY SORT_ORDER
')
*/



--Has any accidentally been loaded :
/*
select WIZ_FILE_SEQ_NUMBER , INTERNAL_TAPE_SEQ_NO,ENTRY_TIME,*  from CCS_DETAIL_FILE where PERIOD_CCYYPP >= '211601' AND  PROCESSED_IND = 'NO' AND INTERNAL_TAPE_SEQ_NO = 8054
*/

select 'Autoshipped cars with the new fields :'
select * from openquery(TRACCS, '
SELECT MANUFACTURER_CODE,FLEET_MODEL_CODE,VEHICLE_STATUS,STATUS_CHANGE_TIME,CO2_EMISSION,TYRE_SIZE,[M&M_CODE],FUEL_TANK_CAPACITY,FUEL_CONSUMPTION,FUEL_TYPE,VEHICLE_MODEL_CODE,RETAIL_PRICE,WIZ_DELIVERY_DATE from FLEET_MASTER_VIEW WHERE 
CO2_EMISSION <> '' '' OR 
TYRE_SIZE <> '' '' OR 
[M&M_CODE] <> '' '' OR 
FUEL_TANK_CAPACITY <> 0 OR
FUEL_CONSUMPTION <> '' '' OR 
FUEL_TYPE <> '' '' OR 
VEHICLE_MODEL_CODE <> '' '' OR 
RETAIL_PRICE <>  0 
ORDER BY WIZ_DELIVERY_DATE
')

select 'Investigation for Erika (THERE ARE MULTIPLE WIZARD_MODEL_CODES that link to the same FLEET_MODEL_CODE):'
select * from openquery(TRACCS, '
SELECT  MVA_NUMBER,REGISTRATION_NO,FLEET_MASTER_VIEW.FLEET_MODEL_CODE,WIZARD_MODEL_CODE, SHORT_DESCRIPTION,CO2,CO2_EMISSION ''CO2fleet''
 FROM FLEET_MASTER_VIEW,AVIS_MODEL_CODE_VIEW  INNER JOIN 
AVIS_MODEL_CODE_VIEW ON FLEET_MASTER_VIEW.FLEET_MODEL_CODE = AVIS_MODEL_CODE_VIEW.FLEET_MODEL_CODE 
WHERE REGISTRATION_NO IN
(
''ND549480'',
''CA11664'',
''CA16911'',
''CA245423'',
''FD35RTGP'',
''FD35RVGP'',
''FD46RSGP'',
''FF33WYGP'',
''FF33XYGP'',
''FF33YNGP'',
''FF34BNGP'',
''FF34BTGP'',
''FK10YJGP'',
''FK10ZSGP'',
''FK11BTGP'',
''FK11BYGP'',
''FL74SBGP'',
''FL74SGGP'',
''FL74TFGP'',
''FL74TTGP'',
''FL74VFGP'',
''FL74VHGP'',
''FL74VNGP'',
''FL74VTGP'',
''FL74VYGP'',
''FM05MLGP'',
''ND521076''
)
')
-- PUT ME BACK WHEN WORKING GETING ERROR :
--OLE DB provider "SQLNCLI11" for linked server "BLISFSQL3RAC" returned message "Login timeout expired".
--OLE DB provider "SQLNCLI11" for linked server "BLISFSQL3RAC" returned message "Unable to complete login process due to delay in login response".
--Msg 258, Level 16, State 1, Line 0
--TCP Provider: Timeout error [258]. 
--select 'LOCATIONS COMPARISON :'
----LEFT JOIN
--SELECT STATION_VIEW.STATION_CODE,substring(LocDB.StationBackOfficeCode,2,5),* FROM BLISFSQL3RAC.RAC_LocationInfo.dbo.StationLocation AS LocDB 
--LEFT JOIN OPENQUERY(TRACCS, 'SELECT * From STATION_VIEW WHERE STATUS = ''O''') AS STATION_VIEW 
--ON substring(LocDB.StationBackOfficeCode,2,5) = STATION_VIEW.STATION_CODE COLLATE SQL_Latin1_General_CP1_CI_AS
--where OpenCloseIND = 'O' and CountryNumber = '384' and VendorNumber = 'A10000'
--and StationTypeIND = 4 
--AND STATION_CODE IS NULL --<-- these are the ones missing from natural (commetn out this line for all)
--order by substring(LocDB.StationBackOfficeCode,2,5)

/*
-- REVERSED INNER JOIN :
SELECT *
FROM OPENQUERY(TRACCS, 'SELECT * From STATION_VIEW WHERE STATUS = ''O''') AS STATION_VIEW
INNER JOIN BLISFSQL3RAC.RAC_LocationInfo.dbo.StationLocation AS LocDB
    ON STATION_VIEW.STATION_CODE COLLATE SQL_Latin1_General_CP1_CI_AS  = substring(LocDB.StationBackOfficeCode,2,5)
where OpenCloseIND = 'O' and CountryNumber = '384' and VendorNumber = 'A10000'
and StationTypeIND = 4 
order by substring(LocDB.StationBackOfficeCode,2,5)
*/




-- Tersia Query: Please may I ask you to check on which tape RA E389946701 was submitted for a refund of -R1806  This is for Vans Vaal Vendor A10019 :
/*
select * from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER = ''  E389946701''
')

select * from openquery(TRACCS, '
SELECT * FROM CCS_DETAIL_FILE WHERE CREDIT_CLUB_NUMBER = ''4009741001390394''
')
*/


-- Safari vans Namibia :
/*
select * from openquery(TRACCS, '
select * from CCS_DETAIL_FILE WHERE RA_NUMBER IN
(
''  E248670133'',
''  E248670192'',
''  E248670240'',
''  E248670310'',
''  E248670365'',
''  E801190946'',
''  E441386643'',
''  E441386654''
)
')
*/

--openra check :
----------------
/*
select * from openquery(TRACCS, '
SELECT * FROM RA_OPEN_FILE WHERE RA_NUMBER = ''441713613'' and avis_comp_code = ''AV'' and RA_RECORD_TYPE = 1
')
*/


/*
-- FLEET FILE REPLICATION of SAFLEET for (ALL E AND A CARS ON TRACCS):
select * from openquery(TRACCS, '
select FLEET_MASTER_VIEW.*,
FLEET_MOVEMENT.MVA_NUMBER as MVA_NO,
FLT_VEH_IDENT_NUMBER,
VEHICLE_LICENCE_NUMBER,
CURRENT_LOCATION_STN_NO,
CURRENT_LOCATION_STN_MNEMONIC,
VEHICLE_DELIVERY_DATE,
FLEET_MOVEMENT.VEHICLE_STATUS as VEH_STATUS,
MARSHALL_DATE,
VEH_MAKE_MODEL_DESC,
VEH_MAKE_MODEL_CODE,
VEHICLE_CLASS_CODE,
VEH_PURCHASE_DATE,
MISSING_VEHICLE_DATE,
DEALER_NAME,
REG_EXPIRATION_DATE,              
FLEET_MOVEMENT.MANUFACTURER_CODE as MANUFACTURER,
REG_COUNTRY_CODE,	WIZ_CHECKOUT_STN_NO,	WIZ_CHECKIN_STN_NO,
CHECKOUT_DATE,	CHECKIN_DATE,	RENTAL_AGREEMENT_PREFIX	,RENTAL_AGREEMENT_NUMBER,
OPEN_MOVEMENT_INDICATOR ,
PREV_CHECKOUT_DATE	, PREV_CHECKIN_DATE ,
PREV_RENTAL_AGREEMENT_NO,
HOLD_STATUS_INDICATOR	,	VEHICLE_ON_MOVEMENT_IND, TURNBACK_STATUS_INDICATOR,
FIRST_NON_REVENUE_DATE	,FIRST_REVENUE_DATE	,LAST_NON_REVENUE_DATE,	LAST_REVENUE_DATE,	VEHICLE_ADD_ENTERED_DATE	,VEHICLE_LAST_MAINT_LOC,
VEHICLE_ADD_STATION_NUMBER	,CONDITION_REPORT_AMT,	CONDITION_REPORT_DATE,	VEHICLE_TURN_IN_DATE,	ANTICIPATED_TURN_IN_DATE	,
MIN_TURNBACK_MONTHS_NUMBER	,MAX_TURNBACK_MONTHS_NUMBER	,MAX_TURNBACK_MILEAGE_NUMBER,	TURNBACK_PROGRAM_END_DATE
,
TURNBACK_LEAD_TIME_NUMBER,	TURNBACK_LEAD_MILEAGE_NUMBER,	IN_SERVICE_DATE	,MIN_TURNBACK_DAYS_NUMBER,	MAX_TURNBACK_DAYS_NUMBER	
,
TURNBACK_LEAD_DAYS_NUMBER	,MISC_EQUIPMENT_CHARGES_AMT,	GLASS_CHARGES_AMT,	DISPOSAL_LEAD_MILEAGE_NO	,
UNACCEPTABLE_REPAIR_AMT ,	ELIGIBLE_STATUS_OPTION_IND,	TURNBACK_STATUS_OPTION_IND,	MIN_TURNBACK_MILEAGE_NUMBER ,	
HI_MILEAGE_PROCESS_DATE,	HI_MILES_PROC_MAX_NO,	RADIO_CODE,	RADIO_SECURITY_CODE,	PM_IND,	PM_MILES_KMS,	 PM_SERVICE,	PM_MK_MOD,	
RUN_DATE,	
FLEET_MOVEMENT.TURNBACK_DATE AS TB_DATE,			
FLEET_MOVEMENT.USE_CODE
from FLEET_MASTER_VIEW LEFT JOIN FLEET_MOVEMENT ON FLEET_MASTER_VIEW.MVA_NUMBER = FLEET_MOVEMENT.MVA_NUMBER 
WHERE FLEET_MASTER_VIEW.VEHICLE_STATUS IN (''A'',''E'')
')
*/




-- Riaan Bothas User Report (should correlate to PETUSR05 in TRACTMP ) :
/*
select * from openquery(TRACCS, '
SELECT
cu.USER_GROUP_ID AS ''CU USER GROUP ID'',
cu.USER_NAME AS ''CU USER NAME'',
cu.USER_ID AS ''CU USER ID'',
IFNULL(tu.USER_NAME,''UNKNOWN'') AS ''TU USER NAME'',
IFNULL(tu.USER_ID,''UNKNOWN'') AS ''TU USER ID'',
IFNULL(cu.USER_OPEN_BLOCK_IND,'' '') AS ''CU OPEN/BLOCK INDICATOR'',
IFNULL(tu.LOCK_IND,'' '') AS ''TU LOCKED INDICATOR'',
tu.LOCK_TIME AS ''TU LOCKED TIME'',
tu.EXPIRY_DATE AS ''TU EXPIRY DATE'',
tu.ENTRY_TIME AS ''TU ENTRY TIME'',
tu.ENTRY_USER AS ''TU ENTRY USER'',
FROM 
CONTROL_USERS cu LEFT JOIN TRACCS_USER tu ON cu.USER_ID = tu.USER_ID
WHERE 
cu.USER_GROUP_ID IS NOT NULL
ORDER BY cu.USER_GROUP_ID
')
*/



--user removal requests :
--http://aviszwakala.avis.co.za/avisworkflows/Lists/ITISRequestsArchive/DispForm.aspx?ID=7615&ContentTypeId=0x010015442BFC41378542B612E4D84A835D4E00306ED9192E866141A211A13A7E4FD0B0
--http://aviszwakala.avis.co.za/avisworkflows/Lists/ITISRequestsArchive/DispForm.aspx?ID=7690&ContentTypeId=0x010015442BFC41378542B612E4D84A835D4E00306ED9192E866141A211A13A7E4FD0B0
--http://aviszwakala.avis.co.za/avisworkflows/Lists/ITISRequestsArchive/DispForm.aspx?ID=7720&ContentTypeId=0x010015442BFC41378542B612E4D84A835D4E00306ED9192E866141A211A13A7E4FD0B0
 --there will be only 67 users after the final update 
 
--ALL REQUESTS TO REINSTATE USERS and add new users :
-----------------------------------
-- ISR8463 http://aviszwakala.avis.co.za/avisworkflows/Lists/ITISRequestsArchive/DispForm.aspx?ID=7971&ContentTypeId=0x010015442BFC41378542B612E4D84A835D4E00306ED9192E866141A211A13A7E4FD0B0
-- install traccs and provide access Loutjie Hughes . Please install TRACCS and provide access. Claims MANAGER ACCESS
-- ISR8462 http://aviszwakala.avis.co.za/avisworkflows/Lists/ITISRequestsArchive/DispForm.aspx?ID=7959&ContentTypeId=0x010015442BFC41378542B612E4D84A835D4E00306ED9192E866141A211A13A7E4FD0B0
-- New TRACCS user TSHEPANG SAMKELO SKOSANA - Hi grant TSHEPANG SAMKELO SKOSANA access to TRACCS. Claims menu it will only be for functions CL and MM.
-- ISR8227  http://aviszwakala.avis.co.za/avisworkflows/Lists/ITISRequestsArchive/DispForm.aspx?ID=7941&ContentTypeId=0x010015442BFC41378542B612E4D84A835D4E00306ED9192E866141A211A13A7E4FD0B0
-- Reinstate TRACCS Users - THIS WAS KEPT OPEN TO ADD USERS : Access reinstated to: TMC0012 (2016/11/11)  Access reinstated to: TRFADM07 (2016/11/11). Tyron Padayachee re-instated 28/11/2016
-- ISR8219 http://aviszwakala.avis.co.za/avisworkflows/Lists/ITISRequestsArchive/DispForm.aspx?ID=7791&ContentTypeId=0x010015442BFC41378542B612E4D84A835D4E00306ED9192E866141A211A13A7E4FD0B0
-- Please reset TRACCS for Charlene Barnard PLN0003
-- ISR8215 http://aviszwakala.avis.co.za/avisworkflows/Lists/ITISRequestsArchive/DispForm.aspx?ID=7744&ContentTypeId=0x010015442BFC41378542B612E4D84A835D4E00306ED9192E866141A211A13A7E4FD0B0
-- Please reset PLN0004 for Ronnie Lechoba
-- ISR8223 http://aviszwakala.avis.co.za/avisworkflows/Lists/ITISRequestsArchive/DispForm.aspx?ID=7727&ContentTypeId=0x010015442BFC41378542B612E4D84A835D4E00306ED9192E866141A211A13A7E4FD0B0
-- Please reset AVSAA06  SAMANTHA BOTHA 
-- ISR8221 http://aviszwakala.avis.co.za/avisworkflows/Lists/ITISRequestsArchive/DispForm.aspx?ID=7735&ContentTypeId=0x010015442BFC41378542B612E4D84A835D4E00306ED9192E866141A211A13A7E4FD0B0
-- Please reset PLNE002 for Elsje Clark in TRACCS
-- ISR8220 http://aviszwakala.avis.co.za/avisworkflows/Lists/ITISRequestsArchive/DispForm.aspx?ID=7736&ContentTypeId=0x010015442BFC41378542B612E4D84A835D4E00306ED9192E866141A211A13A7E4FD0B0
-- Please reset Rayleen Padayachee  PLN0005
-- ISR8156 http://aviszwakala.avis.co.za/avisworkflows/Lists/ITISRequestsArchive/DispForm.aspx?ID=7679&ContentTypeId=0x010015442BFC41378542B612E4D84A835D4E00306ED9192E866141A211A13A7E4FD0B0
-- Re-instate  Tyron Padayachee  in Natural 
-- CLAIMS08 Charlton de Koe - came through as an email !!
-- MY summary :
/*
Loutjie Hughes CLAIMS68
TSHEPANG SAMKELO SKOSANA
TMC0012
TRFADM07
Tyron Padayachee
Charlene Barnard PLN0003
PLN0004 for Ronnie Lechoba
AVSAA06  SAMANTHA BOTH
PLNE002 for Elsje Clark in TRACCS
Rayleen Padayachee  PLN0005
Re-instate  Tyron Padayachee  in Natural

*/

--the select of the last bunch (are tyhey still open ?): 
select 'ALL 3 MARIE BLOCKING REQUESTS COMBINED (THAT ARE STILL Open) :'
select * from openquery(TRACCS, '
SELECT * FROM CONTROL_USERS  WHERE 
USER_ID IN (
''CLAIMST1'',
''CLAIMST2'',
''CLAIMST3'',
''CLAIMS38'',
''CLAIMS48'',
''CLAIMST4'',
''CLAIMS07'',
''CLAIMS05'',
''CLAIMS10'',
''DAMAGE03'',
''CLAIMS18'',
''CLAIMS67'',
''CLAIMS06'',
''CLAIMS47'',
''TRCMPS1 '',
''CLAIMS30'',
''CLAIMS31'',
''CLAIMS34'',
''CLAIMS35'',
''CLAIMSL3'',
''CUST01'',
''CUSTC01'',
''CUSTC02'',
''REMCPT04'',
''CLAIMS29'',
''CLAIMS27'',
''CLAIMS28'',
''CLAIMS32'',
''FLEET10'',
''FLEET31'',
''FLEET11'',
''FLEET12'',
''FLEET20'',
''FLEET20P'',
''AHAHAHA'',
''FLEET06'',
''FLEET06A'',
''FLEET22'',
''FLEET99'',
''TMC0006'',
''TMC0011'',
''FLEET35'',
''FLEET23'',
''FLEETT03'',
''CLAIMS93'',
''CLAIMS01'',
''CLAIMS02'',
''CLAIMS12'',
''CLAIMS03'',
''CLAIMS37'',
''LRDDSP06'',
''LRDACC01'',
''LRDDSP04'',
''LRDDSP05'',
''LRDRGN02'',
''LRDRGN03'',
''LRDRSK03'',
''LRDZDA01'',
''LRDZDA02'',
''LRDZDA03'',
''LRDZDA05'',
''LRDZDA06'',
''LRDZDA07'',
''LRDZDA09'',
''LRDDSP03'',
''LRDDSP08'',
''LRDDSP11'',
''LRDDSP33'',
''LRDDSP02'',
''LRDRSK01'',
''LRDRGN01'',
''PLN0001C'',
''PLN0002'',
''TMC0003'',
''REMZEDA1'',
''TMC0009'',
''TMC0005'',
''TMC0007'',
''TMC0030'',
''TMC0002'',
''AVSAA01'',
''RATES08'',
''AVSAA02'',
''RATES04'',
''RATES05'',
''RATES10'',
''RATES06'',
''CLAIMS08'',
''CLAIMS09'',
''REMCTN04'',
''REMELS01'',
''REMELS02'',
''REMHQ001'',
''REMPLZ01'',
''REMPLZ02'',
''REMCTN05'',
''CLAIMS42'',
''REMCTN01'',
''CLAIMS13'',
''CLAIMS14'',
''CLAIMS15'',
''CLAIMS16'',
''CLAIMS66'',
''PTA01'',
''PTA02'',
''REMBFN01'',
''REMCTN02'',
''REMCTN03'',
''REMPLZ04'',
''REMPLZ11'',
''REMDBN02'',
''REMPTA01'',
''TRACALX'',
''TRACMPS0'',
''TRACMPS1'',
''TRACMPS4'',
''TRACMPS5'',
''TRACPET'',
''TFRADM03'',
''TRFADM02'',
''TRFADM04'',
''FLEET05'',
''CLAIMS40'',
''CABS03'',
''CLAIMS17'',
''RATES04'',
''REMCTN03'',
''CLAIMS02'',
''FLEET10'',
''TRFADM04'',
''CLAIMS24'',
''REMDBN07'',
''CLAIMS13'',
''FLEET11'',
''TMC0001'',
''CLAIMS18'',
''FLEET20'',
''AVSAA03'',
''REMDBN02'',
''CLAIMST3'',
''CLAIMS01'',
''DAMAGE04'',
''FLEET25'',
''DAMMAN1'',
''AVSAA02'',
''CLAIMS05'',
''SPECIAL8'',
''SPECIAL2'',
''CLAIMS10'',
''CLAIMS31'',
''CLAIMS66'',
''SPECIAL3'',
''DAMAGE01'',
''REMCPT04'',
''CLAIMS29'',
''REMPLZ11'',
''TMC0007'',
''CLAIMS93'',
''REMPLZ01'',
''CLAIMS14'',
''CLAIMS15'',
''LRDACC02'',
''CLAIMS34'',
''TMC0030'',
''CLAIMS27'',
''TMC0005'',
''AVSAA01'',
''CLAIMS09'',
''CLAIMS12'',
''CLAIMS16'',
''CLAIMS25'',
''CLAIMS30'',
''CLAIMS67'',
''CLAIMST1'',
''CLAIMST2'',
''CUST01'',
''CUSTC01'',
''CUSTC02'',
''FLEET07'',
''FLEET12'',
''FLEET20P'',
''FLEETT03'',
''LRDACC01'',
''LRDDSP02'',
''LRDDSP04'',
''LRDDSP05'',
''LRDDSP06'',
''LRDRGN01'',
''LRDRGN02'',
''LRDRGN03'',
''LRDZDA01'',
''LRDZDA02'',
''LRDZDA03'',
''LRDZDA04'',
''LRDZDA05'',
''LRDZDA06'',
''LRDZDA07'',
''LRDZDA08'',
''LRDZDA09'',
''PLN0001C'',
''REMCTN04'',
''REMDBN05'',
''REMDBN06'',
''REMPLZ04'',
''REMPTA01'',
''TFRADM02'',
''ALCCPT01'',
''ALCCPT02'',
''ALCCPT03'',
''ALCCPT04'',
''ALCCPT05'',
''ALCCPT06'',
''ALCDBN01'',
''ALCDBN02'',
''ALCDBN03'',
''ALCEL01'',
''ALCEL02'',
''ALCHQ01'',
''ALCHQ02'',
''ALCJHB01'',
''ALCJHB02'',
''ALCJHB03'',
''ALCJHB05'',
''ALCJHB06'',
''ALCJHB08'',
''ALCJHB09'',
''ALCPE01'',
''ALCPE02'',
''CLAIMS42'',
''CLAIMS50'',
''RATES05'',
''RATES06'',
''REMCTN01'',
''REMCTN02'',
''TMC0008'',
''TRACSIPO'',
''AHAHAHA'',
''ALCHQ03'',
''ALCJHB04'',
''ALCJHB07'',
''AVSAA06'',
''CABS'',
''CABS01'',
''CABS02'',
''CLAIMS03'',
''CLAIMS06'',
''CLAIMS07'',
''CLAIMS11'',
''CLAIMS19'',
''CLAIMS26'',
''CLAIMS32'',
''CLAIMS35'',
''CLAIMS46'',
''CLAIMS47'',
''CLAIMS48'',
''CLAIMSL3'',
''DAMAGE02'',
''DAMAGE03'',
''DAMAGE05'',
''DAMAGE15'',
''FLEET02'',
''FLEET06'',
''FLEET12B'',
''FLEET14'',
''FLEET17'',
''FLEET18'',
''FLEET22'',
''FLEET23'',
''FLEET30'',
''FLEET31'',
''FLEET99'',
''FLETT13'',
''FLOFFIE'',
''LRDDSP01'',
''LRDDSP03'',
''LRDDSP09'',
''LRDDSP11'',
''LRDDSP33'',
''LRDRSK02'',
''LRDRSK03'',
''PLN0000'',
''PLN0001'',
''PLN0002'',
''PLN0003'',
''RATES01'',
''RATES03'',
''RATES07'',
''RATES08'',
''RATES11'',
''REMCTN08'',
''SPECIAL4'',
''TFRADM01'',
''TFRADM03'',
''TMC0003'',
''TMC0006'',
''TMC0009'',
''TMC0011'',
''TMC0012'',
''TRACMPS0'',
''TRACMPS1'',
''TRFADM06'',
''TRFADM07''
)
AND USER_OPEN_BLOCK_IND = ''O''
AND USER_REC_TYPE = 1
')
/* 32 records updated */



/*
--NNNBBB Both tables combined AND ONLY (B)LOCKED USERS:
select * from openquery(TRACCS, '
SELECT CONTROL_USERS.*,
TRACCS_USER.AVIS_COMP_CODE as TRACCS_USER_AVIS_COMP_CODE,TRACCS_USER.USER_ID as TRACCS_USER_USER_ID,TRACCS_USER.USER_NAME as TRACCS_USER_USER_NAME,TRACCS_USER.PASSWORD,TRACCS_USER.ENTRY_USER,TRACCS_USER.ENTRY_TIME,TRACCS_USER.LOCK_TIME,TRACCS_USER.LOCK_IND,TRACCS_USER.EXPIRY_DATE	
FROM CONTROL_USERS,TRACCS_USER WHERE 
CONTROL_USERS.USER_ID *= TRACCS_USER.USER_ID
AND USER_REC_TYPE = 1
AND USER_OPEN_BLOCK_IND = ''B''
ORDER BY TRACCS_USER.USER_ID 
')
*/


/*
--NNNBBB Both tables combined AND ONLY (O)PEN USERS and passwords are locked out :
select * from openquery(TRACCS, '
SELECT CONTROL_USERS.*,
TRACCS_USER.AVIS_COMP_CODE as TRACCS_USER_AVIS_COMP_CODE,TRACCS_USER.USER_ID as TRACCS_USER_USER_ID,TRACCS_USER.USER_NAME as TRACCS_USER_USER_NAME,TRACCS_USER.PASSWORD,TRACCS_USER.ENTRY_USER,TRACCS_USER.ENTRY_TIME,TRACCS_USER.LOCK_TIME,TRACCS_USER.LOCK_IND,TRACCS_USER.EXPIRY_DATE	
FROM CONTROL_USERS,TRACCS_USER WHERE 
CONTROL_USERS.USER_ID *= TRACCS_USER.USER_ID
AND USER_REC_TYPE = 1
AND USER_OPEN_BLOCK_IND = ''O''
AND LOCK_IND = ''Y''
')
*/
/*
ORDER BY TRACCS_USER.USER_ID
ORDER BY TRACCS_USER.ISN_TRACCS_USER
*/





-------------THIS RUNS FOR 45 MINUTES !!!!!!!
select 'NNNNNBBBBBBBBB: This CHECKS FOR INCORRECT U STATUS CHANGE TIMES AND TAKES INTO CONSIFERATION CARS THAT HAVE GONE A AND U AGAIN :'
/*
select * from openquery(TRACCS, '
SELECT FLEET_MASTER_VIEW.MVA_NUMBER,
FLEET_MASTER_VIEW.MVA_CHECK,
FLEET_MASTER_VIEW.REGISTRATION_NO,
FLEET_MASTER_VIEW.PURCHASE_TYPE,
FLEET_MASTER_VIEW.ASSET_TYPE,
FLEET_MASTER_VIEW.VEHICLE_STATUS,
FLEET_MASTER_VIEW.STATUS_CHANGE_TIME,
FLEET_MASTER_VIEW.TURNBACK_DATE,
PUC_MASTER_VIEW.PUC_STATUS,
PUC_MASTER_VIEW.PUC_ADD_DATE,
CAR_MOVEMENT_VIEW.MOVEMENT_TIME AS MOVEMENT_TIME1,
CAR_MOVEMENT_VIEW.ENTRY_TIME AS ENTRY_TIME1,
CAR_MOVEMENT_VIEW.STATION_CODE AS STATION_CODE1
FROM vmisfractraccs.dbo.FLEET_MASTER_VIEW LEFT JOIN
PUC_MASTER_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
PUC_MASTER_VIEW.MVA_NUMBER LEFT JOIN
CAR_MOVEMENT_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
CAR_MOVEMENT_VIEW.MVA_NUMBER 
WHERE MOVEMENT_TIME = ( SELECT MIN(MOVEMENT_TIME) FROM CAR_MOVEMENT_VIEW WHERE MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER AND SUBSTRING ( CAST (STATION_CODE AS VARCHAR(4))  , 1 ,2) = ''70'' AND MOVEMENT_TYPE = ''I'' 
AND MOVEMENT_TIME > ( SELECT MAX(MOVEMENT_TIME) FROM CAR_MOVEMENT_VIEW WHERE MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER AND SUBSTRING ( CAST (STATION_CODE AS VARCHAR(4))  , 1 ,2) <> ''70'' AND MOVEMENT_TYPE = ''I'' )
)
AND
VEHICLE_STATUS = ''U''
AND
FLEET_MASTER_VIEW.AVIS_COMP_CODE = ''AV''
AND
SUBSTRING ( CAST (STATION_CODE AS VARCHAR(4))  , 1 ,2) = ''70''
AND CONVERT(MOVEMENT_TIME date) <>  CONVERT(STATUS_CHANGE_TIME date)
ORDER BY CAR_MOVEMENT_VIEW.ENTRY_TIME
')
*/


-- INFONAUT VERSION BELOW :

/*
SELECT FLEET_MASTER_VIEW.MVA_NUMBER,
FLEET_MASTER_VIEW.MVA_CHECK,
FLEET_MASTER_VIEW.REGISTRATION_NO,
FLEET_MASTER_VIEW.PURCHASE_TYPE,
FLEET_MASTER_VIEW.ASSET_TYPE,
FLEET_MASTER_VIEW.VEHICLE_STATUS,
FLEET_MASTER_VIEW.STATUS_CHANGE_TIME,
FLEET_MASTER_VIEW.TURNBACK_DATE,
PUC_MASTER_VIEW.PUC_STATUS,
PUC_MASTER_VIEW.PUC_ADD_DATE,
CAR_MOVEMENT_VIEW.MOVEMENT_TIME AS MOVEMENT_TIME1,
CAR_MOVEMENT_VIEW.ENTRY_TIME AS ENTRY_TIME1,
CAR_MOVEMENT_VIEW.STATION_CODE AS STATION_CODE1
FROM vmisfractraccs.dbo.FLEET_MASTER_VIEW LEFT JOIN
PUC_MASTER_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
PUC_MASTER_VIEW.MVA_NUMBER LEFT JOIN
CAR_MOVEMENT_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
CAR_MOVEMENT_VIEW.MVA_NUMBER 
WHERE MOVEMENT_TIME = ( SELECT MIN(MOVEMENT_TIME) FROM CAR_MOVEMENT_VIEW WHERE MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER AND SUBSTRING ( CAST (STATION_CODE AS VARCHAR(4))  , 1 ,2) = '70' AND MOVEMENT_TYPE = 'I' 
AND MOVEMENT_TIME > ( SELECT MAX(MOVEMENT_TIME) FROM CAR_MOVEMENT_VIEW WHERE MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER AND SUBSTRING ( CAST (STATION_CODE AS VARCHAR(4))  , 1 ,2) <> '70' AND MOVEMENT_TYPE = 'I' )
)
AND
VEHICLE_STATUS = 'U'
AND
FLEET_MASTER_VIEW.AVIS_COMP_CODE = 'AV'
AND
SUBSTRING ( CAST (STATION_CODE AS VARCHAR(4))  , 1 ,2) = '70'
AND CONVERT(MOVEMENT_TIME date) <>  CONVERT(STATUS_CHANGE_TIME date)
ORDER BY CAR_MOVEMENT_VIEW.ENTRY_TIME
*/







select 'Quick movement check :'
select * from openquery(TRACCS, '
SELECT RA_NUMBER,MVA_NUMBER,REGISTRATION_NO,STATION_CODE,MOVEMENT_TIME,ENTRY_TIME FROM CAR_MOVEMENT_VIEW WHERE MOVEMENT_TYPE = ''I'' AND MVA_NUMBER = 1321170
ORDER BY MOVEMENT_TIME
')
/*
RA_NUMBER	MVA_NUMBER	REGISTRATION_NO	STATION_CODE	ENTRY_TIME
86978	1321170	CA313115  	7016	2016-11-06 11:29:23.7000000
3818602	1321170	CA313115  	6816	2016-11-11 09:35:35.9000000 <-- same entry time
12018	1321170	CA313115  	7016	2016-11-11 09:35:30.1000000 <-- same entry time
*/


select 'Quick status view check :'
select * from openquery(TRACCS, '
select * from fleet_status_view  where mva_number =  998373
')


--ISR8250 
/*
Hi
Need a once-off report with all the lease vehicles that we de-fleeted in the last 2 years.
-Manufacturer
-km reading on the last day
-date de-fleeted
-Model
-MVA
-Regs
*/

select * from openquery(TRACCS, '
SELECT * FROM FLEET_MASTER_VIEW 
WHERE
VEHICLE_STATUS IN ''T''
AND
AVIS_COMP_CODE = ''AV''
AND
SUBSTRING ( CAST (LAST_STATION AS VARCHAR(4))  , 1 ,2) = ''69''
ORDER BY STATUS_CHANGE_TIME
')



select 'THIS IS ALL TURNBACKS LINKED TO THE LAST CAR MOVEMENT:'
/*
select * from openquery(TRACCS, '
SELECT FLEET_MASTER_VIEW.MVA_NUMBER,
FLEET_MASTER_VIEW.MVA_CHECK,
FLEET_MASTER_VIEW.REGISTRATION_NO,
FLEET_MASTER_VIEW.PURCHASE_TYPE,
FLEET_MASTER_VIEW.ASSET_TYPE,
FLEET_MASTER_VIEW.VEHICLE_STATUS,
FLEET_MASTER_VIEW.STATUS_CHANGE_TIME,
FLEET_MASTER_VIEW.TURNBACK_DATE,
CAR_MOVEMENT_VIEW.MOVEMENT_TIME AS MOVEMENT_TIME1,
CAR_MOVEMENT_VIEW.ENTRY_TIME AS ENTRY_TIME1,
CAR_MOVEMENT_VIEW.STATION_CODE AS STATION_CODE1,
CAR_MOVEMENT_VIEW.KM_READING,
FROM FLEET_MASTER_VIEW LEFT JOIN
CAR_MOVEMENT_VIEW ON
FLEET_MASTER_VIEW.MVA_NUMBER =
CAR_MOVEMENT_VIEW.MVA_NUMBER
WHERE MOVEMENT_TIME = ( SELECT MAX(MOVEMENT_TIME) FROM CAR_MOVEMENT_VIEW WHERE MVA_NUMBER = FLEET_MASTER_VIEW.MVA_NUMBER )
AND
VEHICLE_STATUS = ''T''
AND
FLEET_MASTER_VIEW.AVIS_COMP_CODE = ''AV''
AND
SUBSTRING ( CAST (STATION_CODE AS VARCHAR(4))  , 1 ,2) = ''69''
ORDER BY FLEET_MASTER_VIEW.STATUS_CHANGE_TIME
')
*/







/*

/*NNNNNNNNNNNNNBBBBBBBBBBBBBBBBB 100% UN(B)LOCK/UNBLOCK USERS */
update openquery(TRACCS, '
SELECT * FROM CONTROL_USERS 
WHERE CONTROL_USERS.USER_ID IN
(
''TMC0015'',
''PLN0003''
)
AND USER_REC_TYPE = 1
')
SET USER_OPEN_BLOCK_IND = 'O' 


/* I BLOCKED THIS USER TODAY AS BELOW 21 NOV 2016 */ 
update openquery(TRACCS, '
SELECT * FROM CONTROL_USERS 
WHERE CONTROL_USERS.USER_ID IN
(
''CLAIMS38''
)
AND USER_REC_TYPE = 1
')
SET USER_OPEN_BLOCK_IND = 'B' 




/*NNNNNNNNNNNNNBBBBBBBBBBBBBBBBB 100%  UN(L)OCK / UNLOCK USERS and reset their password   */
update openquery(TRACCS, '
SELECT * FROM TRACCS_USER 
WHERE TRACCS_USER.USER_ID IN
(
''CLAIMS08'',
''TMC0002 ''
)
AND AVIS_COMP_CODE = ''AV''
')
SET LOCK_IND = '' -- ,[PASSWORD] = 'avis123' 

*/

-- Fix names on both tables :
-------------------------------
/*

update openquery(TRACCS, '
SELECT * FROM TRACCS_USER 
WHERE USER_ID = ''REMZEDA1''
AND AVIS_COMP_CODE = ''AV''
')
SET [USER_NAME] = 'Beatrice Fell' 


update openquery(TRACCS, '
SELECT * FROM CONTROL_USERS 
WHERE USER_ID = ''REMZEDA1''
AND AVIS_COMP_CODE = ''AV''
AND USER_REC_TYPE = 1
')
SET [USER_NAME] = 'Beatrice Fell' 

*/

-- Fix USERIDs on both tables :
-------------------------------
/*
update  openquery(TRACCS, '
SELECT * FROM TRACCS_USER 
WHERE USER_ID = ''SPECIL17''
AND AVIS_COMP_CODE = ''AV''
')
SET USER_ID = 'SPCL17'
--(1 row(s) affected)
update openquery(TRACCS, '
SELECT * FROM CONTROL_USERS 
WHERE USER_ID = ''SPECIL17''
AND AVIS_COMP_CODE = ''AV''
AND USER_REC_TYPE = 1
')
SET USER_ID = 'SPCL17'
--(1 row(s) affected)
*/

/*
--NNNNNNNNNNNNNNBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB : To change users password expiry date :
update openquery(TRACCS, '
SELECT * FROM TRACCS_USER 
WHERE TRACCS_USER.USER_ID IN
(
''DAMAGE11''
)
AND AVIS_COMP_CODE = ''AV''
')
SET EXPIRY_DATE = '2016-11-25'
*/




--E AVIS :

--3830             DECIDE ON FIRST VALUE *INIT-USER
--3840               VALUE 'FLEET01','FLEET02','FLEET03','FLEET06','FLEET30','FLEET99','FLETT07','FLEET88','FLEETT02','FLEET19','FLEET35','FLEET31', 'FLEET16',
--3850                     'FLEET08','FLEET10','FLEET11','FLEET12', 'FLETT14', /* 1st rollout
--3860                     'AVSAA02','FLEET00','FLEET04','FLEET09','PLN0001','TFRADM01','TFRADM02','AVSAA03','AVSAA04','AVSAA06','PLN0003','PLN0004', 'PLN0005',/*KIERAN 16 APR 2008 /* KIERAN 12 MAY 2008
--3870                     'TMC0001','TMC0002','TMC0003','TMC0004','TMC0006','TMC0009','TMC0014','TMC0015','TRFADM03', 'TRFADM08', /* 2nd rollout
--3880                     'CLAIMS01','CLAIMS02','CLAIMS03','CLAIMS04','CLAIMS05','CLAIMS10','CLAIMS11','CLAIMS93','CLAIMS40','CLAIMS51','CLAIMS19','CLAIMS48','CLAIMS53',
--3890                     'CLAIMS13','CLAIMS14','CLAIMST3','REMBFN01','REMCPT04','REMCTN06','DAMAGE04',
--3900                     'REMDBN02','REMDBN07','REMELS01','REMPLZ02','PLN0002','PLN0000', 'PLN0004',/* 3rd rollout
--3910                     'REMELS02', 'CLAIMS66',/* KIERAN ADDED 26 JUN 2007
--3920                     'REMPLZ01','REMPLZ11','REMCTN01','REMCTN02','REMCTN03', /* 4th rollout
--3930                     'FLEET15','TRFADM01',  /*, /* 5th rollout
--3940                     'CLAIMS15','CLAIMS16','FLEET20','FLEET22','FLEET22P', /* SAKI 25TH MAR
--3950                     'CLAIMS06','FLEET06','CLAIMS07','CLAIMS08','CLAIMS09','CLAIMS42','FLEET31','FLEET34', 'FLEET16', /* RIAAN 20160727
--3960                     'CLAIMS17','FLEET02','FLEET18', 'LRDGN01','FLEET06A','FLEET31', 'CLAIMS47', 'FLEET16',
--3970                     'CLAIMS67','TMC0030','TMC0007', 'CLAIMS45','TRFADM06','TRFADM07', 'TMC0012' ,
--3980                     'TMC0011','TMC0005','FLEET12A','FLEET12B','PLNE002','FLEET21','FLEET25',
--3990                     'FLEET20B','TMC0008','RATES01', 'FLEET20P', 'DAMAGE03', 'RATES07', 'RATES08',
--4000                     'RATES02','RATES03','RATES04','RATES05', 'FLEET13', 'RATES10', 'RATES11', 'FLEETT06',
--4010                    /* 'REMPTA01'
--4020                     'CLAIMSLU', /* KIERAN 8 December 2006 - for damages
--4030                     'CLAIMS18', /* KIERAN 13 December 2006 - for Byron (Claims Logger)
--4040                     'CLAIMS24', /* KIERAN 17 Jan 2007 -Laura Ogle
--4050                     'CLAIMS25', /* KIERAN - Alton Scharneck - 22 Jan 2007
--4060                     'CLAIMS26', /* KIERAN -23 Feb 2007 - Daniel
--4070                     'CLAIMS27', /* KIERAN  - 23 Feb 2007
--4080                     'CLAIMS28', /* KIERAN  - 23 Feb 2007
--4090                     'CLAIMSL2', /*  Second lookup user 1 Mar 2007
--4100             /*        'CLAIMS40', 'CLAIMS51','CLAIMS19', 'CLAIMS48',
--4110                     'CLAIMS29', /*KIERAN - 25 Jul 2007
--4120                     'CLAIMS30', /* KIERAN 27 JUL 2007
--4130                     'CLAIMS46',
--4140                     'CLAIMS31', /* KIERAN 31 JUL 2007
--4150                     'DAMAGE01',  /* KIERAN 31 AUG 2007
--4160                     'DAMAGE11',  /* SAKI 05 FEB 2010
--4170                     'DAMAGE15',  /* RIAAN 09 JUN 2016
--4180                     'CLAIMS33',  /* KIERAN 25 SEP 2007
--4190                     'CLAIMS34',  /* KIERAN 11 JAN 2008
--4200                     'CLAIMS35',  /* KIERAN 26 MAY 2008
--4210                     'CLAIMS36',  /* KIERAN 26 MAY 2008
--4220                     'CLAIMSL3',  /* KIERAN 11 OCT 2007
--4230                     'CLAIMS32',  /* KIERAN 18 SEP 2007 - New Laura Ogle
--4240                     'CUSTC01', /* KIERAN 24 OCT 2007
--4250                     'PLN0003', /* KIERAN 12 MAY 2008 - New planning user
--4260                     'PLN0004', /*
--4270                     'CUSTC02', /* KIERAN 24 OCT 2007
--4280                     'CLAIMS37', /* KIERAN 01 SEP 2008
--4290                     'CLAIMS60',
--4300                     'CLAIMS61', /* KIERAN 01 SEP 2008
--4310                     'TRFADM04',  /*KIERAN 08 JUL 2008
--4320                     'TRFADM05',
--4330                     'SPECIAL1',  /* KIERAN 05 SEP 2008
--4340                     'SPECIAL2',  /* KIERAN 05 SEP 2008
--4350                     'SPECIAL3',  /* SAKI 15 DEC 2010
--4360                     'SPECIAL5',  /* SAKI 16 JULY 2009
--4370                     'SPECIAL6',
--4380                     'SPECIAL7',
--4390                     'SPECIAL8',
--4400                     'SPECIAL9',
--4410                     'DAMMAN1',
--4420                     'REMZEDA1',  /* SAKI 23 MAR 2010
--4430                     'REMZEDA2',   /* SAKI 23 MAR 2010
--4440                     'FLEET02B',
--4450                     'TRACSIPH',
--4460                     'FLEET23', /* KIERAN/JABU 22 MAR 2012
--4470                     'FLETT07',
--4480                     'FLETT14',
--4490                     'FLEET27',
--4500                     'FLEET29',
--4510                     'FLEET26',
--4520                     'CABS01',
--4530                     'CABS02',
--4540                     'CABS03'
--4550                     IGNORE
--4560               NONE
--4570                   STACK TOP COMMAND 'AVIS1'
--4580                   MOVE 'Y' TO #CONTINUE-IND
--4590                   CLOSE DIALOG *DIALOG-ID





-- UserName fix :
/*
UPDATE CONTROL_USERS SET USER_NAME = 'Charlton de Koe' WHERE USER_ID = 'CLAIMS08' AND USER_REC_TYPE = 1
UPDATE CONTROL_USERS SET USER_NAME = 'Tyron Padayachee' WHERE USER_ID = 'TMC0002' AND USER_REC_TYPE = 1

update TRACCS_USER SET USER_NAME = 'Charlton de Koe' WHERE USER_ID = 'CLAIMS08'
update TRACCS_USER SET USER_NAME = 'Tyron Padayachee' WHERE USER_ID = 'TMC0002'
*/


select 'Active Fleet Model Codes (MANUFACTURER_MODEL_NO = managed maintenace AS400 link):'
select * from openquery(TRACCS, '
SELECT MANUFACTURER_MODEL_NO,FLEET_MODEL_CODE,WIZARD_MODEL_CODE,SHORT_DESCRIPTION,LONG_DESCRIPTION,STATUS,AVIS_COMP_CODE,MANUFACTURER_CODE,AVIS_MODEL_CODE,TB_GRACE_KMS,TB_COST_PER_KM,CAR_BODY,M_AND_M_REF,DISTANCE_LIMIT,SERVICE_DUE_KMS_COUNT,SERVICE_DUE_KMS_1,SERVICE_DUE_KMS_2,SERVICE_DUE_KMS_3,SERVICE_DUE_KMS_4,SERVICE_DUE_KMS_5,FUEL_TANK_CAPACITY,RESIDUAL_PERC,WIZARD_USED_CODE,FUEL_CONSUMPTION,FUEL_DIESEL_IND,CO2,LEASE_CHARGES FROM AVIS_MODEL_CODE_VIEW
WHERE FLEET_MODEL_CODE IS NOT NULL 
AND STATUS = ''O''
/* AND MANUFACTURER_MODEL_NO = ''CAPTUR'' */
/* AND FLEET_MODEL_CODE = ''O1'' */
ORDER BY WIZARD_MODEL_CODE
')

select 'duplicate model codes /duplicate wizard_model_codes:'
select * from openquery(TRACCS, '
SELECT COUNT(*),* FROM AVIS_MODEL_CODE_VIEW WHERE STATUS = ''O'' AND WIZARD_MODEL_CODE IS NOT NULL AND WIZARD_MODEL_CODE <> ''XXX'' AND WIZARD_MODEL_CODE <> ''XXXX''
GROUP BY WIZARD_MODEL_CODE
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC
')


select * from openquery(TRACCS, '
SELECT * FROM AVIS_MODEL_CODE_VIEW WHERE STATUS = ''O'' AND WIZARD_MODEL_CODE = ''HIXG''
')
/*
FLEET_MODEL_CODE
K2 
KK 
A% 
Y3 
Y7 
KAB
KAD
KAE
*/







select 'Ended running at : ',GETDATE()