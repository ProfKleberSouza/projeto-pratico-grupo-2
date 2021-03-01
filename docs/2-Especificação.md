# Especificações Do Projeto

<span style="color:red">Pré-requisitos: <a href="1-Contexto.md"> Documentação de Contexto</a></span>
> Linguagem: Flutter e Dart.
>
> Software: Android Studio.
> 
> Emulador: Android Vitual Device Manager (AVD).
> 
> Administração do projeto: Github.

## Personas

Felipe é um jovem de 25 anos, empreendedor, que sempre teve o sonho de abrir 
uma barebearia e desde pequeno se interessa por cortes de cabelo. Sonha em 
ter uma barebaria muldialmente conhecida e ser bastente famoso por seu 
trabalho nas redes sociais. Atualmente, é dono de uma rede de barbearias 
com duas unidades e um total de seis funcionários. Entretando ele sofre 
com a dificuldade de atingir públicos mais distantes das unidades e de 
ter um controle da sua agenda e de seus funcionários, com isso ele busca 
uma forma de aumentar a clientela e permitir que seus funcionários façam 
um controle automatizado das suas proprias agendas.

João é uma homem adulto, que se preocupa muito com sua vaidade, gosta de 
manter seu corte de cabelo sempre em dia, utiliza dos melhores produtos de 
beleza e vestuáerio, não medindo gastos para tais serviços. Além disso, 
utiliza bastante apps de compra online e atualmente, e com a moedrnização 
dos estabelecimentos, faz a maioria de suas marcações online, desde médicos 
ate seus queridos serviços estéticos, sem precisar fazer ligações ou ir até 
os lugares. João em média, gasta 200 reais por mês com estética, tirando 
outros serviços que realiza sem muita frequência.

Cleiton é um jovem de 18 anos, recém forma no ensino médio, e durante 
sua adolecência participou de vários cursos de corte de cabelo e barbearia 
em geral, se apaixoando pela área. Ao completar sua maioridade, viu a 
oportunidade de focar no que queria, e começou a trabalhar na babearia de 
seu amigo. No começo, a barbearia era pequena e não havia controle, nem 
agenda de marcação, e sim por ordem de chegada, o que acabava por prejudicar 
Cleiton que não conseguia fidelizar nenhum cliente. Cleiton também não tinha 
controle de pausas ou hora de ir embora, prejudicando em muito o seu bem estar.

## Histórias de Usuários

Com base na análise das personas forma identificadas as seguintes histórias de usuários:

|EU COMO... `PERSONA`        | QUERO/PRECISO ... `FUNCIONALIDADE` |PARA ... `MOTIVO/VALOR`                     |
|----------------------------|------------------------------------|--------------------------------------------|
|Cliente                     | Agendar um serviço estético        | Cuidar da aparência                        |
|Funcionário da barbearia    | Controlar agenda de atendimentos   | Atender os clientes de maneira organizada  |
|Dono da barbearia           | Atingir mais clientes              | Melhorar o faturamento e ser reconhecido   |
|Dono da barbearia           | Fidelizar clientes                 | Melhorar o faturamento                     |

## Requisitos

As tabelas que se seguem apresentam os requisitos funcionais e não funcionais que detalham o escopo do projeto.

### Requisitos Funcionais

|ID    | Descrição do Requisito  | Prioridade |
|------|-----------------------------------------|----|
|RF-001| Permitir que o usuário selecione o local de atendimento | MÉDIO |
|RF-002| Permitir que o usuário selecione o(s) serviço(s) | MÉDIO |
|RF-003| Permitir que o usuário selecione o(s) profissional(is) | MÉDIO |
|RF-004| Permitir que o usuário selecione data e hora do atendimento | ALTO |
|RF-005| Permitir que o usuário reagende o atendimento marcado | ALTO |
|RF-006| Permitir que o usuário selecione o método de pagamento | MÉDIO |
|RF-007| Permitir que o usuário consulta o seu histórico | BAIXO |
|RF-008| Permitir que o profissional consulte a própria agenda | ALTO |
|RF-009| Permitir que o profissional consulte o seu histórico de atendimentos | BAIXO |
|RF-010| Permitir que o profissional reagende o atendimento marcado | ALTO |

### Requisitos não Funcionais

|ID     | Descrição do Requisito  |Prioridade |
|-------|-------------------------|----|
|RNF-001| O sistema deve ser responsivo para rodar em um dispositivos móvel | MÉDIA | 
|RNF-002| Deve processar requisições do usuário em no máximo 5s |  BAIXA | 
|RNF-003| O sistema deverá ter uma taxa de disponibilidade acima de 99% |  ALTA | 
|RNF-004| O sistema deverá atender a LGPD |  ALTA | 

## Restrições

O projeto está restrito pelos itens apresentados na tabela a seguir.

|ID| Restrição                                                    |
|--|--------------------------------------------------------------|
|01| O projeto deverá ser entregue até o final do semestre        |
|02| Não pode ser desenvolvido um módulo de backend               |
|03| O projeto será desenvolvido apenas para plataforma Android   |
|04| A fim de testes, o sistema irá simular uma API de pagamentos |
