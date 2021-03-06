package it.itsrizzoli.ifts.springboot01.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(
		generator = ObjectIdGenerators.PropertyGenerator.class, 
		property = "codiceISBN"
)
public class Libro {
	
	@Id
	@Column(length = 20)
	private String codiceISBN;
	
	@Column(nullable = false, length = 200)
	private String titolo;
	
	@Temporal(TemporalType.DATE)
	private Date dataPubblicazione;
	
	private Integer numeroPagine;
	
	@ManyToMany(
			mappedBy = "libri", 
			cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH}
	)
	private List<Autore> autori = new ArrayList<>();
	
	@ManyToOne(
			 cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH},
			 optional = true
	)
	private Genere genere;
	
	public void addAutore(Autore a) {
		autori.add(a);
		a.getLibri().add(this);
	}
	
	public void removeAutore(Autore a) {
		autori.remove(a);
		a.getLibri().remove(this);
	}

	public String getCodiceISBN() {
		return codiceISBN;
	}

	public void setCodiceISBN(String codiceISBN) {
		this.codiceISBN = codiceISBN;
	}

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}

	public Date getDataPubblicazione() {
		return dataPubblicazione;
	}

	public void setDataPubblicazione(Date dataPubblicazione) {
		this.dataPubblicazione = dataPubblicazione;
	}

	public Integer getNumeroPagine() {
		return numeroPagine;
	}

	public void setNumeroPagine(Integer numeroPagine) {
		this.numeroPagine = numeroPagine;
	}

	public List<Autore> getAutori() {
		return autori;
	}

	public void setAutori(List<Autore> autori) {
		this.autori = autori;
	}

	public Genere getGenere() {
		return genere;
	}

	public void setGenere(Genere genere) {
		this.genere = genere;
	}

	@Override
	public String toString() {
		return "Libro [codiceISBN=" + codiceISBN + ", titolo=" + titolo + ", dataPubblicazione=" + dataPubblicazione
				+ ", numeroPagine=" + numeroPagine + "]";
	}

}
