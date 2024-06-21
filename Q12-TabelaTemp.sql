-- Criar a tabela temporária global ##TempFabricantes
CREATE TABLE ##TempFabricantes (
    ID INT PRIMARY KEY,
    nome NVARCHAR(100),
    paisorigem NVARCHAR(100)
);

-- Inserir dados da tabela Fabricante na tabela temporária global
INSERT INTO ##TempFabricantes (ID, nome, paisorigem)
SELECT ID, nome, paisorigem
FROM Fabricante;
