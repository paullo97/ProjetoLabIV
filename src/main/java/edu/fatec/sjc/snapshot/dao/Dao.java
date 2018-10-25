package edu.fatec.sjc.snapshot.dao;

import java.util.List;

public interface Dao<E, I> {
    void save(E entity);

    E get(I id);

    void delete(I id);

    void update(E entity);

    List<E> getAll();
}