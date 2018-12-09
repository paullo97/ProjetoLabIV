package edu.fatec.sjc.snapshot.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.validation.constraints.Size;

@AllArgsConstructor
@Data
@Entity
public class Logradouro {
    @Id
    private Integer log_cep;

    @Size(max = 100)
    @Column(name = "log_nome", nullable = false)
    private String log_nome;

    @Size(max = 100)
    @Column(name = "log_bairro", nullable = false)
    private String log_bairro;

    @Size(max = 100)
    @Column(name = "log_cidade", nullable = false)
    private String log_cidade;

    @Size(max = 100)
    @Column(name = "log_estado", nullable = false)
    private String log_estado;

    @Size(max = 2)
    @Column(name = "log_sigla_estado", nullable = false)
    private String log_sigla_estado;

    @Override
    public String toString() {
        return "Logradouro {" +
                "log_cep = " + log_cep +
                ", log_nome = '" + log_nome + '\'' +
                ", log_bairro = '" + log_bairro + '\'' +
                ", log_cidade = '" + log_cidade + '\'' +
                ", log_estado = '" + log_estado + '\'' +
                ", log_sigla_estado = '" + log_sigla_estado + '\'' +
                '}';
    }

    @PrePersist
    void prePersist() {}

	public Integer getLog_cep() {
		return log_cep;
	}

	public String getLog_nome() {
		return log_nome;
	}

	public String getLog_bairro() {
		return log_bairro;
	}

	public String getLog_cidade() {
		return log_cidade;
	}

	public String getLog_estado() {
		return log_estado;
	}

	public String getLog_sigla_estado() {
		return log_sigla_estado;
	}
}
