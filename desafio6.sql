SELECT 
    MIN(valor) AS faturamento_minimo,
    CONVERT(ROUND(MAX(valor), 2),char) AS faturamento_maximo,
    CONVERT(ROUND(AVG(valor), 2),char) AS faturamento_medio,
    CONVERT(ROUND(SUM(valor), 2),char) AS faturamento_total
FROM
    SpotifyClone.planos AS P
        JOIN
    SpotifyClone.usuario AS U ON P.id = U.id_plano;