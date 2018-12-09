package edu.fatec.sjc.snapshot.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.Size;

@AllArgsConstructor
@Data
@Entity
public class Categoria {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private Integer cat_id;

    @Size(max = 100)
    @Column(name = "cat_nome", nullable = false)
    private String cat_nome;

    @Override
    public String toString() {
        return "Categoria {" +
                "cat_id = " + cat_id +
                ", cat_nome = '" + cat_nome + '\'' +
                '}';
    }

	public Integer getCat_id() {
		return cat_id;
	}

	public String getCat_nome() {
		return cat_nome;
	}
}
