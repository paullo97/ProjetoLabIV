package edu.fatec.sjc.snapshot.repository;

import edu.fatec.sjc.snapshot.model.Movimento_Saida;
import edu.fatec.sjc.snapshot.model.Venda;
import org.springframework.data.jpa.repository.JpaRepository;

public interface Movimento_SaidaRepository extends JpaRepository<Movimento_Saida, Venda> {
}
