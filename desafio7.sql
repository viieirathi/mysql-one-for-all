SELECT 
    a.nome AS artistas,
    b.nome AS album,
    COUNT(s.id_artistas) AS seguidores
FROM
    SpotifyClone.artistas a,
    SpotifyClone.album b,
    SpotifyClone.artistas_seguidos s
WHERE
    a.id = b.id_artistas
        AND a.id = s.id_artistas
GROUP BY b.nome , a.nome
ORDER BY seguidores DESC , artistas ASC , album ASC;