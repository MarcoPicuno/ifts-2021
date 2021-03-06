package it.itsrizzoli.ifts.springboot01.model;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(
		generator = ObjectIdGenerators.PropertyGenerator.class, 
		property = "idAutore"
)
public class Autore {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idAutore;
	
	@Column(nullable = false, length = 100)
	private String nome;
	
	@ManyToMany(cascade = CascadeType.ALL)
	private List<Libro> libri = new ArrayList<>();
	
	public void addLibro(Libro l) {
		libri.add(l);
		l.getAutori().add(this);
	}
	
	public void removeLibro(Libro l) {
		libri.remove(l);
		l.getAutori().remove(this);
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

	@Override
	public String toString() {
		return "Autore [idAutore=" + idAutore + ", nome=" + nome + ", libri=" + libri + "]";
	}
	
	
}
