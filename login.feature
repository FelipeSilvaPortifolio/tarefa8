#language: pt
#encoding: utf-8

Funcionalidade: Login na plataforma

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto:
Dado que estou na página de login

Cenario: Login com dados válidos
Quando eu inserir credenciais válidas
Entao eu devo ser redirecionado para a página de ckeckout

Cenario: Login com dados inválidos
Quando eu inserir credenciais inválidas
Entao eu devo ver a mensagem "Usuário ou senha inválidos"
