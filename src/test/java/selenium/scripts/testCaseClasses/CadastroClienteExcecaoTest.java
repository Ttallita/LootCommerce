package selenium.scripts.testCaseClasses;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import selenium.pageObjects.CadastroClientePage;

/**
 * @author André Gomes
 */

public class CadastroClienteExcecaoTest {

    WebDriver driver;

    public CadastroClienteExcecaoTest(WebDriver driver){
        this.driver = driver;
    }

    public void novoCliente() throws InterruptedException {
        
        CadastroClientePage cadastro = PageFactory.initElements(driver, CadastroClientePage.class);

        cadastro.setEmail("andre.soares");
        cadastro.setSenha("Admads123!");
        cadastro.setConfirmacao("Admads123!");

        cadastro.setNome("André");
        cadastro.setSobrenome("Gomes");
        cadastro.setDataNascimento("21/09/1999");
        cadastro.setCpf("123.413.133-12");
        cadastro.setGenero(1);

        cadastro.setTipoTelefone(1);
        cadastro.setTelefone("11 92324-2324");

        cadastro.setApelido("Minha casa");

        cadastro.setCidade(1);
        cadastro.setEstado(1);
        cadastro.setPais(1);

        cadastro.setTipoResidencia("Casa");
        cadastro.setTipoLogradouro("Bairro");
        cadastro.setLogradouro("Rua 25 de março");
        cadastro.setNumero("312");
        cadastro.setBairro("Moema");
        cadastro.setCep("12344-231");
        cadastro.setObservacao("Sem observações");

        cadastro.confirmarCadastro();

    }

}
