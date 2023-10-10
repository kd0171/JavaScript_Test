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

-- character_nameが「にんじゃわんこ」であるpriceカラムのデータの平均を取得してください

SELECT AVG(price)
FROM purchases
WHERE character_name = "にんじゃわんこ"
;

    /*
    COUNT関数で * (全てのカラム)を指定します。
    * を使った場合、特定のカラムのデータの数ではなく、レコードの数を計算します。
    この方法で、nullの数を含めてデータの数を数えられます。
    */

-- purchasesテーブルのnameカラムのデータの数を取得してください

SELECT count(name)
FROM purchases;

-- character_nameが「にんじゃわんこ」であるデータの数を取得してください

SELECT count(*)
FROM purchases
WHERE character_name = "にんじゃわんこ"
;


-- character_nameが「にんじゃわんこ」であるレコードの中で、
-- もっとも大きいpriceカラムの値を取得してください

SELECT MAX(price)
FROM purchases
WHERE character_name = "にんじゃわんこ"
;

/*  
    ・２つ以上selectする時はコンマで繋ぐ
    ・group byは()を使わない
*/
-- purchased_atごとの合計金額を取得してください

SELECT sum(price), purchased_at
FROM purchases
Group by purchased_at
;


-- purchased_atごとのお金を使った数を取得してください

SELECT count(price), purchased_at
FROM purchases
Group by purchased_at
;
















