#encoding: UTF-8
#language: pt

@cadastrousuario
@regressao
Funcionalidade: Cadastro de usuário
 Como um futuro cliente da aplicação
 Quero fazer o cadastro do meu usuário
 Para ter acesso à tela principal e suas funcionalidades

Contexto:
 Dado que estou na tela de cadastro

@testepositivo
Cenário: Formulário Válido
 Quando preencho os campos usuário, nome, data de nascimento, senha e confirmação de senha corretamente
 E clico no botão "Cadastrar"
 Então a mensagem "Tem certeza que deseja criar um usuário?" é exibida 
 E a opção "Cadastrar" é exibida
 E a opção "Cancelar" é exibida

@testepositivo
Cenário: Cadastro Realizado
 Quando preencho os campos usuário, nome, data de nascimento, senha e confirmação de senha corretamente
 E clico no botão "Cadastrar"
 Então a mensagem "Tem certeza que deseja criar um usuário?" é exibida 
 E a opção "Cadastrar" é exibida
 E a opção "Cancelar" é exibida
 Quando clico na opção "Cadastrar" 
 Então sou direcionado para a tela de login
 E o meu novo usuário esta preenchido no campo usuário
 E a mensagem "Cadastro feito com sucesso!" é exibida

@testepositivo
Cenário: Cadastro Cancelado
 Quando preencho os campos usuário, nome, data de nascimento, senha e confirmação de senha corretamente
 E clico no botão "Cadastrar"
 Então a mensagem "Tem certeza que deseja criar um usuário?" é exibida 
 E a opção "Cadastrar" é exibida
 E a opção "Cancelar" é exibida
 Quando clico na opção "Cancelar" 
 Então a mensagem de confirmação é fechada
 E o formulario é exibido novamente

@testenegativo
Esquema do Cenário: Formulário Inválido
 Quando <erro>
 E clico no botão "Cadastrar"
 Então a mensagem "<mensagem>" é exibida

Exemplos:
 | erro                                                     | mensagem                                                                                                                                 |
 | deixo um dos campos do formulário vazio                  | Todos os campos são obrigatórios                                                                                                         |
 | entro um usuário com menos de 5 caracteres               | Usuário inválido! Utilize um usuário com pelo menos 5 caracteres.                                                                        |
 | entro uma confirmação de senha diferente da senha        | Senha e confirmação de senha precisam ser iguais!                                                                                        |
 | entro senha que não se enquadra nas regras de segurança  | Senha inválida! Utilize uma senha de 8 caracteres, com pelo menos 1 letra minúscula, 1 letra maiúscula, 1 número e 1 caractere especial. |
 | entro uma data de nascimento que mostra menos de 18 anos | É necessário ser maior de idade para criar uma conta!                                                                                    |
