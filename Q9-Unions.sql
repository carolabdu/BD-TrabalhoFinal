-- Consulta para unir os lotes com vencimento em 30 dias e vencidos há 30 dias
SELECT 
    ID,
    doença,
    lote,
    dtVencimento,
    'A Vencer' AS Status
FROM 
    Vacina
WHERE 
    dtVencimento = DATEADD(DAY, 30, GETDATE())

UNION ALL

SELECT 
    ID,
    doença,
    lote,
    dtVencimento,
    'Vencido' AS Status
FROM 
    Vacina
WHERE 
    dtVencimento = DATEADD(DAY, -30, GETDATE());
