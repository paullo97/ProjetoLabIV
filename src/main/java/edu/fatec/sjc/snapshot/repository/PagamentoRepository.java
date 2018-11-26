package edu.fatec.sjc.snapshot.repository;

import edu.fatec.sjc.snapshot.model.Pagamento;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PagamentoRepository extends JpaRepository<Pagamento, Integer> {
}
