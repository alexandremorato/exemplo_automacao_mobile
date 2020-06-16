# Automação Mobile - Android 

Esse projeto foi desenvolvido para rodar com Ruby, Appium e Cucumber.

### Pré-requisitos

- Gerenciador de versões Ruby `v2.5.1`
- Bundler instalado `gem install bundler`
- Appium
- Emulador com sistema operacional Android 

#### Dica
Tutorial para ajudar na instalação do Appium e Emulador
 - [Appium/Emulador](https://robotizandotestes.blogspot.com/2020/05/season-mobile-com-appium-ep02.html)

Tutorial para ajudar a instalação do RVM(Gerenciador de versões)
- [RVM](https://rvm.io/rvm/install)

Após concluir a instalação dos pré-requisitos, dentro do diretório do projeto de automação mobile, rodar o comando para instalação das dependências.

```
bundle install
```
### Para rodar os testes

Com Emulador/Device e o Appium em execução

- Execução utilizando tags (@cadastro)
    ```
    Ex.: cucumber -t @cadastro
    ```

- Foram criados alguns profiles para facilitar a execução dos testes e geração de relatórios, podem ser conferidos no arquivo `cucumber.yml` 
    ```
    Ex.: cucumber -p cadastro
    ```
    