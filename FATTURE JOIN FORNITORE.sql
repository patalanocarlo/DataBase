SELECT f.*, fo."Denominazione " AS "Denominazione Fornitore"
FROM "Table"."Fatture" f
JOIN "Table"."Fornitore" fo ON f."Numero Fornitore" = fo."Numero Fornitore"
ORDER BY f."Numero Fattura" ASC;