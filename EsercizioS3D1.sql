--ESERCIZIO 1
SELECT * FROM "Clienti" WHERE "Nome" = 'Mario';
--ESERCIZIO 2
SELECT "Nome", "Cognome" FROM "Clienti" WHERE "AnnoDiNascita" = 1982;
--ESERCIZIO 3
SELECT "NumeroFattura" FROM "Fatture" WHERE "Iva" = 20;
--ESERCIZIO 4
SELECT * FROM "Prodotti" WHERE EXTRACT(YEAR FROM "DataAttivazione") = 2017 AND ("InProduzione" = true OR "InCommercio" = true);
--ESERCIZIO 5
SELECT * FROM "Fatture" JOIN "Clienti" ON "Clienti"."NumeroCliente" = "Fatture"."IdCliente" WHERE "Fatture"."Importo" < 1000;
--ESERCIZIO 6
SELECT FA."NumeroFattura", FA."Importo", FA."Iva", FA."DataFattura", FO."Denominazione" FROM "Fatture" AS FA JOIN "Fornitori" AS FO ON FO."NumeroFornitore" = FA."NumeroFornitore";
--ESERCIZIO 7
SELECT DISTINCT EXTRACT(YEAR FROM "DataFattura"), COUNT(*) FROM "Fatture" WHERE "Iva" = 20 GROUP BY EXTRACT(YEAR FROM "DataFattura");
--ESERCIZIO 8
SELECT DISTINCT EXTRACT(YEAR FROM "DataFattura") AS anno, COUNT(*) AS conteggio, SUM("Importo") AS somma FROM "Fatture"  GROUP BY EXTRACT(YEAR FROM "DataFattura");