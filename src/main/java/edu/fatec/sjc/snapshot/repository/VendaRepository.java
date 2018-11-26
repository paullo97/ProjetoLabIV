package edu.fatec.sjc.snapshot.repository;

import edu.fatec.sjc.snapshot.model.Venda;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VendaRepository extends JpaRepository<Venda, Integer> {
}
