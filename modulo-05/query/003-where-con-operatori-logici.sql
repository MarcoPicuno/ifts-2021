select
	id_ricetta,
	nome_ricetta,
	difficolta
from
	ricetta
where
	nome_ricetta = 'Tiramis�'
	AND difficolta > 1 
	-- operatore di prodotto logico (equivalente a && in Java)
	-- si possono connettere pi� predicati con i connettori logici AND e OR
	-- esiste anche l'operatore NOT che nega un valore di verit�
	-- nelle espressioni logiche AND ha precedenza su OR