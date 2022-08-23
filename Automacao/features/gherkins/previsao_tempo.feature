# encoding: utf-8
# language:pt

Funcionalidade: Exibir a tela inicial do aplicativo
  Como cliente do Sowe
  Quero visualizar a tela inicial do aplicatico
  Para que possa logar no APP

  Contexto: Acessar a tela de previsão do tempo
    * acessar a home do Sowe
    * clicar em "Cadastrar"
    * preencher o campo de numero de celular com "11931006056"
    * clicar no botão avançar
    * preencher o campo de nome com "Matheus Dos Santos Neves"
    * clicar no botão avançar
    * "permitir" a localização
    * verificar que o app exibe a tela de previsão do tempo
  
  @Automatizado
  Cenário: Validar as informações da tepa de previsão do tempo
    Então verificar que campos <campos> são exibido com o valor correto

    Exemplos:
        | campos                  |
        | "Sowe"                  |
        | "Bairro do Clima Bom"   |
        | "Sorocaba, SP"          |
        | "Temperatura atual 28"  |
        | "Baixa 18"              |
        | "Alta 31"               |
        | "0% CHANCE CH."         |
        | "0mm CHUVA"             |
        | "36km/h VENTO"          |
        | "5 RAIOS UV"            |
        | "46% HUMIDADE"          |
        | "32˚C JÁ É SENSASSÃO"   |
        | "horario 15:00"         |
        | "08/22/22"              |

    
  @Automatizado      
  Cenário: Validar botão sair
    Então verificar que o layout da tela "Sowe" é exibido conforme figma

  

  