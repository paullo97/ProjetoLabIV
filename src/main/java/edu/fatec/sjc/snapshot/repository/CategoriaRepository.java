package edu.fatec.sjc.snapshot.repository;

import edu.fatec.sjc.snapshot.model.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoriaRepository extends JpaRepository<Categoria, Integer> {

	public Categoria findByCat_id(int cat_id);
}
