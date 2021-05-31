# Avaliação da Aplicação

Os testes a serem realizados são nas funcionalidades das seguintes telas/funções:
- Login;
- Tela Serviço;
- Seleção Unidade;
- Seleção Serviços;
- Seleção Barbeiro;
- Seleção Data/Hora;
- Tela de Confirmação do pedido;
- Tela Confirmado, com disparo do invite.

## Plano de Testes

Os testes escolhidos para serem aplicados no APP Barbearia são:
- o teste de usabilidade – nesse teste é feito por um pequeno grupo de usuários para ver se o software satisfaz as suas necessidades.  Nesse teste analisa-se como o usuário usa o sistema, verificando onde ele tem mais dificuldade. Ouve-se também suas impressões, porém é preciso confrontá-las com as observações do avaliador. No caso do projeto, os usuários que realizam teste são o PO e os Devs a medida que o app foi sendo desenvolvido e entregue;
- Teste de regressão – esse consiste em realizar testes a cada versão de um software, onde se modificam-se funcionalidades. Desse modo, evita-se que erros que foram corrigidos antes no software antes voltem a aparecer na hora de se incrementar algo novo a ele. Então toda nova submissão, todo o app é testado, muito por conta do tamanho do projeto;
- Teste de integração: Firebase para armazenamento e recuperação de informações, e Google Calendar para disparo de invites.

Estudo do Projeto:
Desenvolvimento da aplicação, vislumbrando:
- desenvolvimento das telas;
- configuração do projeto para usar o Firebase;
- integração com o Google Calendar.

Avaliação de impacto:
- Não há, visto que não existe publicação em produção.

Avaliação de esforço:
Através da entrega em sprints, foi levantado o esforço para primeira entrega (sprint 2):
- Login - 4 horas
- Tela Serviço - 8 horas
- Seleção Unidade - 4 horas
- Seleção Serviços - 3 horas
- Seleção Barbeiro - 3 horas
- Seleção Data/Hora - 5 horas
- Tela de Confirmação do pedido - 4 horas
- Tela Confirmado, com disparo do invite - 3 horas 
- Teste por tela - 1 hora x 8 = 8 horas
Total: 42 horas para sprint 2.

Aprovação do Planejamento:
- Integrantes, entre eles devs e PO.

Definição de responsabilidade:
- Devs: Desenvolvimento da aplicação, colaboração e testes;
- PO: Scrum master, gestor do projeto e colaboração.

Dinâmica das Macro-Atividades:
- Definição de projeto >> Definição de Requisitos >> Desenvolvimento >> Testes

## Avaliação

> Discorra sobre os resultados do teste. Ressaltando pontos fortes e
> fracos identificados na solução. Comente como o grupo pretende atacar
> esses pontos nas próximas iterações. Apresente as falhas detectadas e
> as melhorias geradas a partir dos resultados obtidos nos testes.

Teste do Software

1- Tela de apresentação:
a) Sem testes a serem realizados, uma vez que trata-se apenas de animação.

2- Tela de login: 
a) Sem problemas no preenchimento de usuário e senha;
b) Usuário e senha não reconhecidos geram crítica corretamente;
c) Login correto direciona à tela de Serviços;
d) Recuperar senha exige que o campo de email esteja preenchido, gerando uma mensagem na parte de baixo da tela requisitando o devido preenchimento;
e) Ao clicar no botão Criar Conta direciona corretamente para a tela de Cadastro.

3- Tela de Cadastro:
a) 
