# Especificações Do Projeto

<span style="color:red">Pré-requisitos: <a href="1-Contexto.md"> Documentação de Contexto</a></span>
> Linguagem: Flutter e Dart.
> Software: Android Studio. 
> Emulador: Android Vitual Device Manager (AVD).
> Administração do projeto: Github

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

Pedro Paulo tem 26 anos, é arquiteto recém-formado e autônomo. Pensa em
se desenvolver profissionalmente através de um mestrado fora do país,
pois adora viajar, é solteiro e sempre quis fazer um intercâmbio. Está
buscando uma agência que o ajude a encontrar universidades na Europa
que aceitem alunos estrangeiros.


## Histórias de Usuários

Com base na análise das personas forma identificadas as seguintes histórias de usuários:

|EU COMO... `PERSONA`       | QUERO/PRECISO ... `FUNCIONALIDADE` |PARA ... `MOTIVO/VALOR`                     |
|---------------------------|------------------------------------|--------------------------------------------|
|Cliente                    | Agendar um serviço estético        | Cuidar da aparência                        |
|Funcionário da babearia    | Controlar agenda de atendimentos   | Atender os clientes de maneira organizada  |
|Dono da babearia           | Atingir mais clientes              | Melhorar meu faturamento e ser reconhecido |
|Dono da babearia           | Fidelizar clientes                 | Melhorar meu faturamento                   |

## Requisitos

As tabelas que se seguem apresentam os requisitos funcionais e não funcionais que detalham o escopo do projeto.

### Requisitos Funcionais

|ID    | Descrição do Requisito  | Prioridade |
|------|-----------------------------------------|----|
|RF-001| Permitir que o usuário cadastre tarefas | ALTA | 
|RF-002| Emitir um relatório de tarefas no mês   | MÉDIA |


### Requisitos não Funcionais

|ID     | Descrição do Requisito  |Prioridade |
|-------|-------------------------|----|
|RNF-001| O sistema deve ser responsivo para rodar em um dispositivos móvel | MÉDIA | 
|RNF-002| Deve processar requisições do usuário em no máximo 3s |  BAIXA | 

> Com base nas Histórias de Usuário, enumere os requisitos da sua
> solução. Classifique esses requisitos em dois grupos:
>
> - [Requisitos Funcionais
>   (RF)](https://pt.wikipedia.org/wiki/Requisito_funcional):
>   correspondem a uma funcionalidade que deve estar presente na
>   plataforma (ex: cadastro de usuário).
>
> - [Requisitos Não Funcionais
>   (RNF)](https://pt.wikipedia.org/wiki/Requisito_n%C3%A3o_funcional):
>   correspondem a uma característica técnica, seja de usabilidade,
>   desempenho, confiabilidade, segurança ou outro (ex: suporte a
>   dispositivos iOS e Android).
>
> Lembre-se que cada requisito deve corresponder à uma e somente uma
> característica alvo da sua solução. Além disso, certifique-se de que
> todos os aspectos capturados nas Histórias de Usuário foram cobertos.

## Restrições

O projeto está restrito pelos itens apresentados na tabela a seguir.

|ID| Restrição                                             |
|--|-------------------------------------------------------|
|01| O projeto deverá ser entregue até o final do semestre |
|02| Não pode ser desenvolvido um módulo de backend        |


> Enumere as restrições à sua solução. Lembre-se de que as restrições
> geralmente limitam a solução candidata.
> 
> **Links Úteis**:
> - [O que são Requisitos Funcionais e Requisitos Não Funcionais?](https://codificar.com.br/requisitos-funcionais-nao-funcionais/)
> - [O que são requisitos funcionais e requisitos não funcionais?](https://analisederequisitos.com.br/requisitos-funcionais-e-requisitos-nao-funcionais-o-que-sao/)
