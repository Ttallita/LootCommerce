package model;

public class Usuario extends EntidadeDominio{

    private String nome;
    private String sobrenome;
    private String email;
    private String senha;
    private String confirmarSenha;
    private UsuarioType tipoUsuario;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSobrenome() { return sobrenome; }

    public void setSobrenome(String sobrenome) { this.sobrenome = sobrenome; }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getConfirmarSenha() {
        return confirmarSenha;
    }

    public void setConfirmarSenha(String confirmarSenha) {
        this.confirmarSenha = confirmarSenha;
    }

    public UsuarioType getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(UsuarioType tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }
}
