package edu.fatec.sjc.snapshot.repository;

import edu.fatec.sjc.snapshot.model.Estoque;
import edu.fatec.sjc.snapshot.model.EstoquePK;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EstoqueRepository extends JpaRepository<Estoque, EstoquePK> {
}
