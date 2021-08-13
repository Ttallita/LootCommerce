public class RetiradaEstoque implements Command{
    @Override
    public String execute(){
        return "Retirado do estoque";
    }

    @Override
    public String undo(){
        return "Recolocado em estoque";
    }
}
