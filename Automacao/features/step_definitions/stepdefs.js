const CadastroPage = require('../pageobjects/cadastrar.page.js');
const TempoPage = require('../pageobjects/tempo.page.js');
const { Given, When, Then } = require('@wdio/cucumber-framework');

Given('acessar a home do Sowe', () => {
    driver.isAppInstalled("io.platformbuilders.challenge.qa");
    driver.launchApp();
    driver.activateApp('io.platformbuilders.challenge.qa');
    $("~Cadastcrar").isDisplayed();
});

When('verificar que os {string} de titulo, subtitulo e os botões de cadastrar e entrar são exibidos corretamente', (campos) => {
    var text = $(`~ ${campos}`).getText();
    text == campos;
    console.log(text)
});

When('clicar em {string}', (campos) => {
   $(`~${campos}`).click();
   console.log('foi');
});

Then('verificar que o APP é redirecionado para a tela de cadastro', () => {
    CadastroPage.tbxCelular.isDisplayed();
    console.log('foi');
});

When('preencher o campo de numero de celular com {string}', (numero) => {
    CadastroPage.tbxCelular.setValue(numero);
 });

When('clicar no botão avançar', () => {
    $("~Botao Avancar").click
});

When('preencher o campo de nome com {string}', (nome) => {
    $("~Insira o nome completo").isDisplayed();
    $("~Insira o nome completo").setValue(nome);
});

When('{string} a localização', (acao) => {
    $("~LOCALIZAÇÃO AUTOMÁTICA").click
    if (acao == "permitir") {
        $("~Sim").click
    }
    else{
        $("~Não").click
    }
});

When('verificar que o app exibe a tela de previsão do tempo', () => {
    TempoPage.txtTitulo.isDisplayed();
});

Then('verificar não avança no cadastro', () => {
    $("~LOCALIZAÇÃO AUTOMÁTICA").isDisplayed
});

Then('verificar que campos {string} são exibido com o valor correto', (campos) => {
     $(`~${campos}`).isDisplayed();
     campos == campo(campos).getText()
});
When('clicar em sair', () => {
     $('~Botão Sair')
});
Then('validar que é exibido a home do app', () => {
    $("~Cadastcrar").isDisplayed();
});