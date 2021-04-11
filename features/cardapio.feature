#language:pt

Funcionalidade: Cardapio
    Para que eu possa decidir o que pretendo comer
    Sendo um usuario que escolheu um restaurante
    Posso acessar o Cardapio

@cardapio
    Cenario: Produto
        Dado que eu acesso o sistema
        Quando eu escolho o restaurante "Burger House"
        Entao vejo os seguintes items disponiveis no cardapio:
        | produto           | descricao                         | preco     |
        | Classic Burger    | O clássico. Não tem como errar.   | R$ 18,50  |
        | Batatas Fritas    | Batatas fritas crocantes          | R$ 5,50   |
        | Refrigerante      | O refri mais gelado da cidade.    | R$ 4,50   |