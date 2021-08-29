package controller.strategy;

import model.EntidadeDominio;

import java.util.List;

public abstract class AbstractStrategy implements IStrategy{

    private final List<String> regrasDeNegocio;

    public AbstractStrategy(List<String> regrasDeNegocio) {
        this.regrasDeNegocio = regrasDeNegocio;
    }


    public boolean validar(EntidadeDominio entidade) {

        for(String regraDeNegocio : regrasDeNegocio) {
            if(!regrasDeNegocio.contains(regraDeNegocio)) {
                return false;
            }
        }

        return true;
    }

}
