            #language: pt

            Funcionalidade: Tela de cofiguração de tamanhanho, cor e quantidade
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu escolha o produto na EBAC-SHOP

            Cenário: Seleção de tamanho, cor e quantidade
            Quando eu clicar na cor disponível "vermelho" 
            E no tamanho disponível "P"
            E na quantidade "1"
            Então deve exibir a mensagem "Seu produto foi adicionado ao carrinho"

            Cenário: Seleção de quantidade máxima de produtos por vez
            Quando eu clicar na cor disponível "laranja"
            E no tamanho disponível "PP"
            E na quantidade "15"
            Então deve exibir a mensagem "não é permitido adicionar mais de 10 itens por vez ao carrinho"

            Cenário: Seleção de tamanho indisponível
            Quando eu clicar na cor disponível "pink" 
            E no tamanho indisponível "G"
            E na quantidade "3"
            Então deve exibir a mensagem "Este tamanho não está indisponível"

            Cenário: Seleção de cor indisponível
            Quando eu clicar na cor indisponível "azul" 
            E no tamanho disponível "GG"
            E na quantidade "7"
            Então deve exibir a mensagem "Esta cor não está indisponível"

            Esquema do Cenário: Selecionar tamanho e cor
            Quando eu digitar o <tamanho> <cor> <quantidade>
            Então deve exibir a <mensagem> de adição de produto ao carrinho

           


            Exemplos:
            | tamanhanho         | cor         | mensagem                                                        |quantidade|
            | "P"                | "vermelho"  | "Seu produto foi adicionado ao carrinho"                        | "1"      |
            | "GG"               | "azul"      | "Esta cor está indisponível"                                    |          |
            | "G"                | "Pink"      | "Este tamanho está indisponível"                                |          |
            | "PP"               | "laranja"   | "não é permitido adicionar mais de 10 itens por vez ao carrinho"|          |