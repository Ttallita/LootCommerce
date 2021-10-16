package selenium.pageObjects;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class Header {

    @FindBy (how = How.NAME, using = "fanLoot")
    @CacheLookup private WebElement logoFanLoot;

    @FindBy (how = How.ID, using = "pesquisar")
    @CacheLookup private WebElement barraPesquisa;
    
    @FindBy (how = How.ID, using = "listarOpcoesUsuario")
    @CacheLookup private WebElement listarOpcoesBtn;

    @FindBy (how = How.ID, using = "perfil")
    @CacheLookup private WebElement perfil;

    @FindBy (how = How.LINK_TEXT, using = "/LootCommerce/pesquisa.jsp")
    @CacheLookup private WebElement linkPesquisa;
    
    public void setBarraPesquisa(String barraPesquisa) {
        this.barraPesquisa.clear();
        this.barraPesquisa.sendKeys(barraPesquisa);
    }

    public String getBarraPesquisa() {
        return barraPesquisa.getAttribute("barraPesquisa");
    }

    public void pesquisar(){
        
    }

}
