function editar(id) {
  let input = document.getElementById(id);
  let botao = document.getElementById('atualizarDados');

  if(input.disabled == true){
    input.disabled = false;
    botao.disabled = false;
  }else{
    input.disabled = true;
  }
}