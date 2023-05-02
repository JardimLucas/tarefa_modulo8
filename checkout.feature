            #language: pt

            Funcionalidade: Conclusão do Cadastro na plataforma EBAC-SHOP
            Como um cliente da EBAC-SHOP,
            Eu quero concluir meu cadastro
            Para finalizar minha compra.

            Contexto:
            Dado que eu estou na página de checkout

            Cenário: Cadastro com dados válidos
            Quando eu preencho todos os campos obrigatórios com dados válidos:
            Então uma mensagem de sucesso é exibida "Cadastro concluído com sucesso!" e redirecionado para a página de finalização de compra.

            Exemplos:
            | Nome*      | Sobrenome* | País*    | Endereço*                   | Cidade*      | CEP*        | Telefone*        | E-mail*                   |
            | "Lucas"    | "Jardim"   | "Brasil" | "Rua dos testes, 123"       | "Araraquara" | "14801-000" | "(16)99998-8888" | "lucasjardim@ebac.com.br" |
            | "Fernanda" | "Silva"    | "Brasil" | "Avenida dos testados, 456" | "São Paulo"  | "11500-000" | "(11)99555-5555" | "fernandasilva@ebac.com"  |
            | "Miguel"   | "Paratudo" | "Brasil" | "Rua dos estranhos, 159"    | "São Paulo"  | "11505-505" | "(11)99558-6545" | "miguel.p@gmail.com"      |


            Cenário: Cadastro com formato de e-mail inválido
            Quando eu preencho o campo de e-mail com um formato inválido:
            Então uma mensagem de erro é exibida "E-mail inválido"

            Exemplos:
            | Nome*      | Sobrenome* | País*    | Endereço*                    | Cidade*          | CEP*        | Telefone*        | E-mail*                |
            | "Esdras"   | "Santos"   | "Brasil" | "Rua dos fakes, 789"         | "Santos"         | "13888-000" | "(13)95555-4444" | "esdras@teste"         |
            | "Abacuque" | "da Cruz"  | "Brasil" | "Travessa dos pássaros, 741" | "Rio de Janeiro" | "21222-111" | "(21)95785-7418" | "abacuque.com.br"      |
            | "Sofonias" | "Laranja"  | "Brasil" | "Rua das frutas, 357"        | "Campinas"       | "19888-999" | "(19)98529-6547" | "sofonias@teste.teste" |


            Cenário: Cadastro com campos vazios
            Quando eu tento cadastrar com campos vazios:
            Então uma mensagem de alerta é exibida "Todos os campos obrigatórios devem ser preenchidos"

            Exemplos:
            | Nome* | Sobrenome* | País* | Endereço* | Cidade* | CEP* | Telefone* | E-mail* |
            |       |            |       |           |         |      |           |         |
