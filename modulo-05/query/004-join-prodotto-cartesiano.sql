select
	nome_ricetta,
	nome_categoria
from
	ricetta, -- rango: 5, cardinalit�: 4
	categoria -- rango: 2, cardinalit�: 5
	-- prodotto cartesiano: � la combinazione di tutte le righe di ricetta
	--                      con tutte le gighe di categoria
where
	-- impongo come condizione di selezione sul prodotto cartesiano
	-- la condizione di congiunzione
	ricetta.id_categoria = categoria.id_categoria

-- un'altra sintassi SQL per la congiunzione

select
	r.nome_ricetta,
	c.nome_categoria
from
	ricetta as r join categoria as c -- join � l'operatore di congiunzione
	on c.id_categoria = r.id_categoria -- � il predicato che c'era in where
