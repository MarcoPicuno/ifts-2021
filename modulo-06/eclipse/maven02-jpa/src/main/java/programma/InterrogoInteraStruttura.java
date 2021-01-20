package programma;

import java.util.List;

import javax.persistence.EntityManager;

import model.Ingrediente;
import model.Istruzione;
import model.Ricetta;
import utility.JpaUtil;

public class InterrogoInteraStruttura {

	public static void main(String[] args) {
		EntityManager em = JpaUtil.getInstance().getEntityManager();
		
		//Elencare i passi operativi per produrre il Tiramis� in ordine di esecuzione
		List<Istruzione> istruzioni = em.
			createQuery("select i from Istruzione i where i.ricetta.nomeRicetta = 'Tiramis�' order by i.numeroPasso", Istruzione.class)
			.getResultList();
		
		for(Istruzione is : istruzioni)
			System.out.println(is);
		
		// ingredienti del Tiramis�
		Ricetta tiramisu = em
				.createQuery("select r from Ricetta r where nomeRicetta = 'Tiramis�'", Ricetta.class)
				.getSingleResult();
		for(Ingrediente i : tiramisu.getIngredienti())
			System.out.println(i);
		
	}

}
