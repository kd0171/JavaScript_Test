-- purchasesテーブルから、nameカラムのデータを取得してください
select name
from purchases;

-- purchasesテーブルから、「nameカラム」と「priceカラム」のデータを取得してください
select name, price
from purchases;


-- purchasesテーブルから、全てのカラムのデータを取得してください
select *
from purchases;


-- 「FROM purchases」のあとにコードを追加し、categoryカラムが「食費」であるデータを取得してください

SELECT *
FROM purchases
WHERE category = "食費";


-- 「FROM purchases」のあとにコードを追加し、priceカラムが「1000」のデータを取得してください

SELECT *
FROM purchases
where price = 1000;


-- 「FROM purchases」のあとにコードを追加し、purchased_atカラムが「2017-07-01」のデータを取得してください

SELECT *
FROM purchases
where purchased_at = "2017-07-01";

-- 「FROM purchases」のあとにコードを追加し、priceカラムが「1000以上」のデータを取得してください

SELECT *
FROM purchases
where price >= 1000;


-- 「FROM purchases」のあとにコードを追加し、purchased_atカラムが「2017-08-01以前」のデータを取得してください

SELECT *
FROM purchases
where purchased_at <= "2017-08-01";



-- 「FROM purchases」のあとにコードを追加し、nameカラムが「プリン」を含まないデータを取得してください

SELECT *
FROM purchases
WHERE NOT name LIKE "%プリン%";

-- 「FROM purchases」のあとにコードを追加し、priceカラムがNULLであるデータを取得してください

SELECT *
FROM purchases
Where price is null;

-- 「FROM purchases」のあとにコードを追加し、priceカラムがNULLでないデータを取得してください

SELECT *
FROM purchases
where price is not null;