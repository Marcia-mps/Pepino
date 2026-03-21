#language: pt

Funcionalidade: Login na plataforma
  
   Como cliente da EBAC-SHOP
   Quero acessar minha conta
   Para realizar compras

  Contexto:
    Dado que estou na tela de login

  Cenário: Login com dados válidos
    Quando informo um e-mail válido e uma senha válida
    E clico no botão "Entrar"
    Então devo ser direcionado para a página inicial

  Cenário: Login com dados inválidos
    Quando informo um e-mail inválido ou uma senha inválida
    E clico no botão "Entrar"
    Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"