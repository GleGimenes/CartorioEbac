            #language: pt

            Funcionalidade: Tela login de autenticação
            Como cliente da EBAC-SHOP
            Quero fazer o login de autenticação na plataforma  
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de Login para autenticação da EBAC SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "jorge@ebac.com.br"
            E a senha "senha@1111"
            Então deve direcionar para a tela de checkout

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "jucajorge@ebac.com.br"
            E a senha "senha@1111"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "jorge@ebac.com.br"
            E a senha "senh16541111"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuário                | senha              |mensagem
            | "jorge@ebac.com.br"    | "senha@1111"       |
            | "juca@ebac.com"        | "setar@123"        |"Usuário ou senha inválidos"
            | "Pauloo@ebac.org"      | "paulo@123"        |"Usuário ou senha inválidos"
            | "Wilson.e@ebac.com.br" | "senha@1115448631" |"Usuário ou senha inválidos"
            | "Romulo_lucas@ebac.com"| "setar@123"        |"Usuário ou senha inválidos"
            | "Pauloo@eback.com"     | "paulo@123"        |"Usuário ou senha inválidos"