package edu.fatec.sjc.snapshot.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.*;

@AllArgsConstructor
@Data
@Entity
public class Estoque {
    @EmbeddedId
    @Column(name = "id", nullable = false)
    private EstoquePK id;

    @Column(name = "est_saldo_atual", nullable = false)
    private Integer est_saldo_atual;

    @Column(name = "est_estoque_minimo", nullable = false)
    private Integer est_estoque_minimo;

    @Override
    public String toString() {
        return "Estoque {" +
                "id = " + id +
                ", est_saldo_atual = " + est_saldo_atual +
                ", est_estoque_minimo = " + est_estoque_minimo +
                '}';
    }

	public EstoquePK getId() {
		return id;
	}

	public Integer getEst_saldo_atual() {
		return est_saldo_atual;
	}

	public Integer getEst_estoque_minimo() {
		return est_estoque_minimo;
	}
}
