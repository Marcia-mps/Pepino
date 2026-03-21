#language: pt

Funcionalidade: Configuração de Produto

   Como cliente da EBAC-SHOP
   Quero configurar um produto
   Para adicioná-lo ao carrinho
   
Contexto:
    Dado que estou na página do produto

  Cenário: Seleções obrigatórias
    Quando seleciono uma cor válida, tamanho válido e quantidade válida
    E clico em "Adicionar ao carrinho"
    Então o produto deve ser adicionado ao carrinho
    
  Cenário: Limite máximo
    Quando informo quantidade maior que 10
    Então o sistema deve exibir erro
    