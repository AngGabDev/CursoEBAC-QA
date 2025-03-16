#language: pt

Funcionalidade: Login na EBAC-SHOP

Como cliente da EBAC-SHOP
Quero fazer o login/autenticação na plataforma  
Para visualizar meus pedidos

Contexto:

Dado que eu acesse a EBAC-SHOP

Cenário: Autenticação válida
Quando digito o usuário "pedrinho@ebac.com.br"
E a senha "umasenhaqualquer"
Então deve levar o usuário para a tela de checkout

Cenário: Autenticação inválida
Quando digito o usuário "pedrin@ebac.com.br"
E a senha "umasenhaqualquer"
Então deve exibir a mensagem de alerta "Usuário ou senha inválidos"