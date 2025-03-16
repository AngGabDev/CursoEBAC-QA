            #language: pt

            Funcionalidade: Tela de Checkout

            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu faça a autenticação na EBAC-SHOP



            Cenário: Finalizar cadastro
            Quando eu digitar o nome "Pedro", o sobrenome "Silva"
            E selecionar o país "Brasil(BR)"
            E digitar o endereço "Av. Brasil, 1234", cidade "Brasília", cep "70050-000" e telefone "(61) 91234-5678"
            E digitar o email "pedrinho@ebac.com.br"
            Então deve finalizar a comprar e exibir mensagem "Compra finalizada"



            Cenário: Email inválido
            Quando eu digitar o nome "Carlo", o sobrenome "Oliveira"
            E selecionar o país "Brasil"
            E digitar o endereço "Av. Brasil, 4321", cidade "São Paulo", cep "05999-999" e telefone "11 91234-5678"
            E digitar o email "carloebac.com.br"
            Então deve exibir mensagem de alerta "Formato de email inválido"



            Cenário: Cadastro com campo vazio
            Quando eu digitar o nome "Maria", o sobrenome "Souza"
            E selecionar o país "Brasil"
            E digitar o endereço "Av. Brasil, 5678", cidade "Rio de Janeiro", cep "" e telefone "21 91234-5678"
            E digitar o email "maria@ebac.com.br"
            Então deve exibir mensagem de alerta "Você precisa preencher todos os dados obrigatórios"

            Esquema do Cenário: Finalizar checkout
            Quando eu digitar <nome> e <sobrenome>
            E selecionar o <pais>
            E preencher <endereco>, <cidade>, <cep> e <telefone>
            E digitar o <email> em um formato válido
            Então deve exibir a <mensagem> para o respectivo cadastro

            Exemplos:

            | nome  | sobrenome | pais   | endereco         | cidade         | cep       | telefone      | email                | mensagem                                           |
            | Pedro | Silva     | Brasil | Av. Brasil, 1234 | Brasília       | 70050-000 | 61 91234-5678 | pedrinho@ebac.com.br | Compra finalizada                                  |
            | Carlo | Oliveira  | Brasil | Av. Brasil, 4321 | São Paulo      | 05999-999 | 11 91234-5678 | pedrinhoebac.com.br  | Formato de email inválido                          |
            | Maria | Souza     | Brasil | Av. Brasil, 5678 | Rio de Janeiro |           | 21 91234-5678 | maria@ebac.com.br    | Você precisa preencher todos os dados obrigatórios |