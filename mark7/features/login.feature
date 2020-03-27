#language: pt

Funcionalidade: Login

	Para que eu possa cadastrar e gerenciar minhas tarefas
	Sendo um Usuário
	Posso acessar o sistema com meu email e senha previamente cadastrados.

	Para fazer login com meu email e senha
	Clicou em ok, é autenticado com sucesso
	Olá, Fulano

	Cenário: Usuário deve ser autorizado

		Dado que eu acesso a página principal
		Quando eu faço login com "eu@papito.io" e "123456"
		Então devo ser autenticado com sucesso
		E devo ver a seguinte mensagem "Olá, Fernando"

	Cenário: Senha errada

		Dado que eu acesso a página principal
		Quando faço login com uma senha errada 
		Então devo ver a mensagem "Senha inválida."

	Cenário: Usuário não existe

		Dado que eu acesso a página principal
		Quando faço login com um usuário que não foi cadastrado
		Então devo ver a mensagem "Usuário não cadatrado."

	Cenário: Email incorreto

		Dado que eu acesso a página principal
		Quando faço login com um email incorreto
		Então devo ver a mensagem "Email incorreto ou ausente"
