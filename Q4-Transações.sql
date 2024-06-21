-- Início da transação
BEGIN TRANSACTION;

-- Atualização do telefone de um paciente
UPDATE Pessoa
SET telefone = 95551234572
WHERE CPF = 10111213107;

-- Verificação da atualização antes do commit
SELECT * FROM Pessoa WHERE CPF = 10111213107;

-- Persistência da alteração
COMMIT;

-- Verificação da atualização após o commit
SELECT * FROM Pessoa WHERE CPF = 10111213107;


-- Início da transação
BEGIN TRANSACTION;

-- Atualização do endereço de um posto
UPDATE Posto
SET endereço = 'Rua Nova, 456'
WHERE ID = 201;

-- Verificação da atualização antes do rollback
SELECT * FROM Posto WHERE ID = 201;

-- Reversão da alteração
ROLLBACK;

-- Verificação da atualização após o rollback (deve mostrar o endereço original)
SELECT * FROM Posto WHERE ID = 201;
