package edu.fatec.sjc.snapshot.repository;

import edu.fatec.sjc.snapshot.model.Funcionario;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FuncionarioRepository extends JpaRepository<Funcionario, Integer> {
}
