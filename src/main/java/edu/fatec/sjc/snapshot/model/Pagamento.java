package edu.fatec.sjc.snapshot.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.Size;

@AllArgsConstructor
@Data
@Entity
public class Pagamento {
    @Id
    private Integer pag_id;

    @Size(max = 100)
    @Column(name = "pag_descricao", nullable = false)
    private String pag_descricao;

    @Override
    public String toString() {
        return "Pagamento {" +
                "pag_id = " + pag_id +
                ", pag_descricao = '" + pag_descricao + '\'' +
                '}';
    }
}
