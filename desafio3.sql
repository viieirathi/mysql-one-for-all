SELECT 
    u.nome AS usuario,
    COUNT(r.id_musicas) as qtde_musicas_ouvidas,
    ROUND(SUM(m.duracao_segundos)/60, 2) AS total_minutos
FROM
    SpotifyClone.reproducoes AS r
        JOIN
    SpotifyClone.usuario AS u
        JOIN
    SpotifyClone.musicas AS m ON m.id = r.id_usuario
WHERE
    r.id_usuario = u.id
GROUP BY u.nome
ORDER BY u.nome;