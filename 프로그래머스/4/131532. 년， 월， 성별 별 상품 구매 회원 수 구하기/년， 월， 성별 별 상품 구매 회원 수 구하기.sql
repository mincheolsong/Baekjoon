SELECT YEAR(OS.SALES_DATE) YEAR, MONTH(OS.SALES_DATE) MONTH, UI.GENDER GENDER, COUNT(DISTINCT(OS.USER_ID)) USERS
FROM ONLINE_SALE OS
JOIN (SELECT USER_ID, GENDER FROM USER_INFO
WHERE GENDER IS NOT NULL) UI
ON OS.USER_ID = UI.USER_ID
GROUP BY YEAR,MONTH,GENDER
ORDER BY YEAR ASC, MONTH ASC, GENDER ASC;