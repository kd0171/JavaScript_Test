SELECT goals
FROM players
WHERE name="ウィル"
;

SELECT *
FROM players
WHERE goals > 14
;

/*
( )で囲むことで、サブクエリを使用できます。サブクエリの書き方は基本的に通常のクエリと同じですが、()内にセミコロン（;）は不要です。
*/

SELECT name
FROM players
WHERE goals > (
  -- この下にウィルの得点数を取得するクエリを書いてください
  SELECT goals
  FROM players
  WHERE name = "ウィル"
)
;

SELECT name,goals
FROM players
WHERE goals > (
  SELECT AVG(goals)
  FROM players
)
;


--ASを使って、取得したカラム名を"身長180cm以上の選手"としてください
SELECT name AS "身長180cm以上の選手"
FROM players
WHERE height >= 180
;


--ASを使って、取得したカラム名を"チームの合計得点"としてください
SELECT SUM(goals) AS "チームの合計得点"
FROM players
;


SELECT *
FROM countries
WHERE rank < (
  SELECT rank
  FROM countries
  WHERE name = "日本"
)
;


SELECT SUM(goals),country_id
FROM players
GROUP BY country_id
;



/*
JOINは複数のテーブルを1つに結合したいときに使います。
ONで条件を指定して、テーブルAにテーブルBを結合します。
結合したテーブルは1つのテーブルとしてデータを取得することができます。
結合条件は、「ON テーブル名.カラム名 = テーブル名.カラム名」で指定
図のようなJOINを含んだクエリでは、はじめにJOINが実行されます。その次に、結合されたテーブルに対してSELECTが実行されます。
*/


SELECT *
FROM players
--結合するテーブル名を追加してください
JOIN countries
--結合条件を追加してください
ON players.country_id = countries.id
;


SELECT players.name, countries.name
FROM players
JOIN countries
ON players.country_id = countries.id
;

SELECT countries.name,SUM(goals)
FROM players
JOIN countries
ON players.country_id = countries.id
GROUP BY countries.name
;



SELECT *
FROM players
JOIN teams
ON players.previous_team_id = teams.id
;




SELECT players.name AS "選手名", teams.name AS "前年所属していたチーム"
FROM players
JOIN teams
ON players.previous_team_id = teams.id
;

        /*
        LEFT JOINを使うことで、FROMで指定したテーブルのレコードを全て取得します。
        外部キーがNULLのレコードもNULLのまま実行結果に表示されます。
        */

SELECT *
FROM players
LEFT JOIN teams
ON players.previous_team_id = teams.id
;


SELECT players.name AS "選手名", teams.name AS "前年所属していたチーム"
FROM players
LEFT JOIN teams
ON players.previous_team_id = teams.id
;

        /*
        最後にLEFT JOINと書けばNULLも含めた表になるので、毎回は不要（？）
        */
SELECT *
FROM players
JOIN countries
ON players.country_id = countries.id
LEFT JOIN teams
ON players.previous_team_id = teams.id
;



SELECT name AS "選手名", height AS "身長"
FROM players
WHERE height > (
  SELECT AVG(height)
  FROM players
)
;


SELECT *
FROM players
JOIN countries 
ON players.country_id = countries.id
WHERE countries.name = "日本" AND players.height >= 180
;


SELECT countries.name AS "国名", AVG(goals) AS "平均得点" 
FROM players
JOIN countries
ON players.country_id = countries.id
GROUP BY countries.name
;




