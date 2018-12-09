package edu.fatec.sjc.snapshot;

import java.util.List;
import java.util.Optional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import edu.fatec.sjc.snapshot.model.Categoria;
import edu.fatec.sjc.snapshot.model.Cliente;
import edu.fatec.sjc.snapshot.model.Contato;
import edu.fatec.sjc.snapshot.model.Fornecedor;
import edu.fatec.sjc.snapshot.model.Funcionario;
import edu.fatec.sjc.snapshot.model.Produto;
import edu.fatec.sjc.snapshot.repository.CategoriaRepository;
import edu.fatec.sjc.snapshot.repository.ClienteRepository;
import edu.fatec.sjc.snapshot.repository.FornecedorRepository;
import edu.fatec.sjc.snapshot.repository.FuncionarioRepository;
import edu.fatec.sjc.snapshot.repository.LogradouroRepository;
import edu.fatec.sjc.snapshot.repository.ProdutoRepository;
import junit.framework.Assert;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ProjetoFinalApplicationTests {
	
    @Autowired
    ProdutoRepository produtoRepository;
    FuncionarioRepository funcionarioRepository;
    ClienteRepository clienteRepository;
    CategoriaRepository categoriaRepository;
    LogradouroRepository logradouroRepository;
    FornecedorRepository fornecedorRepository;

	@SuppressWarnings("deprecation")
	@Test
	public void contextLoads() {
		
		//Teste para Logar Funcionario
		Assert.assertEquals(true, funcionarioRepository.existsByLoginAndSenha("huguinho", "senha01"));
		
		//Teste recuperar Senha
		final Funcionario funcionario = funcionarioRepository.findByCpf(777777777);
		Assert.assertEquals("Senha03", funcionario.getFun_senha());
		
		//Manter Cliente
		final Cliente cliente = new Cliente(6777777, "Vinicius", 75, 76868760, new Contato(626549999,1,1));
		clienteRepository.save(cliente);
		final Cliente cliente1 = clienteRepository.findByCpf(6777777);
		Assert.assertEquals("Vinicius", cliente1.getCli_nome());
        
        //Manter Categoria
        final Categoria categoria = new Categoria(9,"marcenaria");
        categoriaRepository.save(categoria);
        final Categoria categoria1 = categoriaRepository.findByCat_id(9);
        Assert.assertEquals("marcenaria", categoria1.getCat_nome());
        
        //Manter Produto  //Vincular Categoria
        final Categoria categoria2 = categoriaRepository.findByCat_id(9);
        final Produto produto1 = new Produto(11, "tabua", 7.50, categoria2);
        produtoRepository.save(produto1);
        final Produto produto2 = produtoRepository.findById(11);
        Assert.assertEquals("tagua", produto2.getPro_nome());
        System.out.println(produto2.toString());
        
        //Efetuar Venda
        
		
		//Buscar produto por Id
		final Produto produto = produtoRepository.findById(01);
        System.out.println(produto);
        Assert.assertEquals("Celular Samsung Galaxy S8", produto.getPro_nome());
        
        //Debitar item do Estoque
        
        //Registrar forma de Pagamento
        
        //Manter Funcionario
        final Cliente cliente2 = new Cliente(6797777, "Magno", 79, 76368760, new Contato(626149999,1,1));
        final Funcionario funcionario2 = new Funcionario(cliente2.getCli_cpf(), "Magno", "1234", "Supervisor");
		funcionarioRepository.save(funcionario2);
		final Funcionario funcionario3 = funcionarioRepository.findByCpf(6797777);
		Assert.assertEquals("Magno", funcionario3.getFun_login());
        
        //Manter Fornecedores
		final Fornecedor fornecedor = new Fornecedor(387889887, "Marcelo S/A", 21, logradouroRepository.findByCep(90001970), 2345);
		fornecedorRepository.save(fornecedor);
		final Fornecedor fornecedor1 = fornecedorRepository.findByCnpj(387889887);
		Assert.assertEquals("Marcelo S/A", fornecedor1.getFor_nome());
        
        
        
        

	}

}
