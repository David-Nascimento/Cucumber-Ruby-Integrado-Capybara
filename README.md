#Vamos Criar um projeto do ZERO
>você foi contratado para trabalhar no Projeto Enjoeat, um projeto de Desenvolvimento ágil. E vamos trabalhar juntos para desenvolver um WebApp parecido com o iFood.

Vamos comecar criando um novo diretorio e um projeto Ruby vazio.
```
mkdir enjoat

cd enjoat
```

### Crie um Gemfile com o seguinte conteudo:
```
source "https://rubygems.org"

group :teste do
    gem 'capybara', '3.14'
    gem 'cucumber', '3.1.2'
    gem 'rspec', '3.7.0'
    gem 'selenium-webdriver', '3.141'
end
```     
### Instale todas as dependencias e crie um projeto Cucumber:
```
bundle install

cucumber --init
```
### Dentro da pasta features, crie um arquivo chamado
Restaurantes.feaute e dentro de, escreva a seguinte especificacao:
```
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

### Como ficou?
    A linha três deste arquivo começa com a plavra-chave Funcionalidade: segyuda pelo nome Restaurantes. É uma boa prática usar o nome semelhante ao nome do arquivo.

    A segunda linha é uma breve descrição do recurso, em nosso caso a estória do usuário. o Cucumber não executa essa linha, pois é apenas a documentação.

    Na sequencia temos os cenários, que são exemplos concretos que ilustram como a aplicação deverá se comportar.

    Por fim temos os steps Quando e Então que são os passos do nosso cenário.
    Isto é o que Cucumber irá executar.
  
    Quando fazemos o Desenvolvimento Orientado por Comportamento com o Cucumber, usamos exemplos concretos para especificar o que queremos que o software faça. Os cenários são gravados antes do código de procução. Eles começam sua vida como uma especificação executavél. À medida que o código de produção surge, os cenários assumem um papel como documentação viva e testes automatizados!
    
Pronto, agora podemos começar a trabalhar com especificações e automação para projeto ágeis.

[Gitflow](https://github.com/David-Nascimento/Cucumber-Ruby-Integrado-Capybara/commits/master)
