function editar(id) {
  let input = document.getElementById(id);
  if(input.disabled == true){
    input.disabled = false;
  }else{
    input.disabled = true;
  }
}