package edu.fatec.sjc.snapshot.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@AllArgsConstructor
@Data
@Entity
public class Venda {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private Integer ven_id;

    @Temporal(TemporalType.DATE)
    @Column(name = "ven_data", nullable = false, columnDefinition = "DATE NOT NULL DEFAULT CURRENT_DATE")
    private Date ven_data;

    @ManyToOne
    @JoinColumn(name = "Cliente_cli_cpf", unique = true, nullable = false)
    private Cliente Cliente_cli_cpf;

    @OneToOne
    @JoinColumn(name = "idPessoa", unique = true, nullable = false)
    private Pagamento Pagamento_pag_id;

    @Column(name = "ven_parcelas", nullable = false)
    private Integer ven_parcelas;

    @Override
    public String toString() {
        return "Venda {" +
                "ven_id = " + ven_id +
                ", ven_data = " + ven_data +
                ", Cliente_cli_cpf = " + Cliente_cli_cpf +
                ", Pagamento_pag_id = " + Pagamento_pag_id +
                ", ven_parcelas = " + ven_parcelas +
                '}';
    }

    @PrePersist
    void prePersist() {
    }
}
