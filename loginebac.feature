#language: pt

Funcionalidade: Login na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Cenário: Sucesso no Login
Dado que eu quero fazer o login para visualizar meus pedidos
Quando eu digitar o login "lucas.jardim@ebac.com.br"
E a senha "Senh@123"
Então deve exibir uma mensagem de sucesso "Login realizado com sucesso!" e direcionar para a área de checkout

Cenário: Falha no Login
Dado que eu quero fazer o login para visualizar meus pedidos
Quando eu digitar o login "paosdfum@ebac"
E a senha "Senh@123"
Então deve exibir uma mensagem de erro "Usuário ou senha inválidos!" 
