#language: pt
#encoding: utf-8

Funcionalidade: Login na plataforma

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto:
Dado que estou na página de login

Cenario: Login com dados válidos
Quando eu preencher o campo de e-mail com "napoleao_bonaparte@hotmail.com"
E eu preencher o campo de senha com "123456"
E eu clicar no botão "Entrar"
Entao eu devo ser redirecionado para a tela de ckeckout

Cenario: Login com usário inválido
Quando eu preencher o campo de e-mail com "zedascolve@hotmail.com"
E eu preencher o campo de senha com "123456"
E eu clicar no botão "Entrar"
Entao eu devo ver a mensagem "Usuário ou senha inválidos"

Cenario: Login com senha inválida
Quando eu preencher o campo de e-mail com "napoleao_bonaparte@hotmail.com"
E eu preencher o campo de senha com "1234567"
E eu clicar no botão "Entrar"
Entao eu devo ver a mensagem "Usuário ou senha inválidos"
