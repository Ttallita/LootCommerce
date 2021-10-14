package selenium.pageObjects;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.ui.Select;

public class CadastroClientePage {

    // Conta
    @FindBy (how = How.ID, using = "email")
    @CacheLookup private WebElement email;

    @FindBy(how = How.ID, using = "senha")
    @CacheLookup private WebElement senha;

    @FindBy(how = How.ID, using = "senhaConfirmacao")
    @CacheLookup private WebElement confirmacao;

    // Dados pessoais
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

    // Endereço
    @FindBy(how = How.ID, using = "apelido")
    @CacheLookup private WebElement apelido;

    @FindBy(how = How.ID, using = "tpResidencia")
    @CacheLookup private WebElement tipoResidencia;

    @FindBy(how = How.ID, using = "tpLogradouro")
    @CacheLookup private WebElement tipoLogradouro;

    @FindBy(how = How.ID, using = "logradouro")
    @CacheLookup private WebElement logradouro;

    @FindBy(how = How.ID, using = "numero")
    @CacheLookup private WebElement numero;

    @FindBy(how = How.ID, using = "bairro")
    @CacheLookup private WebElement bairro;

    @FindBy(how = How.ID, using = "cep")
    @CacheLookup private WebElement cep;

    @FindBy(how = How.ID, using = "cidade")
    @CacheLookup private WebElement cidade;

    @FindBy(how = How.ID, using = "estado")
    @CacheLookup private WebElement estado;

    @FindBy(how = How.ID, using = "pais")
    @CacheLookup private WebElement pais;

    @FindBy(how = How.ID, using = "observacao")
    @CacheLookup private WebElement observacao;

    // Form
    @FindBy(how = How.ID, using = "form-cadastro")
    @CacheLookup private WebElement formCadastro;


    public void setEmail(String email) {
        this.email.clear();
        this.email.sendKeys(email);
    }

    public String getEmail() {
        return email.getAttribute("email");
    }

    public void setSenha(String senha) {
        this.senha.clear();
        this.senha.sendKeys(senha);
    }

    public String getSenha() {
        return senha.getAttribute("senha");
    }

    public void setConfirmacao(String confirmacao) {
        this.confirmacao.clear();
        this.confirmacao.sendKeys(confirmacao);
    }

    public String getConfirmacao() {
        return confirmacao.getAttribute("confirmacao");
    }

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

    public void setApelido(String apelido) {
        this.apelido.clear();
        this.apelido.sendKeys(apelido);
    }

    public String getApelido() {
        return apelido.getAttribute("apelido");
    }

    public void setTipoResidencia(String tipoResidencia) {
        this.tipoResidencia.clear();
        this.tipoResidencia.sendKeys(tipoResidencia);
    }

    public String getTipoResidencia() {
        return tipoResidencia.getAttribute("tipoResidencia");
    }

    public void setTipoLogradouro(String tipoLogradouro) {
        this.tipoLogradouro.clear();
        this.tipoLogradouro.sendKeys(tipoLogradouro);
    }

    public String getTipoLogradouro() {
        return tipoLogradouro.getAttribute("tipoLogradouro");
    }

    public void setLogradouro(String logradouro) {
        this.logradouro.clear();
        this.logradouro.sendKeys(logradouro);
    }

    public String getLogradouro() {
        return logradouro.getAttribute("logradouro");
    }

    public void setNumero(String numero) {
        this.numero.clear();
        this.numero.sendKeys(numero);
    }

    public String getNumero() {
        return numero.getAttribute("numero");
    }

    public void setBairro(String bairro) {
        this.bairro.clear();
        this.bairro.sendKeys(bairro);
    }

    public String getBairro() {
        return bairro.getAttribute("bairro");
    }

    public void setCep(String cep) {
        this.cep.clear();
        this.cep.sendKeys(cep);
    }

    public String getCep() {
        return cep.getAttribute("cep");
    }

    public void setCidade(int cidade) {
        Select selectCidade = new Select(this.cidade);
        selectCidade.selectByIndex(cidade);
    }
    
    // public String getCidade() {
    //     return cidade.getAttribute("cidade");
    // }

    public void setEstado(int estado) {
        Select selectEstado = new Select(this.estado);
        selectEstado.selectByIndex(estado);
    }

    // public String getEstado() {
    //     return estado.getAttribute("estado");
    // }

    public void setPais(int pais) {
        Select selectPais = new Select(this.pais);
        selectPais.selectByIndex(pais);
    }

    // public String getPais() {
    //     return pais.getAttribute("pais");
    // }

    public void setObservacao(String observacao) {
        this.observacao.clear();
        this.observacao.sendKeys(observacao);
    }

    public String getObservacao() {
        return observacao.getAttribute("observacao");
    }

    public void confirmarCadastro() {
        formCadastro.submit();
    }

}
