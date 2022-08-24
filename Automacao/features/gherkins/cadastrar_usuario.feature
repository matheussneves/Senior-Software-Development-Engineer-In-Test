# encoding: utf-8
# language:en

Feature: Cadastrar usuario
  Como cliente do Sowe
  Quero acessar a tela de cadastro
  Para que possa me cadastrar no aplicativo

  Background: Acessar a tela de cadastro
    Given acessar a home do Sowe
    And clicar em "Cadastrar"
  
    @Automatizado
    Scenario: Cadastrar usuario
      When preencher o campo de numero de celular com "11931006056"
      And clicar no botão avançar
      And preencher o campo de nome com "Matheus Dos Santos Neves"
      And clicar no botão avançar
      And "permitir" a localização
      Then verificar que o app exibe a tela de previsão do tempo

    @Automatizado
    Scenario: Negar localização
      When preencher o campo de numero de celular com "11931006056"
      And clicar no botão avançar
      And preencher o campo de nome com "Matheus Dos Santos Neves"
      And clicar no botão avançar
      And "negar" a localização
      Then verificar não avança no cadastro

    @Manual
    Scenario: Validar layout da etapa celular
      When estiver na etapa celular
      Then verificar que o layout da etapa "Celular" é exibido conforme figma
      And validar se o campo 'insira o numero de celular' executa o tratamento para validação da numeração telefonica
    
    @Manual
    Scenario: Validar etapa celular na tela de cadastro com dados validos
      When estiver na etapa celular
      And preencher com numero de celular valido
      Then verificar que o APP avança para a etapa Código de confirmação
      
    
    @Manual
    Scenario: Validar funcionamento etapa celular na tela de cadastro com dados invalidos
      When estiver na etapa celular
      And preencher com numero de celular invalido
      Then verificar que o botão "Avançar" não é habilitado
    
    @Manual
    Scenario: Validar funcionamento da etapa Código de confirmação na tela de cadastro com dados validos
      When estiver na etapa celular
      And preencher com numero de celular valido
      And clicar no botão "Avançar"
      And preencher o campo código de confirmação com código valido
      Then verificar que o layout da etapa "Código de confirmação" é exibido conforme figma
      And verificar que o APP avança para a etapa Nome
    
    @Manual
    Scenario: Validar funcionamento da etapa Código de confirmação na tela de cadastro com dados invalidos
      When estiver na etapa celular
      And preencher com numero de celular valido
      And clicar no botão "Avançar"
      And preencher o campo código de confirmação com código invalido
      Then verificar que o APP não avança para a etapa Nome
    
    @Manual
    Scenario: Validar botão REENVIE O CÓDIGO
      When estiver na etapa celular
      And preencher com numero de celular valido
      And clicar no botão "REENVIE O CÓDIGO"
      Then verificar que o código é reenviado
    
    @Manual
    Scenario: Validar funcionamento da etapa Nome na tela de cadastro
      When estiver na etapa celular
      And preencher com numero de celular valido
      And clicar no botão "Avançar"
      And preencher o campo código de confirmação com código valido
      And preencher o campo nome com <nome>
      Then verificar que o APP <acao> para a etapa localização

      Exemplos:
      | nome              | acao          |
      | "Matheus Neves"   | "Avança"      |
      | "Matheus"         | "Não avança"  |
    
    @Manual
    Scenario: Validar layout da etapa Nome na tela de cadastro
      When estiver na etapa celular
      And preencher com numero de celular valido
      And clicar no botão "Avançar"
      And preencher o campo código de confirmação com código valido
      Then verificar que o layout da etapa "Nome" é exibido conforme figma
    
    @Manual
    Scenario: Validar layout da etapa Localização na tela de cadastro
      When estiver na etapa celular
      And preencher com numero de celular valido
      And clicar no botão "Avançar"
      And preencher o campo código de confirmação com código valido
      And preencher o campo nome com "Matheus Neves"
      Then verificar que o layout da etapa "Localização" é exibido conforme figma
    
    @Manual
    Scenario: Validar layout da etapa Localização na tela de cadastro
      When estiver na etapa celular
      And preencher com numero de celular valido
      And clicar no botão "Avançar"
      And preencher o campo código de confirmação com código valido
      And preencher o campo nome com "Matheus Neves"
      And clicar no botão "LOCALIZAÇÃO AUTOMÁTICA"
      And clicar no botão <opcao>
      Then verificar que o APP <acao> para tela de previsão do tempo

      Exemplos:
      | nome    | acao          |
      | "SIM"   | "Avança"      |
      | "NÃO"   | "Não avança"  |