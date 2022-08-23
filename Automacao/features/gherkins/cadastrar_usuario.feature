# encoding: utf-8
# language:pt

Funcionalidade: Cadastrar usuario
  Como cliente do Sowe
  Quero acessar a tela de cadastro
  Para que possa me cadastrar no aplicativo

  Contexto: Acessar a tela de cadastro
    * acessar a home do Sowe
    * clicar em "Cadastrar"
  
    @Automatizado
    Cenário: Cadastrar usuario
      Quando preencher o campo de numero de celular com "11931006056"
      E clicar no botão avançar
      E preencher o campo de nome com "Matheus Dos Santos Neves"
      E clicar no botão avançar
      E "permitir" a localização
      Então verificar que o app exibe a tela de previsão do tempo

    @Automatizado
    Cenário: Negar localização
      Quando preencher o campo de numero de celular "11931006056"
      E clicar no botão avançar
      E preencher o campo de nome "Matheus Dos Santos Neves"
      E clicar no botão avançar
      E "negar" a localização
      Então verificar não avança no cadastro

    @Manual
    Cenário: Validar layout da etapa celular
      Quando estiver na etapa celular
      Então verificar que o layout da etapa "Celular" é exibido conforme figma
      E validar se o campo 'insira o numero de celular' executa o tratamento para validação da numeração telefonica
    
    @Manual
    Cenário: Validar etapa celular na tela de cadastro com dados validos
      Quando estiver na etapa celular
      E preencher com numero de celular valido
      Então verificar que o APP avança para a etapa Código de confirmação
      
    
    @Manual
    Cenário: Validar funcionamento etapa celular na tela de cadastro com dados invalidos
      Quando estiver na etapa celular
      E preencher com numero de celular invalido
      Então verificar que o botão "Avançar" não é habilitado
    
    @Manual
    Cenário: Validar funcionamento da etapa Código de confirmação na tela de cadastro com dados validos
      Quando estiver na etapa celular
      E preencher com numero de celular valido
      E clicar no botão "Avançar"
      E preencher o campo código de confirmação com código valido
      Então verificar que o layout da etapa "Código de confirmação" é exibido conforme figma
      E verificar que o APP avança para a etapa Nome
    
    @Manual
    Cenário: Validar funcionamento da etapa Código de confirmação na tela de cadastro com dados invalidos
      Quando estiver na etapa celular
      E preencher com numero de celular valido
      E clicar no botão "Avançar"
      E preencher o campo código de confirmação com código invalido
      Então verificar que o APP não avança para a etapa Nome
    
    @Manual
    Cenário: Validar botão REENVIE O CÓDIGO
      Quando estiver na etapa celular
      E preencher com numero de celular valido
      E clicar no botão "REENVIE O CÓDIGO"
      Então verificar que o código é reenviado
    
    @Manual
    Cenário: Validar funcionamento da etapa Nome na tela de cadastro
      Quando estiver na etapa celular
      E preencher com numero de celular valido
      E clicar no botão "Avançar"
      E preencher o campo código de confirmação com código valido
      E preencher o campo nome com <nome>
      Então verificar que o APP <acao> para a etapa localização

      Exemplos:
      | nome              | acao          |
      | "Matheus Neves"   | "Avança"      |
      | "Matheus"         | "Não avança"  |
    
    @Manual
    Cenário: Validar layout da etapa Nome na tela de cadastro
      Quando estiver na etapa celular
      E preencher com numero de celular valido
      E clicar no botão "Avançar"
      E preencher o campo código de confirmação com código valido
      Então verificar que o layout da etapa "Nome" é exibido conforme figma
    
    @Manual
    Cenário: Validar layout da etapa Localização na tela de cadastro
      Quando estiver na etapa celular
      E preencher com numero de celular valido
      E clicar no botão "Avançar"
      E preencher o campo código de confirmação com código valido
      E preencher o campo nome com "Matheus Neves"
      Então verificar que o layout da etapa "Localização" é exibido conforme figma
    
    @Manual
    Cenário: Validar layout da etapa Localização na tela de cadastro
      Quando estiver na etapa celular
      E preencher com numero de celular valido
      E clicar no botão "Avançar"
      E preencher o campo código de confirmação com código valido
      E preencher o campo nome com "Matheus Neves"
      E clicar no botão "LOCALIZAÇÃO AUTOMÁTICA"
      E clicar no botão <opcao>
      Então verificar que o APP <acao> para tela de previsão do tempo

      Exemplos:
      | nome    | acao          |
      | "SIM"   | "Avança"      |
      | "NÃO"   | "Não avança"  |