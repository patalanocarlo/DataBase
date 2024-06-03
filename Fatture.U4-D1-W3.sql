Esercizio 1
SELECT "Nome", "Cognome"
FROM "Table"."Clienti2"
WHERE "AnnoDiNascita" = 1982
Esercizio 2
SELECT * FROM "Table"."Fatture"
WHERE "IVA" = 20.00
ORDER BY "Numero Fattura" ASC 
Esercizio 3
SELECT *
FROM "Table"."Prodotti"
WHERE EXTRACT(YEAR FROM "DataAttivazione") = 2017
	AND "InProduzione" = true
 AND " InCommercio"= true
ORDER BY "IdProdotto" ASC;
Esercizio 4
SELECT f.*, c.*
FROM "Table"."Fatture" f
JOIN "Table"."Clienti2" c ON f."IdCliente" = c."Numero Cliente"
WHERE f."Importo" < 1000
ORDER BY f."Numero Fattura" ASC;
Esercizio 5
SELECT f.*, fo."Denominazione " AS "Denominazione Fornitore"
FROM "Table"."Fatture" f
JOIN "Table"."Fornitore" fo ON f."Numero Fornitore" = fo."Numero Fornitore"
ORDER BY f."Numero Fattura" ASC;
Esercizio 6 SELECT EXTRACT(YEAR FROM "DataFattura") AS "Anno", COUNT(*) AS "Numero Fatture"
FROM "Table"."Fatture"
WHERE "IVA" = 20
GROUP BY EXTRACT(YEAR FROM "DataFattura")
ORDER BY "Anno" ASC;
Esercizio 7 
SELECT 
    EXTRACT(YEAR FROM "DataFattura") AS "Anno",
    COUNT(*) AS "Numero Fatture",
    SUM("Importo") AS "Somma Importo"
FROM 
    "Table"."Fatture"
WHERE 
    "IVA" = 20
GROUP BY 
    EXTRACT(YEAR FROM "DataFattura")
ORDER BY 
    "Anno" ASC;