SELECT
	OPEN_DATE,
        DT,
        AVG(SUM)
FROM
        RECORDS
WHERE
        OPEN_DATE = '2015-10-01'
GROUP BY
        DT;