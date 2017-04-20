#language: pt
#utf-8

Funcionalidade: Cadastro
	Eu como usuario
	Quero realizar o cadastro 


	Cenario: Cadastrar Usuario
		Dado que eu acesse o site demoqa.com
		E clique no botão Registration
		E preencha todos os campos obrigatorios
		Quando clicar no botão Submit
		Então o cadastro deve ser realizado com sucesso

		