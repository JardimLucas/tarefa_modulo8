#language: pt

Funcionalidade: Compra na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Cenário: Compra válida
Dado que eu esteja realizando uma compra
Quando eu selecionar os produtos, configurações e quantidade que desejo
Então deve exibir uma mensagem de sucesso "Produto adicionado ao carrinho!"

Cenário: Seleções de cor, tamanho e quantidade obrigatórias
Dado que eu esteja realizando uma compra
Quando eu clicar no botão "Adicionar ao carrinho"
Então deve exibir uma mensagem de erro informando "Erro. Cor, tamanho e quantidade do produto devem ser obrigatórios."

Cenário: Limite máximo de 10 produtos por venda
Dado que esteja realizando uma compra de mais de 10 produtos
Quando eu clicar no botão "Adicionar ao carrinho"
Então deve exibir uma mensagem de erro "Limite de 10 produtos foi atingido!"

Cenário: Botão "Limpar" para retornar ao estado original
Dado que eu tenha preenchido os dados de compra
Quando eu clicar no botão "Limpar"
Então as selopções de cor, tamanho e quantidade devem ser apagadas e retornar para o estado original.