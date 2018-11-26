package edu.fatec.sjc.snapshot.repository;

import edu.fatec.sjc.snapshot.model.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClienteRepository extends JpaRepository<Cliente, Integer> {
}
