package edu.fatec.sjc.snapshot;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ProjetoFinalApplication implements CommandLineRunner {
	@SuppressWarnings("unused")
	private static final Logger log = LoggerFactory.getLogger(ProjetoFinalApplication.class);

	@Autowired
	//Dao<Students, Integer> dao;

	public static void main(String[] args) {
		SpringApplication.run(ProjetoFinalApplication.class, args);
	}


	public void run(String... args) {
		//log.info("Querying for student records where first_name = 'Marcelo':");
		//Students st = dao.get(1);
		//System.out.println(st.toString());

	}
}