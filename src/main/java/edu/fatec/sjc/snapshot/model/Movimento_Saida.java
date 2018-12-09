package edu.fatec.sjc.snapshot.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@AllArgsConstructor
@Data
@Entity
public class Movimento_Saida {
    @Id
    @OneToOne
    private Venda Venda_ven_id;

    @Temporal(TemporalType.DATE)
    @Column(name = "mov_data", nullable = false, columnDefinition = "DATE NOT NULL DEFAULT CURRENT_DATE")
    private Date mov_data;

    @Override
    public String toString() {
        return "Movimento_Saida {" +
                "Venda_ven_id = " + Venda_ven_id +
                ", mov_data = " + mov_data +
                '}';
    }

	public Venda getVenda_ven_id() {
		return Venda_ven_id;
	}

	public Date getMov_data() {
		return mov_data;
	}
}
