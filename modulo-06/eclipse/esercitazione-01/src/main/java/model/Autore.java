package model;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Autore {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idAutore;
	
	@Column(nullable = false, length = 100)
	private String nome;
	
	@ManyToMany(cascade = CascadeType.ALL)
	private List<Libro> libri;
	
	public void addLibro(Libro l) {
		if (libri == null ) {
			libri = new ArrayList<>();
		}
		libri.add(l);
		if (l.getAutori() == null) {
			l.setAutori(new ArrayList<>());
		}
		l.getAutori().add(this);
	}

	public Integer getIdAutore() {
		return idAutore;
	}

	public void setIdAutore(Integer idAutore) {
		this.idAutore = idAutore;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public List<Libro> getLibri() {
		return libri;
	}

	public void setLibri(List<Libro> libri) {
		this.libri = libri;
	}
	
	
}
