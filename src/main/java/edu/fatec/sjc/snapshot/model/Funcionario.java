package edu.fatec.sjc.snapshot.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.validation.constraints.Size;

@AllArgsConstructor
@Entity
@Data
public class Funcionario {

	@Id
    private Integer Cliente_cli_cpf;

    @Size(max = 100)
    @Column(name = "fun_login", nullable = false)
    private String fun_login;

    @Size(max = 100)
    @Column(name = "fun_senha", nullable = false)
    private String fun_senha;

    @Size(max = 100)
    @Column(name = "fun_perfil", nullable = false)
    private String fun_perfil;

    @Override
    public String toString() {
        return "Funcionario {" +
                "Cliente_cli_cpf = " + Cliente_cli_cpf +
                ", fun_login = '" + fun_login + '\'' +
                ", fun_senha = '" + fun_senha + '\'' +
                ", fun_perfil = '" + fun_perfil + '\'' +
                '}';
    }

    @PrePersist
    void prePersist() {
    }

	public Integer getCliente_cli_cpf() {
		return Cliente_cli_cpf;
	}

	public String getFun_login() {
		return fun_login;
	}

	public String getFun_senha() {
		return fun_senha;
	}

	public String getFun_perfil() {
		return fun_perfil;
	}
}
