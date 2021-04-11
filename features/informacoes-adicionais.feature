#language:pt

Funcionalidade: Informacoes Adicionais
Para que eu possa ver as informacoes Adicionais
Sendo um usuario que escolheu umr estaurante
Posso ver a categoria, descricao detalhada e horario de funcionamento

    @infos
    Cenario: Detalhes do restaurante
        Dado que eu acesso o sistema
        Quando eu escolho o restaurante "Burger House"
        Entao eu vejo as seguintes informacoes Adicionais
        | categoria | Hamburgers                               |
        | descricao | 40 anos se especializando em trash food. |
        | horarios  | Funciona todos os dias, de 10h às 22h    |