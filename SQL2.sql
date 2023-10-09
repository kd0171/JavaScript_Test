-- 重複するデータを除いたnameカラムのデータを取得してください

SELECT distinct(name)
FROM purchases;


-- 「SELECT name, price, 」に追加し、消費税を含んだpriceカラムのデータを取得してください

SELECT name, price, price*1.08, 
FROM purchases;


    /*にんじゃわんこが複数回買っている金額の合計*/
-- character_nameが「にんじゃわんこ」であるpriceカラムのデータの合計を取得してください

SELECT Sum(price)
FROM purchases
WHERE character_name = "にんじゃわんこ";































