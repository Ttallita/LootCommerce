package selenium.pageModels;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class HeaderCliente extends Header{
    @FindBy(how = How.ID, using = "listarOpcoesUsuario")
    @CacheLookup
    private WebElement listarOpcoesBtn;

    @FindBy (how = How.ID, using = "perfil")
    @CacheLookup private WebElement perfil;

    @FindBy (how = How.LINK_TEXT, using = "/LootCommerce/pesquisa.jsp")
    @CacheLookup private WebElement linkPesquisa;

    public WebElement getListarOpcoesBtn() {
        return listarOpcoesBtn;
    }

    public void setListarOpcoesBtn(WebElement listarOpcoesBtn) {
        this.listarOpcoesBtn = listarOpcoesBtn;
    }

    public WebElement getPerfil() {
        return perfil;
    }

    public void setPerfil(WebElement perfil) {
        this.perfil = perfil;
    }

    public WebElement getLinkPesquisa() {
        return linkPesquisa;
    }

    public void setLinkPesquisa(WebElement linkPesquisa) {
        this.linkPesquisa = linkPesquisa;
    }
}
