# Banco de Dados Escolar em SQL

Esse projeto nasceu de um trabalho da disciplina de Banco de Dados I. A proposta era pegar um modelo conceitual de um sistema escolar e transformar isso num banco de dados de verdade: criar as tabelas, popular com dados, responder a uma série de perguntas com consultas SQL e fazer algumas alterações respeitando a integridade dos dados.

## A ideia por trás do modelo

O sistema guarda cidades, escolas, turmas, disciplinas e pessoas. Como professores e alunos têm muita coisa em comum (nome, telefone, cidade), eles ficam numa tabela `Pessoa`, e as tabelas `Professor` e `Aluno` herdam dela, cada uma com seus dados específicos. Cada escola tem um professor como diretor, cada aluno pertence a uma turma e pode ter contatos cadastrados, e os professores são ligados às disciplinas que sabem dar e às turmas onde realmente dão aula.

Uma decisão que facilitou bastante foi criar primeiro todas as tabelas só com as chaves primárias e, depois, adicionar as chaves estrangeiras com `ALTER TABLE`. Assim não é preciso se preocupar com a ordem de criação.

```
Cidade (IdCidade, Nome)
Escola (IdEscola, Nome, IdCidade → Cidade, IdPessoa → Professor)
Pessoa (IdPessoa, Tipo, Nome, Telefone, IdCidade → Cidade)
Professor (IdPessoa → Pessoa, RG, CPF, Titulacao)
Aluno (IdPessoa → Pessoa, Matricula, Data_Nascimento, IdTurma → Turma)
Contato (Nome, IdPessoa → Aluno, Telefone)
Turma (IdTurma, Nome, IdEscola → Escola)
Disciplina (IdDisciplina, Nome)
Ministra (IdPessoa → Professor, IdDisciplina → Disciplina)
Ministra_Turma ((IdPessoa, IdDisciplina) → Ministra, IdTurma → Turma)
```

## O que tem aqui

Os scripts estão na pasta `sql/` e foram pensados para rodar em sequência:

- `01_schema.sql` cria as tabelas e os relacionamentos.
- `02_dados.sql` popula tudo com dados fictícios, em quantidade suficiente para nenhuma consulta voltar vazia.
- `03_consultas.sql` responde dez perguntas, como quais escolas têm todos os alunos morando na mesma cidade, quais alunos não têm nenhum contato, quais turmas têm mais de cinco alunos e qual a proporção de alunos por professor em cada escola.
- `04_alteracoes.sql` simula situações do dia a dia: passar os contatos de um aluno para outro, remover um professor (trocando o diretor, se for o caso) e substituir um professor que entrou de licença, garantindo que o substituto fique habilitado nas disciplinas dele.

## Como rodar

Com o PostgreSQL instalado:

```bash
createdb escola
psql -d escola -f sql/01_schema.sql -f sql/02_dados.sql -f sql/03_consultas.sql -f sql/04_alteracoes.sql
```

Os scripts também funcionam no MySQL.
