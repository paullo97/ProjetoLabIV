package edu.fatec.sjc.snapshot.repository;

import edu.fatec.sjc.snapshot.model.Funcionario;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FuncionarioRepository extends JpaRepository<Funcionario, Integer> {
	
	//logar funcionario
	public boolean existsByLoginAndSenha(String fun_Login, String fun_Senha);
	
	//lembrar senha
	public Funcionario findByCpf(Integer Cliente_cli_cpf);
	
	
}
