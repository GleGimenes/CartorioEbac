            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro   
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse o campo de novo cadastro na EBAC SHOP

            Cenário: Cadastrar novo usuário
            Quando eu digitar nos campos sinalizados com asterico o nome "Paulo Sergio"
            E o sobrenome "Alves"
            E o país "Brasil"
            E o endereço "Avenida das Amélias"
            E a cidade "Rio de Janeiro"
            E o CEP "02868689"
            E o telefone "9875325483"
            E o e-mail "paulo.s@ebacshop.com.br"
            Então deve exibir uma mensagem de confirmação "Seu cadastro foi realizado com sucesso!"

            Cenário: Cadastro com e-mail em formato inválido
            Quando eu digitar nos campos sinalizados com asterico o nome "Paulo Sergio"
            E o sobrenome "Alves"
            E o país "Brasil"
            E o endereço "Avenida das Amélias"
            E a cidade "Rio de Janeiro"
            E o CEP "02868689"
            E o telefone "9875325483"
            E o e-mail "paulo.s@ebacshopcom.br"
            Então deve exibir uma mensagem de erro "Formato de e-mail inexistente!"

            Cenário: Cadastro o com e-mail em branco
            Quando eu digitar nos campos sinalizados com asterico o nome "Paulo Sergio"
            E o sobrenome "Alves"
            E o país "Brasil"
            E o endereço "Avenida das Amélias"
            E a cidade "Rio de Janeiro"
            E o CEP "02868689"
            E o telefone "9875325483"
            E o e-mail " "
            Então deve exibir uma mensagem de alerta "Campo e-mail não preenchido!"

            Cenário: Cadastro o com telefone em branco
            Quando eu digitar nos campos sinalizados com asterico o nome "Paulo Sergio"
            E o sobrenome "Alves"
            E o país "Brasil"
            E o endereço "Avenida das Amélias"
            E a cidade "Rio de Janeiro"
            E o CEP "02868689"
            E o telefone " "
            E o e-mail "paulo.s@ebacshopcom.br"
            Então deve exibir uma mensagem de alerta "Campo telefone não preenchido!"

            Cenário: Cadastro o com CEP em branco
            Quando eu digitar nos campos sinalizados com asterico o nome "Paulo Sergio"
            E o sobrenome "Alves"
            E o país "Brasil"
            E o endereço "Avenida das Amélias"
            E a cidade "Rio de Janeiro"
            E o CEP " "
            E o telefone "9875325483"
            E o e-mail "paulo.s@ebacshopcom.br"
            Então deve exibir uma mensagem de alerta "Campo CEP não preenchido!"

            Cenário: Cadastro o com cidade em branco
            Quando eu digitar nos campos sinalizados com asterico o nome "Paulo Sergio"
            E o sobrenome "Alves"
            E o país "Brasil"
            E o endereço "Avenida das Amélias"
            E a cidade " "
            E o CEP "02868689"
            E o telefone "9875325483"
            E o e-mail "paulo.s@ebacshopcom.br"
            Então deve exibir uma mensagem de alerta "Campo cidade não preenchido!"

            Cenário: Cadastro o com endereço em branco
            Quando eu digitar nos campos sinalizados com asterico o nome "Paulo Sergio"
            E o sobrenome "Alves"
            E o país "Brasil"
            E o endereço " "
            E a cidade "Rio de Janeiro"
            E o CEP "02868689"
            E o telefone "9875325483"
            E o e-mail "paulo.s@ebacshopcom.br"
            Então deve exibir uma mensagem de alerta "Campo endereço não preenchido!"

            Cenário: Cadastro o com país em branco
            Quando eu digitar nos campos sinalizados com asterico o nome "Paulo Sergio"
            E o sobrenome "Alves"
            E o país " "
            E o endereço "Avenida das Amélias"
            E a cidade "Rio de Janeiro"
            E o CEP "02868689"
            E o telefone "9875325483"
            E o e-mail "paulo.s@ebacshopcom.br"
            Então deve exibir uma mensagem de alerta "Campo país não preenchido!"

            Cenário: Cadastro o com sobrenome em branco
            Quando eu digitar nos campos sinalizados com asterico o nome "Paulo Sergio"
            E o sobrenome " "
            E o país "Brasil "
            E o endereço "Avenida das Amélias"
            E a cidade "Rio de Janeiro"
            E o CEP "02868689"
            E o telefone "9875325483"
            E o e-mail "paulo.s@ebacshopcom.br"
            Então deve exibir uma mensagem de alerta "Campo sobrenome não preenchido!"

            Cenário: Cadastro o com nome em branco
            Quando eu digitar nos campos sinalizados com asterico o nome " "
            E o sobrenome "Alves"
            E o país "Brasil "
            E o endereço "Avenida das Amélias"
            E a cidade "Rio de Janeiro"
            E o CEP "02868689"
            E o telefone "9875325483"
            E o e-mail "paulo.s@ebacshopcom.br"
            Então deve exibir uma mensagem de alerta "Campo nome não preenchido!"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <nome>
            E o <sobrenome> <sobrenome> <pais> <endereco> <cidade> <cep> <telefone> <email>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | nome              | sobrenome       | país       | endereço               | cidade           | CEP        | telefone     | email                    | mensagem
            | "Paulo Sergio"    | "Alves"         | "Brasil"   | "Avenidas das Amélias" | "Rio de Janeiro" | "02868689" | "9875325483" | "paulo.s@ebacshopcom.br" |"Seu cadastro foi realizado com sucesso!"|
            | "Paulo Sergio"    |                 | "Brasil"   | "Avenidas das Amélias" | "Rio de Janeiro" | "02868689" | "9875325483" | "paulo.s@ebacshopcom.br" |"Campo sobrenome não preenchido!"        |
            | "Paulo Sergio"    | "Alves"         |            | "Avenidas das Amélias" | "Rio de Janeiro" | "02868689" | "9875325483" | "paulo.s@ebacshopcom.br" |"Campo país não preenchido!"             |
            | "Paulo Sergio"    | "Alves"         | "Brasil"   |                        | "Rio de Janeiro" | "02868689" | "9875325483" | "paulo.s@ebacshopcom.br" |"Campo endereço não preenchido!"         |
            | "Paulo Sergio"    | "Alves"         | "Brasil"   | "Avenidas das Amélias" |                  | "02868689" | "9875325483" | "paulo.s@ebacshopcom.br" |"Campo cidade não preenchido!"           |
            | "Paulo Sergio"    | "Alves"         | "Brasil"   | "Avenidas das Amélias" | "Rio de Janeiro" |            | "9875325483" | "paulo.s@ebacshopcom.br" |"Campo CEP não preenchido!"              |
            | "Paulo Sergio"    | "Alves"         | "Brasil"   | "Avenidas das Amélias" | "Rio de Janeiro" | "02868689" |              | "paulo.s@ebacshopcom.br" |"Campo telefone não preenchido!"         | 
            | "Paulo Sergio"    | "Alves"         | "Brasil"   | "Avenidas das Amélias" | "Rio de Janeiro" | "02868689" | "9875325483" |                          |"Campo email não preenchido!"            | 

        
            