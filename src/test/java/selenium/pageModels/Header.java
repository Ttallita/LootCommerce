package selenium.pageModels;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class Header {

    @FindBy (how = How.NAME, using = "fanLoot")
    @CacheLookup private WebElement logoFanLoot;

    @FindBy (how = How.ID, using = "pesquisar")
    @CacheLookup private WebElement barraPesquisa;
    

    public void setBarraPesquisa(String barraPesquisa) {
        this.barraPesquisa.clear();
        this.barraPesquisa.sendKeys(barraPesquisa);
    }

    public String getBarraPesquisa() {
        return barraPesquisa.getAttribute("barraPesquisa");
    }

    public void pesquisar(){
        
    }

    public WebElement getLogoFanLoot() {
        return logoFanLoot;
    }

    public void setLogoFanLoot(WebElement logoFanLoot) {
        this.logoFanLoot = logoFanLoot;
    }

    public void setBarraPesquisa(WebElement barraPesquisa) {
        this.barraPesquisa = barraPesquisa;
    }


}
