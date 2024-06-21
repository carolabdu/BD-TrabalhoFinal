ALTER TABLE Vacina
ADD quantidade INT;

ALTER TABLE Vacina
ADD CONSTRAINT CK_LimiteQuantidade CHECK (quantidade <= 100);


-- Inserindo um lote com quantidade maior que 100 (para gerar o erro)
INSERT INTO Vacina (ID, doença, lote, dtVencimento, dose, dtAplicaçao, FabricanteID, quantidade)
VALUES
    (601, 'COVID-19', 'DEF456', '2025-12-31', 1, '2023-06-01', 301, 150);  -- Quantidade maior que 100
