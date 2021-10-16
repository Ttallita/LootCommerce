package selenium.scripts.testCaseClasses.cliente;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.util.List;

/**
 * @author Tallita
 */

public class ExcluirCartaoTest {

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