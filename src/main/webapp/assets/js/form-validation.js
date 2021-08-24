(function validation() {
    'use strict'
  
    var forms = document.querySelectorAll('.needs-validation')
  
    Array.prototype.slice.call(forms)
      .forEach(function (form) {
        form.addEventListener('submit', function (event) {
          if (!form.checkValidity()) {
            event.preventDefault()
            event.stopPropagation()
          }
  
          form.classList.add('was-validated')
        }, false)
      })
  })()

document.getElementById('senhaConfirmacao').addEventListener('keyup', confirmarSenha)
    function confirmarSenha(){
        if(document.getElementById('senha').value !== this.value){
            this.classList.add("is-invalid");
        } else if (this.classList.contains("is-invalid")){
            this.classList.remove("is-invalid");
        }
}

document.getElementById('senha').addEventListener('keyup', validarSenha)
    function validarSenha(){
        var caracteres= "^(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#\$%\^&\*\(\)])";
        
        if(!this.value.match(caracteres) || (this.value.length<8)){
            this.classList.add("is-invalid");
        } else if (this.classList.contains("is-invalid")){
            this.classList.remove("is-invalid");
        }
}

