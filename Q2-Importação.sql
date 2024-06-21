INSERT INTO Pessoa (CPF, nome, dataNascimento, telefone, nacionalidade, sexo)
VALUES
    (12345678901, 'Maria Silva', '1980-05-15', 95551234567, 'Brasileira', 'Feminino'),
    (98765432102, 'João Santos', '1995-10-20', 95559876543, 'Portuguesa', 'Masculino'),
    (11122233304, 'Ana Oliveira', '1992-03-10', 95551234568, 'Brasileira', 'Feminino'),
    (44455566605, 'Pedro Almeida', '1985-09-25', 95559876544, 'Brasileira', 'Masculino'),
    (77788899906, 'Carla Souza', '2000-12-05', 95551234569, 'Brasileira', 'Feminino'),
    (10111213107, 'Lucas Pereira', '1998-07-18', 95559876545, 'Brasileira', 'Masculino'),
    (14151617108, 'Mariana Costa', '1987-11-30', 95551234570, 'Brasileira', 'Feminino'),
    (18192021209, 'Rafael Lima', '1993-04-22', 95559876546, 'Brasileira', 'Masculino'),
    (22233344410, 'Sandra Santos', '2002-02-08', 95551234571, 'Brasileira', 'Feminino'),
    (25262728211, 'Gustavo Oliveira', '1990-08-14', 95559876547, 'Brasileira', 'Masculino');


INSERT INTO Profissional (ID, cargo, PessoaCPF)
VALUES
    (1, 'Médico',  12345678901),
    (2, 'Enfermeiro', 98765432102),
	(3, 'Médico' , 11122233304),
	(4, 'Médico', 44455566605),
	(5, 'Enfermeiro', 77788899906);


INSERT INTO Paciente (ID, PessoaCPF)
VALUES
    (101, 10111213107 ),
    (102, 14151617108),
	(103, 18192021209),
	(104, 22233344410),
	(105, 25262728211);


INSERT INTO Posto (ID, endereço, nome, município, UF)
VALUES
    (201, 'Rua A, 123', 'Posto Central', 'São Paulo', 'SP'),
    (202, 'Av. B, 456', 'Posto Sul', 'Rio de Janeiro', 'RJ'),
	(203, 'Rua C,789', 'Posto Norte', 'Salvador', 'BA'),
	(204, 'Rua D, 267', 'Posto Oeste', 'Recife', 'PE'),
	(205, 'Rua E, 635', 'Posto Leste', 'Florianópolis', 'SC');


INSERT INTO Fabricante (ID, nome, paisorigem)
VALUES
    (301, 'Pfizer', 'Estados Unidos'),
    (302, 'AstraZeneca', 'Reino Unido'),
	(303, 'Moderna', 'Estados Unidos'),
	(304, 'Sinovac', 'China'),
	(305, 'Bharat Biotech', 'Índia');
	

INSERT INTO Vacina (ID, doença, lote, dtVencimento, dose, dtAplicaçao, FabricanteID)
VALUES
    (401, 'COVID-19', 'ABC123', '2025-12-31', 1, '2023-06-01', 301),
    (402, 'Influenza', 'XYZ456', '2024-08-15', 2, '2023-06-15', 302),
	(403, 'Hepatite B', 'LMN789', '2023-10-20', 1, '2023-07-05', 303),
	(404, 'Tétano', 'OPQ012', '2024-05-30', 1, '2023-08-10', 304),
	(405, 'Varicela', 'RST345', '2023-09-15', 1, '2023-07-20', 305);


INSERT INTO Imunizaçao (ID, ProfissionalID, PostoID, VacinaID, PacienteID)
VALUES
    (501, 1, 201, 401, 101),
    (502, 2, 202, 402, 102),
	(503, 3, 203, 403, 103),
	(504, 4, 204, 404, 104),
	(505, 5, 205, 405, 105);
