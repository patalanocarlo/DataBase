SELECT EXTRACT(YEAR FROM "DataFattura") AS "Anno", COUNT(*) AS "Numero Fatture"
FROM "Table"."Fatture"
WHERE "IVA" = 20
GROUP BY EXTRACT(YEAR FROM "DataFattura")
ORDER BY "Anno" ASC;