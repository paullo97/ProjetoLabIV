package edu.fatec.sjc.snapshot.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.Size;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
public class Cliente {
    @Id
    private Integer cli_cpf;

    @Size(max = 100)
    @Column(name = "cli_nome", nullable = false)
    private String cli_nome;

    @Column(name = "cli_num_residencia", nullable = false)
    private Integer cli_num_residencia;

    @Column(name = "Logradouro_log_cep", nullable = false)
    private Integer Logradouro_log_cep;

    @OneToOne
    @JoinColumn(name = "con_celular", unique = true, nullable = false)
    private Contato con_celular;

    @Override
    public String toString() {
        return "Cliente{" +
                "cli_cpf = " + cli_cpf +
                ", cli_nome = '" + cli_nome + '\'' +
                ", cli_num_residencia = " + cli_num_residencia +
                ", Logradouro_log_cep = " + Logradouro_log_cep +
                ", con_celular = " + con_celular +
                '}';
    }

    @PrePersist
    void prePersist() {}
}
