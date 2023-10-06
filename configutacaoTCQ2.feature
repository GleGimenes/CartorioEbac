            #language: pt

            Funcionalidade: Tela de cofiguração de tamanhanho, cor e quantidade
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu escolha o produto na EBAC-SHOP

            Cenário: Seleção de tamanho, cor e quantidade
            Quando eu clicar e selecionar entre as opções "cor","tamanho"
            E a quantidade de itens abaixo de "10"
            Então deve exibir a mensagem "Seu produto foi adicionado ao carrinho"

            Cenário: Seleção de quantidade máxima de produtos por vez
            Quando  eu clicar e selecionar entre as opções "cor","tamanho"
            E a quantidade de itens acima de "10"
            Então deve exibir a mensagem "não é permitido adicionar mais de 10 itens por vez ao carrinho"

            Cenário: Falta de seleção de algum item
            Quando eu clicar e não selecionar qualquer uma das opções "cor","tamanho","quantidade" 
            Então deve exibir a mensagem "Você deve selecionar todos os itens obrigatórios"

            Esquema do Cenário: Selecionar tamanho, cor e quantidade
            Quando eu digitar o <tamanho> <cor> <quantidade>
            Então deve exibir a <mensagem> de adição de produto ao carrinho

           


            Exemplos:
            |  seleção                                            |  quantidade    |  mensagem                                                        
            | "eu clicar e selecionar entre as opções"            | "abaixo de 10" | "Seu produto foi adicionado ao carrinho"                         | 
            | "eu clicar e selecionar entre as opções"            | "acima de 10"  | "não é permitido adicionar mais de 10 itens por vez ao carrinho" |
            | "eu clicar e não selecionar qualquer uma das opções | "você deve selecionar todos os itens obrigatórios"                                |