Feature: Exibir a tela principal do aplicativo
  Como cliente do Sowe
  Quero visualizar a tela principal do aplicatico
  Para que possa ver o tempo

  Background: Acessar a tela de previsão do tempo
    Given acessar a home do Sowe
    And clicar em "Cadastrar"
    And preencher o campo de numero de celular com "11931006056"
    And clicar no botão avançar
    And preencher o campo de nome com "Matheus Dos Santos Neves"
    And clicar no botão avançar
    And "permitir" a localização
  
  @Automatizado
  Scenario Outline: Validar as informações da tepa de previsão do tempo
    When verificar que o app exibe a tela de previsão do tempo
    Then verificar que campos <campos> são exibido com o valor correto

    Examples:
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

    
  @Manual      
  Scenario Outline: Validar layout
    When verificar que o app exibe a tela de previsão do tempo
    Then verificar que o layout da tela "Sowe" é exibido conforme figma
  