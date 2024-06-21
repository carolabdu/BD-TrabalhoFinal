CREATE TRIGGER trg_UpdateVacinaDate
ON Imunizaçao
AFTER INSERT
AS
BEGIN
    -- Atualiza a data de aplicação da vacina para a data atual
    UPDATE Vacina
    SET dtAplicaçao = GETDATE()
    FROM Vacina v
    JOIN inserted i ON v.ID = i.VacinaID;
END;

