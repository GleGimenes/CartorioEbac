            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro   
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse o campo de novo cadastro na EBAC SHOP

            Cenário: Cadastrar novo usuário
            Quando eu preencher todos os campos sinalizados como obrigatórios "nome","sobrenome","país","endereço","cidade","CEP","telefone","email"
            Então deve exibir uma mensagem de confirmação "Seu cadastro foi realizado com sucesso!"

            Cenário: Campo obrigatório não preenchido
            Quando eu deixar de preencher qualquer um dos campos obrigatórios "nome","sobrenome","país","endereço","cidade","CEP","telefone","email"
            Então Então deve exibir uma mensagem de erro "Você deve preencher todos os campos obrigatórios"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar os campos obrigatórios <nome> <sobrenome> <pais> <endereco> <cidade> <cep> <telefone> <email>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | Cadastro                                                  | mensagem
            | "preencher todos os campos sinalizados como obrigatórios" |"Seu cadastro foi realizado com sucesso!"         |
            | "deixar de preencher qualquer um dos campos obrigatórios" |"Você deve preencher todos os campos obrigatórios"|
            