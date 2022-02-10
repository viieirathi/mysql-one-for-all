	SELECT 
		u.nome AS usuario,
		COUNT(r.id_usuario) AS `qtde_musicas_ouvidas`,
		ROUND(SUM(m.duracao_segundos) / 60, 2) AS `total_minutos`
	FROM
		usuario AS u,
		reproducoes AS r,
		musicas AS m
	WHERE
		u.id = r.id_usuario
			AND m.id = r.id_musicas
	GROUP BY u.nome
	ORDER BY u.nome ASC;