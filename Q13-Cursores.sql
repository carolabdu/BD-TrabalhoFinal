-- Declarar o cursor
DECLARE curVacinas CURSOR FOR
SELECT
    i.dtAplicacao AS Data,
    p.nome AS Paciente,
    v.lote AS Lote,
    f.nome AS Fabricante
FROM
    Imunizacao i
JOIN
    Paciente p ON i.PacienteID = p.ID
JOIN
    Vacina v ON i.VacinaID = v.ID
JOIN
    Fabricante f ON v.FabricanteID = f.ID;

-- Variáveis para armazenar os dados do cursor
DECLARE @Data DATE, @Paciente NVARCHAR(100), @Lote NVARCHAR(100), @Fabricante NVARCHAR(100);

-- Abrir o cursor
OPEN curVacinas;

-- Buscar o primeiro registro do cursor
FETCH NEXT FROM curVacinas INTO @Data, @Paciente, @Lote, @Fabricante;

-- Loop para processar os registros
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Saída dos dados
    PRINT CONCAT('Data: ', @Data, ', Paciente: ', @Paciente, ', Lote: ', @Lote, ', Fabricante: ', @Fabricante);
    
    -- Buscar o próximo registro do cursor
    FETCH NEXT FROM curVacinas INTO @Data, @Paciente, @Lote, @Fabricante;
END

-- Fechar o cursor
CLOSE curVacinas;
DEALLOCATE curVacinas;
