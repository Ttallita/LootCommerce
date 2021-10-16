package selenium.scripts.testCaseClasses.adm;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import java.util.List;

/**
 * @author André Gomes
 */

public class GerenciarClienteTest {
    WebDriver driver;

    public GerenciarClienteTest(WebDriver driver){
        this.driver = driver;
    }

    public void inativar(){

        WebElement inativarLink = driver.findElement(By.id("inativarLink"));
        inativarLink.click();

        WebElement inativarBtn = driver.findElement(By.id("btnInativar"));
        inativarBtn.click();
    }

    public void transacoes() throws InterruptedException{

        WebElement tableClientes = driver.findElement(By.className("table"));

        List<WebElement> rows =  tableClientes.findElements(By.tagName("tr"));
        List<WebElement> columns = rows.get(1).findElements(By.tagName("td"));

        WebElement btn = columns.get(6)
                .findElement(By.id("dropdownMenuButton1"));
        btn.click();

        WebElement gerenciarLink = driver.findElement(By.id("gerenciarLink"));
        gerenciarLink.click();

        WebElement tabTransacoes = driver.findElement(By.id("nav-transacoes-tab"));
        tabTransacoes.click();

    }

    public void darCupom(){

    }


}
