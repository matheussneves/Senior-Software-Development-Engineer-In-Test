const HomePage = require('../pageobjects/home.page.js');
const CadastroPage = require('../pageobjects/cadastrar.page.js');
const TempoPage = require('../pageobjects/tempo.page.js');
const { Given, When, Then } = require('@wdio/cucumber-framework');

Given('acessar a home do Sowe', () => {
    driver.isAppInstalled("io.platformbuilders.challenge.qa");
    driver.launchApp();
    driver.activateApp('io.platformbuilders.challenge.qa');
    HomePage.btncadastrar.isDisplayed();
});

When('verificar que os {string} de titulo, subtitulo e os botões de cadastrar e entrar são exibidos corretamente', (campos) => {
    var text = $(`~ ${campos}`).getText();
    text == campos;
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);
    console.log(text);

});

When('clicar em {string}', (campos) => {
   $(`~${campos}`).click();
});

Then('verificar que o APP é redirecionado para a tela de cadastro', () => {
    CadastroPage.tbxCelular.isDisplayed();
});

When('preencher o campo de numero de celular com {string}', (numero) => {
    CadastroPage.tbxCelular.setValue(numero);
 });

When('clicar no botão avançar', () => {
    CadastroPage.btnAvancar.click
});

When('preencher o campo de nome com {string}', (nome) => {
    CadastroPage.txtNome.isDisplayed();
    CadastroPage.txtNome.setValue(nome);
});

When('{string} a localização', (acao) => {
    CadastroPage.btnLocalizacao.click
    if (acao == "permitir") {
        CadastroPage.btnSim.click
    }
    else{
        CadastroPage.btnNao.click
    }
});

When('verificar que o app exibe a tela de previsão do tempo', () => {
    TempoPage.txtTitulo.isDisplayed();
});

Then('verificar não avança no cadastro', () => {
    CadastroPage.btnLocalizacao.isDisplayed
});

Then('verificar que campos {string} são exibido com o valor correto', (campos) => {
     $(`~${campos}`).isDisplayed();
     campos == $(`~${campos}`).getText()
});