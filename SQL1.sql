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

-- 「FROM purchases」のあとにコードを追加し、categoryカラムが「食費」かつcharacter_nameカラムが「ひつじ仙人」であるデータを取得してください

SELECT *
FROM purchases
where category = "食費"
and character_name = "ひつじ仙人";


-- 「FROM purchases」のあとにコードを追加し、categoryカラムが「食費」またはcharacter_nameカラムが「にんじゃわんこ」であるデータを取得してください

SELECT *
FROM purchases
where category = "食費"
or character_name = "にんじゃわんこ";

/*
SQLでは
「昇順」は「ASC」(1,2,3,4....)、
「降順」は「DESC」(100,99,98,97...)
と指定します。
*/

-- 「FROM purchases」のあとにコードを追加し、priceカラムを基準に降順に並び替えたデータを取得してください

SELECT *
FROM purchases
order by price desc;


/*
LIMITはクエリの末尾に記述することで、取得するデータの数を制限します。
*/

-- 「WHERE character_name = "にんじゃわんこ"」のあとにコードを追加し、取得結果が「最大10件」となるようにデータを取得してください。

SELECT *
FROM purchases
WHERE character_name = "にんじゃわんこ"
limit 10;

-- 「FROM purchases」のあとにコードを追加し、priceカラムを基準に「降順に並び替えた」データを、最大で「5件」取得してください

SELECT *
FROM purchases
order by price desc
limit 5;



















