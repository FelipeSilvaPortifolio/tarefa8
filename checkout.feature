            #language: pt
            #encoding: utf-8

            Funcionalidade: Tela de cadastro - Checkout

            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra


            Contexto:
            Dado que estou na tela de cadastro

            Esquema do Cenário: Cadastro com diferentes dados
            Quando preencho os campos <nome>, <sobrenome>, <email>, <senha> e <confirmação> com dados válidos
            Então devo ver a mensagem de sucesso "Cadastro realizado com sucesso"

            Exemplos:
            | nome  | sobrenome | email                  | senha  | confirmação |
            | João  | Silva     | joaosilva@email.com    | 123456 | 123456      |
            | Maria | Santos    | mariasantos@email.com  | 123456 | 123456      |
            | José  | Souza     | josesouza@email.com    | 123456 | 123456      |
            | Ana   | Oliveira  | anaoliveira@email.com  | 123456 | 123456      |
            | Pedro | Pereira   | pedropereira@email.com | 123456 | 123456      |

            Cenario: Cadastro com e-mail inválido
            Quando eu preencher o com e-mail com um formato inválido
            Então devo ver uma mensagem de erro "E-mail inválido"

            Cenario: Cadastro com campos vazios
            Quando eu tento enviar o formulário com campos obrigatórios em branco
            Então devo receber mensagens de alerta indicando os campos que devem ser preenchidos	