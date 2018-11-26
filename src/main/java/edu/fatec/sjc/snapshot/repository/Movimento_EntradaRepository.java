package edu.fatec.sjc.snapshot.repository;

import edu.fatec.sjc.snapshot.model.EstoquePK;
import edu.fatec.sjc.snapshot.model.Movimento_Entrada;
import org.springframework.data.jpa.repository.JpaRepository;

public interface Movimento_EntradaRepository extends JpaRepository<Movimento_Entrada, EstoquePK> {
}
