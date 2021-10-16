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

    public void alterarDadosPessoais() throws InterruptedException{

        //CadastroClientePage cadastro = PageFactory.initElements(driver, CadastroClientePage.class);

        WebElement campoNome = driver.findElement(By.id("nome"));
        WebElement campoEmail = driver.findElement(By.id("email"));
        WebElement campoTipoTelefone = driver.findElement(By.id("tipoTelefone"));

        WebElement btnEditarNome = driver.findElement(By.id("editarNome"));
        WebElement btnEditarEmail = driver.findElement(By.id("editarEmail"));
        WebElement btnEditarTipoTelefone = driver.findElement(By.id("editarTpTelefone"));

        Select selectTipoTelefone =  new Select(campoTipoTelefone);

        String novoNome = "Vinicius";
        String novoEmail = "vinicius@fatec.sp.gov.com.br";

        btnEditarNome.click();
        campoNome.clear();
        campoNome.sendKeys(novoNome);
        btnEditarEmail.click();
        campoEmail.clear();
        campoEmail.sendKeys(novoEmail);
        btnEditarTipoTelefone.click();
        selectTipoTelefone.selectByIndex(1);

    }

    public void inativar(){

        WebElement inativarLink = driver.findElement(By.id("inativarLink"));
        inativarLink.click();

        WebElement inativarBtn = driver.findElement(By.id("btnInativar"));
        inativarBtn.click();
    }

    public void transacoes(String[] args) throws InterruptedException{

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

    public void cadastrarCartao(){

        WebElement btnNovoEndereco = driver.findElement(By.id("novoCartao"));
        btnNovoEndereco.click();

        WebElement campoNumeroCartao = driver.findElement(By.id("numCartao"));
        WebElement campoNomeCartao = driver.findElement(By.id("nomeCartao"));
        WebElement campoBandeira = driver.findElement(By.id("bandeira"));
        WebElement campoCodigo = driver.findElement(By.id("codigoCartao"));

        Select selectBandeira = new Select(campoBandeira);

        String numeroCartao = "1231 1312 1321 1412";
        String nomeCartao = "RODRIGO C SOUZA";
        String codigo = "123";

        campoNumeroCartao.sendKeys(numeroCartao);
        campoNomeCartao.sendKeys(nomeCartao);
        selectBandeira.selectByIndex(1);
        campoCodigo.sendKeys(codigo);
    }

    public void excluirCartao(){
        WebElement tableClientes = driver.findElement(By.className("table"));

        List<WebElement> rows =  tableClientes.findElements(By.tagName("tr"));
        List<WebElement> columns = rows.get(1).findElements(By.tagName("td"));

        WebElement btn = columns.get(6)
                .findElement(By.id("dropdownMenuButton1"));
        btn.click();

        WebElement gerenciarLink = driver.findElement(By.id("gerenciarLink"));
        gerenciarLink.click();

        WebElement tabEnderecos = driver.findElement(By.id("nav-cartoes-tab"));
        tabEnderecos.click();

        WebElement tableEnderecos = driver.findElement(By.id("table-cartoes"));
        List<WebElement> rowsEnderecos = tableEnderecos.findElements(By.tagName("tr"));
        List<WebElement> columnsEnderecos = rowsEnderecos.get(1).findElements(By.tagName("td"));

        WebElement excluir = columnsEnderecos.get(5).findElement(By.id("deletarCartao"));
        excluir.click();
    }

    public void cadastrarEndereco(){
        WebElement tableClientes = driver.findElement(By.className("table"));

        List<WebElement> rows =  tableClientes.findElements(By.tagName("tr"));
        List<WebElement> columns = rows.get(1).findElements(By.tagName("td"));

        WebElement btn = columns.get(6)
                .findElement(By.id("dropdownMenuButton1"));
        btn.click();

        WebElement gerenciarLink = driver.findElement(By.id("gerenciarLink"));
        gerenciarLink.click();

        WebElement tabEnderecos = driver.findElement(By.id("nav-endereco-tab"));
        tabEnderecos.click();

        WebElement btnNovoEndereco = driver.findElement(By.id("novoEndereco"));
        btnNovoEndereco.click();

        WebElement campoTipoResidencia = driver.findElement(By.id("tpResidencia"));
        WebElement campoTipoLogradouro = driver.findElement(By.id("tpLogradouro"));
        WebElement campoLogradouro = driver.findElement(By.id("logradouro"));
        WebElement campoNumero = driver.findElement(By.id("numero"));
        WebElement campoBairro = driver.findElement(By.id("bairro"));
        WebElement campoCep = driver.findElement(By.id("cep"));
        WebElement campoCidade = driver.findElement(By.id("cidade"));
        WebElement campoEstado = driver.findElement(By.id("estado"));
        WebElement campoPais = driver.findElement(By.id("pais"));
        WebElement campoObs = driver.findElement(By.id("observacao"));
        WebElement campoTipoEndereco = driver.findElement(By.id("tpEndereco"));

        Select selectTipoResidencia = new Select(campoTipoResidencia);
        Select selectCidade = new Select(campoCidade);
        Select selectEstado = new Select(campoEstado);
        Select selectPais = new Select(campoPais);
        Select selectTipoEndereco = new Select(campoTipoEndereco);

        String tipoLogradouro = "Bairro";
        String logradouro = "Rua 25 de março";
        String numero = "123";
        String bairro = "Moema";
        String cep = "12345-232";
        String obs = "Sem observações";

        selectTipoResidencia.selectByIndex(1);
        campoTipoLogradouro.sendKeys(tipoLogradouro);
        campoLogradouro.sendKeys(logradouro);
        campoNumero.sendKeys(numero);
        campoBairro.sendKeys(bairro);
        campoCep.sendKeys(cep);
        selectCidade.selectByIndex(1);
        selectEstado.selectByIndex(1);
        selectPais.selectByIndex(1);
        campoObs.sendKeys(obs);
        selectTipoEndereco.selectByIndex(1);
    }

    public void excluirEndereco(){
        WebElement tableClientes = driver.findElement(By.className("table"));

        List<WebElement> rows =  tableClientes.findElements(By.tagName("tr"));
        List<WebElement> columns = rows.get(1).findElements(By.tagName("td"));

        WebElement btn = columns.get(6)
                .findElement(By.id("dropdownMenuButton1"));
        btn.click();

        WebElement gerenciarLink = driver.findElement(By.id("gerenciarLink"));
        gerenciarLink.click();

        WebElement tabEnderecos = driver.findElement(By.id("nav-endereco-tab"));
        tabEnderecos.click();

        WebElement tableEnderecos = driver.findElement(By.id("table-enderecos"));
        List<WebElement> rowsEnderecos = tableEnderecos.findElements(By.tagName("tr"));
        List<WebElement> columnsEnderecos = rowsEnderecos.get(1).findElements(By.tagName("td"));

        WebElement excluir = columnsEnderecos.get(9).findElement(By.id("deletarEndereco"));
        excluir.click();
    }

    public void darCupom(){

    }


}
