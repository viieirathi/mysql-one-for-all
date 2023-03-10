SELECT 
    COUNT(c.nome) AS cancoes,
    (SELECT COUNT(id) FROM SpotifyClone.artistas) AS artistas,
    (SELECT COUNT(nome) FROM SpotifyClone.album) AS albuns
FROM
    SpotifyClone.musicas AS c;