package edu.fatec.sjc.snapshot.repository;

import edu.fatec.sjc.snapshot.model.Produto;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProdutoRepository extends JpaRepository<Produto, Integer> {
}
