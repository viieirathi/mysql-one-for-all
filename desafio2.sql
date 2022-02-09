SELECT 
    COUNT(distinct c.nome) AS cancoes,
    COUNT(distinct a.id_artistas) AS artistas,
    COUNT(distinct a.nome) AS album
FROM
    SpotifyClone.musicas AS c
        JOIN
    SpotifyClone.album AS a;