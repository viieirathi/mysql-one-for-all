SELECT 
    m.nome AS cancao, COUNT(r.id_musicas) AS reproducoes
FROM
    SpotifyClone.musicas AS m
        JOIN
    SpotifyClone.reproducoes AS r ON m.id = r.id_musicas
GROUP BY m.nome
ORDER BY reproducoes DESC , cancao ASC
LIMIT 2;