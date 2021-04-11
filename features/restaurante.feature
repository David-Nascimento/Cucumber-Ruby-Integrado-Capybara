#language: pt

Funcionalidade: Restaurantes
Para que eu possa saber quais os restaurantes disponiveis com o tempo
Sendo um usuario que deseja pedir comida
Posso acessar a lista de Restaurantes

    Cenario: Restaurantes disponiveis
    Dado que temos os seguintes restaurantes
    | nome           | categoria  | entrega    | avaliacao |
    | Bread & Bakery | Padaria    | 25 minutos | 4.9       |
    | Burger House   | Hamburgers | 30 minutos | 3.5       |
    | Coffee Corner  | Cafeteria  | 20 minutos | 4.8       |
    | Green Food     | Saudável   | 40 minutos | 4.1       |
    | Ice Cream      | Sorvetes   | 1 hora     | 0         |
    | Tasty Treats   | Doces      | 20 minutos | 4.4       |
    Quando acesso a lista de Restaurantes
    Entao deve ver todos os restaurantes

@temp
Esquema do Cenario: Restaurantes disponiveis
    Quando acesso a lista de restaurantes
    Entao cada restaurante deve ter <id> <nome> <categoria> <entrega> <alaviacao>

    Exemplos:
    |id | nome             | categoria    | entrega      | alaviacao |
    |0  | "Bread & Bakery" | "Padaria"    | "25 minutos" | 4.9       |
    |1  | "Burger House"   | "Hamburgers" | "30 minutos" | 3.5       |
    |2  | "Coffee Corner"  | "Cafeteria"  | "20 minutos" | 4.8       |