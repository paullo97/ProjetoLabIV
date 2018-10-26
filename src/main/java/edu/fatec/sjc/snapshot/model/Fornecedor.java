package edu.fatec.sjc.snapshot.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.annotations.GenericGenerator;

import java.util.List;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "fornecedor")

public class Fornecedor {
	
	@Id
	@GenericGenerator(strategy = "native", name = "native")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
	private Long idFornecedor;
	
	@Size(max = 200)
	@Column(name = "for_name", nullable = false)
	private String for_name;
	
	@Size(max = 20)
	@Column(name = "for_cnpj", nullable = false)
	private String for_cnpj;
	
	@OneToMany(mappedBy = "produto", fetch = FetchType.LAZY, orphanRemoval = true, cascade = CascadeType.ALL)
	@JoinColumn (name = "Fornecedor_idFornecedor")
	private List<Produto> produtos;
	
}