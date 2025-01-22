#language: pt
#encoding: utf-8

Funcionalidade: Configuração de Produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
e escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que estou na página de detalhes do produto

Cenário: configurar produto com sucesso
Quando eu configurar as opções de cor, tamanho e quantidade
Então o produto configurado dever ser adicionado ao carrinho

Cenário: Limite máximo de produtos por venda
Quando eu selecionar uma quantidade maior que 10 produtos
Então devo receber uma mensagem informando o limite máximo de quantidade

Cenario: Limpar seleção
Quando eu clicar no botão de Limpar
Então as opções de configuração devem retornar ao estado inicial