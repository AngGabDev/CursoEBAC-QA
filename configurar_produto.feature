#language: pt

Funcionalidade: Configurar produto

Como cliente da EBAC-Shop
Quero configurar o produto de acordo com meu tamanho e meu gosto
e quero escolher a quantidade
Para inserir no meu carrinho depois

Contexto:
Dado que eu queira comprar algum produto na EBAC-Shop

Cenário: Escolha de tamanho e cor
Quando seleciono cor "laranja"
E tamanho "XS"
E quantidade "2"
Então o produto deve ser adicionado ao carrinho

Cenário: Limpando configuração
Quando seleciono cor "laranja"
E tamanho "XS"
E seleciono a opção "limpar"
Então o produto deve voltar para ao estado original

Cenário: Comprando mais de dez itens
Quando seleciono cor "laranja"
E tamanho "XS"
E quantidade "12"
Então deve mostrar a mensagem "Não é possível comprar mais que 10 itens por vez"