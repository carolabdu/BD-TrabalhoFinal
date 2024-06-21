CREATE TABLE Pessoa (
    CPF INT PRIMARY KEY,
    nome NVARCHAR(255),
    dataNascimento DATE,
	telefone INT,
	nacionalidade NVARCHAR(100),
	sexo NVARCHAR(100)
);

-- Tabela Profissional
CREATE TABLE Profissional (
    ID INT PRIMARY KEY,
    cargo NVARCHAR(100),
    cpf NVARCHAR(14),
    PessoaCPF INT, -- Chave estrangeira para Imuniza��o
    FOREIGN KEY (PessoaCPF) REFERENCES Pessoa(CPF)
);

-- Tabela Paciente
CREATE TABLE Paciente (
    ID INT PRIMARY KEY,
	PessoaCPF INT,
	FOREIGN KEY (PessoaCPF) REFERENCES Pessoa(CPF)  
);



-- Tabela Posto
CREATE TABLE Posto (
    ID INT PRIMARY KEY,
    endere�o NVARCHAR(255),
    nome NVARCHAR(100),
    munic�pio NVARCHAR(100),
    UF NVARCHAR(100)
);

-- Tabela Fabricante
CREATE TABLE Fabricante (
    ID INT PRIMARY KEY,
    nome NVARCHAR(100),
    paisorigem NVARCHAR(100)
);

-- Tabela Vacina
CREATE TABLE Vacina (
    ID INT PRIMARY KEY,
    doen�a NVARCHAR(100),
    lote NVARCHAR(50),
    dtVencimento DATE,
    dose INT,
	dtAplica�ao DATE,
	FabricanteID INT, -- Chave estrangeira para Fabricante
    FOREIGN KEY (FabricanteID) REFERENCES Fabricante(ID)
);

--Tabela Imuniza��o
CREATE TABLE Imuniza�ao(
	ID INT PRIMARY KEY,
	ProfissionalID INT,
	PostoID INT,
	VacinaID INT,
	PacienteID INT,
	FOREIGN KEY (ProfissionalID) REFERENCES Profissional(ID),
	FOREIGN KEY (PostoID) REFERENCES Posto(ID),
	FOREIGN KEY (VacinaID) REFERENCES Vacina(ID),
	FOREIGN KEY (PacienteID) REFERENCES Paciente(ID)
); 