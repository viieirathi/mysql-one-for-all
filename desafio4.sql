	SELECT 
    u.nome AS usuario,
    (SELECT 
            IF(YEAR(MAX(r.data_reproducao)) <> 2021,
                    'Usuário inativo',
                    'Usuário ativo')
        ) AS condicao_usuario
FROM
    SpotifyClone.usuario AS u
        JOIN
    SpotifyClone.reproducoes AS r ON r.id_usuario = u.id
GROUP BY u.nome
ORDER BY u.nome ASC;