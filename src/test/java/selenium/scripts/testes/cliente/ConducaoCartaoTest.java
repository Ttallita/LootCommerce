package selenium.scripts.testes.cliente;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import selenium.pageModels.CartaoPage;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

/**
 * @author Tallita
 */

public class ConducaoCartaoTest {

    public void novoCartao(WebDriver driver) throws InterruptedException{

        CartaoPage novoCartao = PageFactory.initElements(driver, CartaoPage.class);

        novoCartao.criar();

        novoCartao.setNumero("5555666677778884");
        novoCartao.setNome("Nutty agiota");
        novoCartao.setBandeira(1);
        novoCartao.setCodigo("123");
        
        novoCartao.cadastrar();

    }

    public void novoCartaoErro(WebDriver driver) throws InterruptedException{

        CartaoPage novoCartao = PageFactory.initElements(driver, CartaoPage.class);

        novoCartao.criar();

        novoCartao.setNumero("5555666677778884");
        novoCartao.setNome("Nutty agiota");
        novoCartao.setBandeira(1);
        novoCartao.setDtValidade("20/10/2050");
        novoCartao.setCodigo("123");

        novoCartao.cadastrar();

    }

    public void excluirCartao(WebDriver driver) throws InterruptedException{

        WebElement tableEnderecos = driver.findElement(By.id("table-cartoes"));
        List<WebElement> rowsEnderecos = tableEnderecos.findElements(By.tagName("tr"));
        List<WebElement> columnsEnderecos = rowsEnderecos.get(1).findElements(By.tagName("td"));

        WebElement removerIcon = columnsEnderecos.get(6).findElement(By.tagName("span"));
        removerIcon.click();

        List<WebElement> removerButtons = driver.findElements(By.name("excluir"));

        removerButtons.get(0).click();

    }

}