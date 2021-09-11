package selenium;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

/*
 * @author André Gomes
 */

public class LoginTest {

    public static void main(String[] args) throws InterruptedException{
        WebDriverManager.chromedriver().setup();
        WebDriver driver = new ChromeDriver();

        driver.get("http://localhost:8080/LootCommerce");
        driver.manage().window().maximize();

        Thread.sleep(2000);
        driver.navigate().to("http://localhost:8080/LootCommerce/login.jsp");

        WebElement campoEmail = driver.findElement(By.id("email"));
        WebElement campoSenha = driver.findElement(By.id("senha"));
        WebElement botarLogar = driver.findElement(By.id("logar"));


        String email = "andre.gomes9@fatec.sp.gov.com.br";
        String senha = "admin123";

        campoEmail.sendKeys(email);
        Thread.sleep(2000);

        campoSenha.sendKeys(senha);
        Thread.sleep(2000);

        botarLogar.click();

        driver.close();

    }
}
