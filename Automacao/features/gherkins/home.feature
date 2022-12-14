Feature: Exibir a tela inicial do aplicativo
  Como cliente do Sowe
  Quero visualizar a tela inicial do aplicatico
  Para que possa logar no APP

    @Manual
    Scenario Outline: Validar layout da home  do app
        Given acessar a home do Sowe
        Then verificar que o layout da home é exibida conforme protótipo do figma

    @Automatizado
    Scenario Outline: Validar as informações do home do app
        Given acessar a home do Sowe
         Then verificar que os <campos> de titulo, subtitulo e os botões de cadastrar e entrar são exibidos corretamente

         Examples:
             |   campos                                                                                            |
             |   "Explore climas locais socialmente, com o Sowe"                                                   |
             |   "Saiba quantas pessoas próximas a você reportaram chuva e receba um aviso antes de sair de casa." |
             |   "Cadastrar"                                                                                       |
             |   "Entrar"                                                                                          |

    @Automatizado      
    Scenario Outline: Validar funcionamento do botão Cadastrar
        Given acessar a home do Sowe
        And clicar em "Cadastrar"
        Then verificar que o APP é redirecionado para a tela de cadastro