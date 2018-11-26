package edu.fatec.sjc.snapshot.repository;

import edu.fatec.sjc.snapshot.model.Fornecedor;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FornecedorRepository extends JpaRepository<Fornecedor, Integer> {
}
