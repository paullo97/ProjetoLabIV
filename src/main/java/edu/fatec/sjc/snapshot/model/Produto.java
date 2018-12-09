package edu.fatec.sjc.snapshot.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.Size;

@AllArgsConstructor
@Data
@Entity
public class Produto {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private Integer pro_id;

    @Size(max = 100)
    @Column(name = "pro_nome", nullable = false)
    private String pro_nome;

    @Column(name = "pro_valor_unitario", nullable = false)
    private Double pro_valor_unitario;

    @OneToOne
    @JoinColumn(name = "cat_id", unique = true, nullable = false)
    private Categoria cat_id;

    @Override
    public String toString() {
        return "Produto {" +
                "pro_id = " + pro_id +
                ", pro_nome = '" + pro_nome + '\'' +
                ", pro_valor_unitario = " + pro_valor_unitario +
                ", cat_id = " + cat_id +
                '}';
    }

    @PrePersist
    void prePersist() {}

	public Integer getPro_id() {
		return pro_id;
	}

	public String getPro_nome() {
		return pro_nome;
	}

	public Double getPro_valor_unitario() {
		return pro_valor_unitario;
	}

	public Categoria getCat_id() {
		return cat_id;
	}
}
