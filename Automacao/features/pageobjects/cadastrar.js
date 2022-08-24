class CadastroPage {
  
    get tbxCelular() {
        return $('~insira o numero de celular');
    }
    get btnAvancar() {
        return $('~Botao Avancar');
    }
    get txtNome() {
        return $('~Insira o nome completo');
    }
    get btnLocalizacao() {
        return $('~LOCALIZAÇÃO AUTOMÁTICA');
    }
    get btnSim() {
        return $('~Sim');
    }
    get btnNao() {
        return $('~Não');
    }
   
}
module.exports = new CadastroPage();
