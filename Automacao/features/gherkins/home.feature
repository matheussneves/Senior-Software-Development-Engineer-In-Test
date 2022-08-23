# encoding: utf-8
# language:pt

Funcionalidade: Exibir a tela inicial do aplicativo
  Como cliente do Sowe
  Quero visualizar a tela inicial do aplicatico
  Para que possa logar no APP

    @Manual
    Cenário: Validar layout da home  do app
        Quando acessar a home do Sowe
        Então verificar que o layout da home é exibida conforme protótipo do figma

    @Automatizado
    Cenário: Validar as informações do home do app
        Quando acessar a home do Sowe
         Então verificar que os <campos> de titulo, subtitulo e os botões de cadastrar e entrar são exibidos corretamente

         Exemplos:
             |   campos                                                                                            |
             |   "Explore climas locais socialmente, com o Sowe"                                                   |
             |   "Saiba quantas pessoas próximas a você reportaram chuva e receba um aviso antes de sair de casa." |
             |   "Cadastrar"                                                                                       |
             |   "Entrar"                                                                                          |

    @Automatizado      
    Cenário: Validar funcionamento do botão Cadastrar
        Quando acessar a home do Sowe
        E clicar em "Cadastrar"
        Então verificar que o APP é redirecionado para a tela de cadastro

   