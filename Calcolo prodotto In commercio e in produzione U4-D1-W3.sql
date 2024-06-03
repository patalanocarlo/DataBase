SELECT *
FROM "Table"."Prodotti"
WHERE EXTRACT(YEAR FROM "DataAttivazione") = 2017
	AND "InProduzione" = true
 AND " InCommercio"= true
ORDER BY "IdProdotto" ASC;