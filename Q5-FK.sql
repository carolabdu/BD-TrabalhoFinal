-- Tentativa de inserir uma vacina com um FabricanteID inexistente
INSERT INTO Vacina (ID, doença, lote, dtVencimento, dose, dtAplicaçao, FabricanteID)
VALUES
    (406, 'COVID-20', 'UVW999', '2025-12-31', 1, '2023-06-01', 999);
