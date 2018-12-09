package edu.fatec.sjc.snapshot.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.PrePersist;

@AllArgsConstructor
@Data
@Entity
public class Contato {
    @Id
    private Integer con_celular;

    @Column(name = "con_fixo", nullable = false)
    private Integer con_fixo;

    @Column(name = "con_fixo", nullable = false)
    private Integer con_comercial;

    @Override
    public String toString() {
        return "Contato {" +
                "con_celular = " + con_celular +
                ", con_fixo = " + con_fixo +
                ", con_comercial = " + con_comercial +
                '}';
    }

    @PrePersist
    void prePersist() {
        if (con_fixo == null) con_fixo = 0;
        if (con_comercial == null) con_comercial = 0;
    }

	public Integer getCon_celular() {
		return con_celular;
	}

	public Integer getCon_fixo() {
		return con_fixo;
	}

	public Integer getCon_comercial() {
		return con_comercial;
	}
}
