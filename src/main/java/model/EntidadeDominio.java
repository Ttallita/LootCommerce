package model;

public abstract class EntidadeDominio implements IEntidade{
    private Long id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
