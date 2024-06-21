CREATE VIEW Vw_LotesVencidos AS
SELECT
    ID AS VacinaID,
    doença,
    lote,
    dtVencimento,
    dose,
    dtAplicaçao,
    FabricanteID
FROM
    Vacina
WHERE
    dtVencimento < GETDATE();

--Vendo o vencimento
SELECT * FROM Vw_LotesVencidos;
