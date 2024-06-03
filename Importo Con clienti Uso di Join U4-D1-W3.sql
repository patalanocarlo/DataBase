SELECT f.*, c.*
FROM "Table"."Fatture" f
JOIN "Table"."Clienti2" c ON f."IdCliente" = c."Numero Cliente"
WHERE f."Importo" < 1000
ORDER BY f."Numero Fattura" ASC;