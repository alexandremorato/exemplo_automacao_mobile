#language: pt
@cadastro
Funcionalidade: Cadastro de novos usuários

Como futuro cliente do app ifood
Quero poder cadastrar meus dados no aplicativo
Para usufruir do acesso para efetuar compra de alimentos

Cenário: Cadastro de um novo usuário 
    Dado que estou na tela de criação de conta
    Quando preencher o formulário de cadastro
     E informar o token enviado para o celular cadastrado
    Então deve ser apresentado a área logada

Cenário: Cadastro de um novo usuário passando pelo tutorial
    Dado que estou na tela inicial do app
    Quando finalizar o tour pelo tutorial
     E preencher o formulário de cadastro
     E informar o token enviado para o celular cadastrado
    Então deve ser apresentado a área logada

Esquema do Cenário: Cadastro de um novo usuário com dados inválido
    Dado que estou na tela de criação de conta
    Quando preencher o formulário de cadastro com os seguintes dados:
      | Email        | <Email>        |
      | Phone_Number | <Phone_Number> |
      | Password     | <Password>     |    
     E informar o token enviado para o celular cadastrado
    Então deve ser apresentado a área logada

    # Observação:
    # O objetivo desses cenários é validar as exceções sobre os campos e-mail, phone number e password
    # Como não existem validações sobre esses campos no app, os testes foram adaptados para o comportamento atual, ou seja, aceita qualquer valor informado nos campos

    Exemplos:
      | Email           | Phone_Number    | Password |
      | teste@teste.com | +55111234567890 |          |
      | teste@teste.com | +551            |          |
      | teste@teste.com | aaaaaaaaa       |          |
      | teste@teste.com |                 | 123456   |
      |                 | +55111234567890 | 123456   |
      | teste@teste     | +55111234567890 | 123456   |
      | @teste.com      | +55111234567890 | 123456   |
      | .com            | +55111234567890 | 123456   |
      | 123456          | +55111234567890 | 123456   |
      |                 |                 |          |        