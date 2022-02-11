SELECT 
    a.nome AS artista, b.nome AS album
FROM
    SpotifyClone.artistas AS a,
    SpotifyClone.album AS b
WHERE
    a.id = b.id_artistas
        AND a.nome LIKE 'Walter%'
ORDER BY b.nome;