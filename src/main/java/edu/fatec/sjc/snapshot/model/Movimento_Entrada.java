package edu.fatec.sjc.snapshot.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@AllArgsConstructor
@Data
@Entity
public class Movimento_Entrada {
    @EmbeddedId
    @Column(name = "id", nullable = false)
    private EstoquePK id;

    @Temporal(TemporalType.DATE)
    @Column(name = "mov_data", nullable = false, columnDefinition = "DATE NOT NULL DEFAULT CURRENT_DATE")
    private Date mov_data;

    @Override
    public String toString() {
        return "Movimento_Entrada{" +
                "id = " + id +
                ", mov_data = " + mov_data +
                '}';
    }
}
