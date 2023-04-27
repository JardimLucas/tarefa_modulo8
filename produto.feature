#language: pt

Funcionalidade: Compra na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu quero realizar uma compra

Cenário: Compra válida
Quando eu selecionar a cor "Azul" 
E o tamanho "G"
E escolher a quantidade "1"
Então deve exibir uma mensagem de sucesso "Produto adicionado ao carrinho!"

Cenário: Seleções de cor, tamanho e quantidade obrigatórias
Quando eu clicar no botão "Adicionar ao carrinho"
Então deve exibir uma mensagem de erro informando "Erro. Cor, tamanho e quantidade do produto devem ser obrigatórios."

Cenário: Limite máximo de 10 produtos por venda
E selecionei a cor "Vermelho"
E selecionei o tamanho "G"
E selecionei a quantidade "11"
Quando eu clicar no botão "Adicionar ao carrinho"
Então deve exibir uma mensagem de erro "Limite de 10 produtos foi atingido!"

Cenário: Botão "Limpar" para retornar ao estado original
E selecionei a cor "amarelo"
E selecionei o tamanho "P"
E selecionei a quantidade "2"
Quando eu clicar no botão "Limpar"
Então as selopções de cor, tamanho e quantidade devem ser apagadas e retornar para o estado original.