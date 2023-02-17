# Projeto Enjoeat
Este é um projeto de desenvolvimento ágil para criar um WebApp semelhante ao iFood. O objetivo é usar o Desenvolvimento Orientado por Comportamento com o Cucumber para especificar e automatizar os testes do software.

Vamos comecar criando um novo diretorio e um projeto Ruby vazio.
```sh
mkdir enjoat

cd enjoat
```

### Em seguida, crie um Gemfile com as seguintes dependências::
```Ruby
source "https://rubygems.org"

group :teste do
    gem 'capybara', '3.14'
    gem 'cucumber', '3.1.2'
    gem 'rspec', '3.7.0'
    gem 'selenium-webdriver', '3.141'
end
```    

### Instale todas as dependências e crie um projeto Cucumber:
```sh
bundle install

cucumber --init
```
### Especificação do Recurso de Restaurantes
Dentro da pasta features, crie um arquivo chamado Restaurantes.feature e adicione a seguinte especificação:
```cucumber
#language:pt
Funcionalidade: Restaurantes
    Para que eu possa saber quais os restaurantes disponiveis com o tempo de entrega e nota de avaliacao
    Sendo um usuario que deseja pedir comida
    Posso acessar a lista de restaurantes

    Cenario: Todos os restaurantes
        Quando acesso a lista de restaurantes
        Entao vejo todas as opcoes disponiveis

    Cenario: Categorias
        Quando acesso a lista de restaurantes
        Entao cada restaurante deve exibir sua categoria

    Cenario: Nota de avaliacao
        Quando acesso a lista de restaurante
        Entao cada restaurante deve exibir sua nota de avaliacao
```

A linha três deste arquivo começa com a palavra-chave Funcionalidade, seguida pelo nome Restaurantes. É uma boa prática usar o nome semelhante ao nome do arquivo.

A segunda linha é uma breve descrição do recurso, em nosso caso a estória do usuário. O Cucumber não executa essa linha, pois é apenas a documentação.

Na sequência temos os cenários, que são exemplos concretos que ilustram como a aplicação deverá se comportar.

Por fim, temos os steps Quando e Então que são os passos do nosso cenário. Isto é o que o Cucumber irá executar.

Quando fazemos o Desenvolvimento Orientado por Comportamento com o Cucumber, usamos exemplos concretos para especificar o que queremos que o software faça. Os cenários são gravados antes do código de produção. Eles começam sua vida como uma especificação executável. À medida que o código de produção surge, os cenários assumem um papel como documentação viva e testes automatizados!

Com as especificações e automação, podemos começar a trabalhar em projetos ágeis de forma mais eficiente.

[Gitflow](https://github.com/David-Nascimento/Cucumber-Ruby-Integrado-Capybara/commits/master)
