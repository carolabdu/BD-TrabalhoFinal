CREATE PROCEDURE sp_PacientesComVacinaVencida
AS
BEGIN
    SELECT 
        p.nome AS NomePaciente,
        p.CPF AS CPFPaciente,
        v.doenca AS Doenca,
        v.lote AS Lote,
        v.dtVencimento AS DataVencimento,
        v.dtAplicacao AS DataAplicacao,
        f.nome AS NomeFabricante
    FROM 
        Paciente pac
    JOIN 
        Pessoa p ON pac.PessoaCPF = p.CPF
    JOIN 
        Imunizacao im ON pac.ID = im.PacienteID
    JOIN 
        Vacina v ON im.VacinaID = v.ID
    JOIN 
        Fabricante f ON v.FabricanteID = f.ID
    WHERE 
        v.dtVencimento < v.dtAplicaçao();
END;
