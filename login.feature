#encoding: UTF-8
#language: pt

@login
@regressao
Funcionalidade: Login
 Como um usuário da aplicação
 Quero fazer o login
 Para ter acesso à tela principal e suas funcionalidades

Contexto:
 Dado que tenho uma conta no sistema
 E estou na tela de login

@testepositivo
Cenário: Login com sucesso 
 Quando digito meu usuário corretamente
 E digito minha senha corretamente
 E clico no botão "Entrar"
 Então sou direcionado para a tela principal 

@testenegativo
Esquema do Cenário: Erros de senha
 Quando digito meu usuário corretamente
 E digito minha senha <erro>
 E clico no botão "Entrar"
 Então a mensagem "<mensagem>" é exibida

Exemplos:
 | erro      | mensagem                                                 |
 | incorreta | Usuário ou senha incorretos                              |
 | expirada  | Sua senha expirou, entre em contato com um administrador |