SELECT 
    f.ID AS FabricanteID,
    f.nome AS FabricanteNome,
    v.ID AS VacinaID,
    v.doença AS Doença
FROM 
    Fabricante f
FULL JOIN 
    Vacina v ON f.ID = v.FabricanteID
WHERE 
    f.ID IS NULL OR v.ID IS NULL;
