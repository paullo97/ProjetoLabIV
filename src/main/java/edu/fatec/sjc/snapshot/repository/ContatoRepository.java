package edu.fatec.sjc.snapshot.repository;

import edu.fatec.sjc.snapshot.model.Contato;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContatoRepository extends JpaRepository<Contato, Integer> {
}
