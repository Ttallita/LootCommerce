package selenium.pageModels;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.ui.Select;

public class DadosPessoaisClientesPage {

    @FindBy(how = How.ID, using = "nome")
    @CacheLookup private WebElement nome;

    @FindBy(how = How.ID, using = "sobrenome")
    @CacheLookup private WebElement sobrenome;

    @FindBy(how = How.ID, using = "genero")
    @CacheLookup private WebElement genero;

    @FindBy(how = How.ID, using = "date")
    @CacheLookup private WebElement dataNascimento;

    @FindBy(how = How.ID, using = "cpf")
    @CacheLookup private WebElement cpf;

    // Telefone
    @FindBy(how = How.ID, using = "tipoTelefone")
    @CacheLookup private WebElement tipoTelefone;

    @FindBy(how = How.ID, using = "phone")
    @CacheLookup private WebElement telefone;

    
    public void setNome(String nome) {
        this.nome.clear();
        this.nome.sendKeys(nome);
    }

    public String getNome() {
        return nome.getAttribute("nome");
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome.clear();
        this.sobrenome.sendKeys(sobrenome);
    }

    public String getSobrenome() {
        return nome.getAttribute("sobrenome");
    }

    public void setGenero(int genero) {
        Select selectGenero = new Select(this.genero);
        selectGenero.selectByIndex(genero);
    }

    // public String getGenero() {
    //     return genero.getAttribute("genero");
    // }

    public void setDataNascimento(String dataNascimento) {
        this.dataNascimento.clear();
        this.dataNascimento.sendKeys(dataNascimento);
    }

    public String getDataNascimento() {
        return dataNascimento.getAttribute("dataNascimento");
    }

    public void setCpf(String cpf) {
        this.cpf.clear();
        this.cpf.sendKeys(cpf);
    }
    
    public String getCpf() {
        return cpf.getAttribute("cpf");
    }

    public void setTipoTelefone(int tipoTelefone) {
        Select selectTipoTelefone = new Select(this.tipoTelefone);
        selectTipoTelefone.selectByIndex(tipoTelefone);
    }

    // public String getTipoTelefone() {
    //     return tipoTelefone.getAttribute("tipoTelefone");
    // }


    public void setTelefone(String telefone) {
        this.telefone.clear();
        this.telefone.sendKeys(telefone);
    }

    public String getTelefone() {
        return telefone.getAttribute("telefone");
    }
}
