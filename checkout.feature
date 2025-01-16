            #language: pt
            #encoding: utf-8

            Funcionalidade: Tela de cadastro - Checkout

            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra


            Contexto:
            Dado que estou na tela de cadastro

            Esquema do Cenário: Cadastro com diferentes dados
            Quando eu preencher o campo "Nome" com "<nome>"
            E eu preencher o campo "Sobrenome" com "<sobrenome>"
            E eu preencher o campo "E-mail" com "<email>"
            E eu preencher o campo "senha" com "<senha>"
            E eu preencher o campo "Confirmação de senha" com "<confirmação>"
            E eu clicar no botão "Cadastrar"
            Então devo ver a mensagem de sucesso "Cadastro realizado com sucesso"

            Exemplos:
            | nome  | sobrenome | email                  | senha  | confirmação |
            | João  | Silva     | joaosilva@email.com    | 123456 | 123456      |
            | Maria | Santos    | mariasantos@email.com  | 123456 | 123456      |
            | José  | Souza     | josesouza@email.com    | 123456 | 123456      |
            | Ana   | Oliveira  | anaoliveira@email.com  | 123456 | 123456      |
            | Pedro | Pereira   | pedropereira@email.com | 123456 | 123456      |

            Cenario: Cadastro com e-mail inválido
            Quando eu preencher o campo "Nome" com "João"
            E eu preencher o campo "Sobrenome" com "Silva"
            E eu preencher o campo "E-mail" com "joaosilvaemail.com"
            E eu preencher o campo "senha" com "123456"
            E eu preencher o campo "Confirmação de senha" com "123456"
            E eu clicar no botão "Cadastrar"
            Então devo ver a mensagem de erro "Formato de E-mail inválido"

            Cenario: Cadastro com campos vazios
            Quando eu preencher o campo "Nome" com ""
            E eu preencher o campo "Sobrenome" com ""
            E eu preencher o campo "E-mail" com ""
            E eu preencher o campo "senha" com ""
            E eu preencher o campo "Confirmação de senha" com ""
            E eu clicar no botão "Cadastrar"
            Então devo ver a mensagem de erro "Todos os campos são obrigatórios"	