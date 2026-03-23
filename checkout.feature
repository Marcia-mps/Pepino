#language: pt

Funcionalidade: Cadastro na tela de checkout

     Como cliente da EBAC-SHOP
     Quero concluir meu cadastro
     Para finalizar minha compras

  Contexto:
    Dado que estou na tela de cadastro

  Cenário: Cadastro com dados válidos
    Quando preencho todos os campos corretamente
    E clico em "Cadastrar"
    Então o cadastro deve ser realizado com sucesso

  Esquema do Cenário: Validação de campos obrigatórios

   Quando preencho Nome "<nome>", Sobrenome "<sobrenome>", Email "<email>" e Endereço "<endereco>"
   E clico em "Cadastrar"
   Então o sistema deve exibir a mensagem "<mensagem>"

  Exemplos:
   | nome  | sobrenome | email           | endereco | mensagem                         |
   |       | Silva     | maria@email.com | Rua A    | O campo Nome é obrigatório       |
   | Maria |           | maria@email.com | Rua A    | O campo Sobrenome é obrigatório  |
   | Maria | Silva     |                 | Rua A    | O campo Email é obrigatório      |
   | Maria | Silva     | maria@email.com |          | O campo Endereço é obrigatório   |

