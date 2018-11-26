package edu.fatec.sjc.snapshot.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.*;

@Embeddable
@AllArgsConstructor
@Data
public class EstoquePK {
    @ManyToOne
    @JoinColumn(name = "pro_id", unique = true, nullable = false)
    private Produto pro_id;

    @ManyToOne
    @JoinColumn(name = "for_cnpj", unique = true, nullable = false)
    private Fornecedor for_cnpj;
}
