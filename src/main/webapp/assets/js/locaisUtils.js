let baseApiUrl =  "http://localhost:8080/LootCommerce/"
let jsonLocais = ''

let optionsPais = []
let estadosPaisSelecionado = []

fetch(baseApiUrl + 'locais')
    .then(result => result.json())
    .then(result => {
        preencherComboBox(result)
    })
 
function preencherComboBox(locais) {
    
    locais.forEach(element => {
        let option = document.createElement("option")
        option.value = element.nome + "|" + element.id 
        option.innerHTML = element.nome
    

        document.getElementById("pais").appendChild(option)
    });

    optionsPais = locais
}

$('#pais').on('change', function() {
    let pais = document.getElementById("pais").value;
    let paisId = pais.split("|")[1]

    let paisSelecionado = optionsPais.find(pais => pais.id == paisId)

    let estadosSelect = document.getElementById("estado")
    estadosSelect.disabled = false;
    estadosSelect.innerHTML = "";

    paisSelecionado.estados.forEach(element => {
        let option = document.createElement("option")
        option.value = element.nome + "|" + element.id
        option.innerHTML = element.nome

        estadosSelect.appendChild(option)
    })

    estadosPaisSelecionado = paisSelecionado.estados

    let cidadesSelect = document.getElementById('cidade');
    cidadesSelect.disabled = true;
    cidadesSelect.innerHTML = "";
});

$('#estado').on('change', function () {
    let estado = document.getElementById("estado").value;

    let estadoId = estado.split("|")[1]

    let estadoSelecionado = estadosPaisSelecionado.find(estado => estado.id == estadoId)

    let cidadeSelect = document.getElementById("cidade")
    cidadeSelect.disabled = false;
    cidadeSelect.innerHTML = "";

    console.log(estadoSelecionado)

    estadoSelecionado.cidades.forEach(element => {
        let option = document.createElement("option")
        option.value = element.nome + "|" + element.id
        option.innerHTML = element.nome

        cidadeSelect.appendChild(option)
    })
})




