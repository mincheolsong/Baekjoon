-- 코드를 입력하세요
SELECT 
B.CATEGORY, B.MAX_PRICE, A.PRODUCT_NAME
FROM 
(SELECT CATEGORY,MAX(PRICE) MAX_PRICE FROM FOOD_PRODUCT
WHERE CATEGORY IN ('과자','국','김치','식용유')
GROUP BY CATEGORY) AS B
JOIN FOOD_PRODUCT AS A
ON A.CATEGORY = B.CATEGORY AND A.PRICE = B.MAX_PRICE
ORDER BY MAX_PRICE DESC;

# SELECT * FROM FOOD_PRODUCT;