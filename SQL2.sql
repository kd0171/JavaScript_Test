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

-- purchased_atとcharacter_nameごとにお金を使った回数を取得してください

SELECT count(price),purchased_at,character_name
FROM purchases
GROUP BY purchased_at,character_name
;


/*
    検索→グループ化→関数の順で適用
    今回のように日付とキャラクターごとの食費に使ったお金の合計を取得するときは、
    ①WHEREでカテゴリーが「食費」であるレコードを検索する 
    ②日付とキャラクターでグループ化する 
    ③集計関数で集計するという順番
*/


-- WHEREに条件を付け足してcharacter_nameがにんじゃわんこであるデータを取得し、
-- グループ化してください

SELECT sum(price),purchased_at
FROM purchases
WHERE character_name = "にんじゃわんこ"
GROUP BY purchased_at
;

-- WHEREに条件を付け足してcategoryが食費であるデータを
-- purchased_atとcharacter_nameでグループ化してください

SELECT sum(price),purchased_at,character_name
FROM purchases
WHERE category = "食費"
GROUP BY purchased_at,character_name
;


/*
    検索→グループ化→関数→HAVINGの順で適用
*/
-- 日付ごとの合計金額のうち、2000円を超えるデータのみを取得してください

SELECT sum(price),purchased_at
FROM purchases
GROUP BY purchased_at
Having sum(price)>2000
;

-- 日付とキャラクターごとの合計金額のうち、3000円を超えるデータのみを取得してください

SELECT SUM(price),purchased_at,character_name
FROM purchases
GROUP BY purchased_at,character_name
HAVING SUM(price)>3000
;



-- categoryでグループ化し、各カテゴリーごとにpriceカラムの合計とcategoryカラムのデータを取得してください

SELECT SUM(price),category
FROM purchases
GROUP BY category
;



-- キャラクターごとにグループ化し、priceカラムの合計と、character_nameを取得してください
-- ただし、WHEREでcategoryが「雑費」であるレコードから集計してください

SELECT SUM(price),character_name
FROM purchases
WHERE category="雑費"
GROUP BY character_name
;
