SELECT
	CLIENTS.NAME,
	CLIENTS.ID,
	RECORDS.SUM,
	RECORDS.OPEN_DATE
FROM 
	RECORDS
INNER JOIN
	ACCOUNTS ON RECORDS.ACC_REF = ACCOUNTS.CLIENT_REF
INNER JOIN
	CLIENTS ON ACCOUNTS.CLIENT_REF = CLIENTS.ID
WHERE
	RECORDS.OPEN_DATE >= CURDATE() - INTERVAL 1 MONTH AND RECORDS.OPEN_DATE <= CURDATE();


