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
    E não preencho o campo "<campo_vazio>"
    E clico em "Cadastrar"
    Então o sistema deve exibir a mensagem "<mensagem>"

   Exemplos:
      | nome  | sobrenome | email           | endereco     | campo_vazio | mensagem                        |
      | Maria | Silva     | maria@email.com | Rua A        | Nome        | O campo Nome é obrigatório      |
      | Maria | Silva     | maria@email.com | Rua A        | Email       | O campo Email é obrigatório     |
      | Maria |           | maria@email.com | Rua A        | Sobrenome   | O campo Sobrenome é obrigatório |