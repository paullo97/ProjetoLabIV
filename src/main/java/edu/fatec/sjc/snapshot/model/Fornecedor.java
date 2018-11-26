package edu.fatec.sjc.snapshot.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.Size;

@AllArgsConstructor
@Data
@Entity
public class Fornecedor {
    @Id
    private Integer for_cnpj;

    @Size(max = 100)
    @Column(name = "for_nome", nullable = false)
    private String for_nome;

    @Column(name = "for_numero_logradouro", nullable = false)
    private Integer for_numero_logradouro;

    @OneToOne
    @JoinColumn(name = "log_cep", unique = true, nullable = false)
    private Logradouro log_cep;

    @Column(name = "for_tel_comercial", nullable = false)
    private Integer for_tel_comercial;

    @Override
    public String toString() {
        return "Fornecedor {" +
                "for_cnpj = " + for_cnpj +
                ", for_nome = '" + for_nome + '\'' +
                ", for_numero_logradouro = " + for_numero_logradouro +
                ", log_cep = " + log_cep +
                ", for_tel_comercial = " + for_tel_comercial +
                '}';
    }

    @PrePersist
    void prePersist() {}
}
