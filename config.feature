#language: pt
#encoding: utf-8

Funcionalidade: Configuração de Produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
e escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que estou na página de detalhes do produto

Cenário: Seleção válida de cor, tamanho e quantidade
Quando eu slecionar a cor válida "vermelho"
E selecionar o tamanho válido "M"
E eu selecionar uma quantidade válida "5"
Então os campos de cor, tamanho e quantidade devem estar preencidos com os valores selecionados

Cenário: Seleção inválida de cor, tamanho e quantidade
Quando eu slecionar a cor inválida "azul"
E selecionar o tamanho inválido "PP"
E eu selecionar uma quantidade inválida "0"
Então devo ver uma mensagem de erro informando que a seleção é inválida

Cenário: Limite máximo de produtos por venda
Quando eu selecionar uma quantidade maior que 10 produtos
Então uma mensagem de erro deve ser exibida informando que o limite máximo de produtos por venda é de 10 produtos

Cenario: Limpar seleção
Quando eu selecionar a cor válida "Verde"
E selecionar o tamanho válido "G"
E eu selecionar uma quantidade válida "3"
E clicar no botão "Limpar"
Então os campos de cor, tamanho e quantidade devem retornar ao estado original (vazio ou padrão)