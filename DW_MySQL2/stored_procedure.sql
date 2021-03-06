﻿DELIMITER $$
CREATE DEFINER=`dwadmin`@`localhost` PROCEDURE `spSearchFileCabinets`(IN name CHAR(30), IN  account_num INT)
BEGIN

	SELECT 'Patient Chart 1' AS 'File Cabinet', PATIENT_NAME, ACCT, SERVICE_DATE,
    CONCAT('http://DEMOSERVER2/DocuWare/Platform/WebClient/1/Integration?p=V&fc=',
          '213c772e-3fef-4a8e-a0d2-9650bcc848e7',
          '&did=',
          CAST(DWDOCID AS CHAR(10))) AS 'Link'
	  FROM Patient_Chart_1
  	WHERE (PATIENT_NAME LIKE IFNULL(CONCAT('%',name , '%'), PATIENT_NAME))
    AND ACCT = IFNULL(account_num, ACCT)

  UNION ALL

	SELECT 'Patient Chart 2' AS 'File Cabinet', PATIENT_NAME, ACCT, SERVICE_DATE,
    CONCAT('http://DEMOSERVER2/DocuWare/Platform/WebClient/1/Integration?p=V&fc=',
          '5f3327c2-8065-42d7-a13c-79167356d24b',
          '&did=',
    CAST(DWDOCID AS CHAR(10))) AS 'Link'
  	FROM Patient_Chart_2
	  WHERE (PATIENT_NAME LIKE IFNULL(CONCAT('%',name , '%'), PATIENT_NAME))
    AND ACCT = IFNULL(account_num, ACCT)

  UNION ALL

	SELECT 'Patient Chart 3' AS 'File Cabinet', PATIENT_NAME, ACCT, SERVICE_DATE,
    CONCAT('http://DEMOSERVER2/DocuWare/Platform/WebClient/1/Integration?p=V&fc=',
          '9f39b76e-76fd-42cf-a8aa-ce570f9fa2e8',
          '&did=',
    CAST(DWDOCID AS CHAR(10))) AS 'Link'
  	FROM Patient_Chart_3
	  WHERE (PATIENT_NAME LIKE IFNULL(CONCAT('%',name , '%'), PATIENT_NAME))
    AND ACCT = IFNULL(account_num, ACCT)

  UNION ALL

	SELECT 'Patient Chart 4' AS 'File Cabinet', PATIENT_NAME, ACCT, SERVICE_DATE,
    CONCAT('http://DEMOSERVER2/DocuWare/Platform/WebClient/1/Integration?p=V&fc=',
          '5984d1c9-05fc-475e-ac3c-2791761c3850',
          '&did=',
    CAST(DWDOCID AS CHAR(10))) AS 'Link'
  	FROM Patient_Chart_4
	  WHERE (PATIENT_NAME LIKE IFNULL(CONCAT('%',name , '%'), PATIENT_NAME))
    AND ACCT = IFNULL(account_num, ACCT)

  UNION ALL

	SELECT 'Patient Chart 5' AS 'File Cabinet', PATIENT_NAME, ACCT, SERVICE_DATE,
    CONCAT('http://DEMOSERVER2/DocuWare/Platform/WebClient/1/Integration?p=V&fc=',
          '6c9da65d-383d-4d2f-9f2e-b1b616e49d40',
          '&did=',
    CAST(DWDOCID AS CHAR(10))) AS 'Link'
  	FROM Patient_Chart_5
	  WHERE (PATIENT_NAME LIKE IFNULL(CONCAT('%',name , '%'), PATIENT_NAME))
    AND ACCT = IFNULL(account_num, ACCT);

END $$

DELIMITER ;