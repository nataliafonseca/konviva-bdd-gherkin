#encoding: UTF-8
#language: pt

@esqueciminhasenha
Funcionalidade: Recuperação de Senha
 Como um usuário da aplicação
 Quero recuperar minha senha
 Para ter acesso à tela principal e suas funcionalidades

Contexto:
 Dado que tenho uma conta no sistema
 E estou na tela de recuperação	de senha

@testepositivo
Cenário: Recuperação com sucesso 
 Quando digito meu e-mail no campo
 E clico no botão "Enviar e-mail"
 Então a mensagem "E-mail enviado com sucesso!" é exibida
 E sou direcionado para a tela de login

@testenegativo
Cenário: Erros de senha
 Quando deixo em branco o campo de e-mail
 E clico no botão "Enviar e-mail"
 Então a mensagem "O campo e-mail deve ser preenchido" é exibida
