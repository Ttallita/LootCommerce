package selenium.pageModels;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class GerenciamentoPage {

    @FindBy(how = How.ID, using = "paginaPrincipal")
    @CacheLookup private WebElement paginaPrincipal;

    @FindBy(how = How.ID, using = "paginaClientes")
    @CacheLookup private WebElement paginaClientes;
    
    @FindBy(how = How.ID, using = "paginaVendas")
    @CacheLookup private WebElement paginaVendas;

    @FindBy(how = How.ID, using = "paginaEstoque")
    @CacheLookup private WebElement paginaEstoque;

    public void acessarPaginaPrincipal(){
        paginaPrincipal.click();
    }

    public void acessarPaginaClientes(){
        paginaClientes.click();
    }

    public void acessarPaginaVendas(){
        paginaVendas.click();
    }

    public void acessarPaginaEstoque(){
        paginaEstoque.click();
    }

}
