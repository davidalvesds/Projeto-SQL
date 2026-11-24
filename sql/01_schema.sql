CREATE TABLE Cidade (
  IdCidade Char(5) NOT NULL,
  Nome varchar(50) NOT NULL,
  PRIMARY KEY (IdCidade)
);

CREATE TABLE Escola (
  IdEscola Char(5) NOT NULL,
  Nome varchar(50) NOT NULL,
  IdCidade Char(5) NOT NULL,
  IdPessoa Char(5) NOT NULL,
  PRIMARY KEY (IdEscola)
);

CREATE TABLE Pessoa (
  IdPessoa Char(5) NOT NULL,
  Tipo varchar(9) NOT NULL,
  Nome varchar(50) NOT NULL,
  Telefone Char(11) NOT NULL,
  IdCidade Char(5) NOT NULL,
  PRIMARY KEY (IdPessoa)
);

CREATE TABLE Professor (
  IdPessoa Char(5) NOT NULL,
  RG Char(9) NOT NULL,
  CPF Char(11) NOT NULL,
  Titulacao varchar(12) NOT NULL,
  PRIMARY KEY (IdPessoa)
);

CREATE TABLE Aluno (
  IdPessoa Char(5) NOT NULL,
  Matricula Char(6) NOT NULL,
  Data_Nascimento Char(10) NOT NULL,
  IdTurma Char(5) NOT NULL,
  PRIMARY KEY (IdPessoa)
);
CREATE TABLE Contato (
  Nome varchar(50) NOT NULL,
  IdPessoa Char(5) NOT NULL,
  Telefone Char(11) NOT NULL,
  PRIMARY KEY (Nome, IdPessoa)
);

CREATE TABLE Turma (
  IdTurma Char(5) NOT NULL,
  Nome varchar(50) NOT NULL,
  IdEscola Char(5) NOT NULL,
  PRIMARY KEY (IdTurma)
);

CREATE TABLE Disciplina (
  IdDisciplina Char(5) NOT NULL,
  Nome varchar(50) NOT NULL,
  PRIMARY KEY (IdDisciplina)
);

CREATE TABLE Ministra (
  IdPessoa Char(5) NOT NULL,
  IdDisciplina Char(5) NOT NULL,
  PRIMARY KEY (IdPessoa, IdDisciplina)
);

CREATE TABLE Ministra_Turma (
  IdPessoa Char(5) NOT NULL,
  IdDisciplina Char(5) NOT NULL,
  IdTurma Char(5) NOT NULL,
  PRIMARY KEY (IdPessoa, IdDisciplina, IdTurma)
);

ALTER TABLE Escola
 ADD FOREIGN KEY (IdCidade) REFERENCES Cidade (IdCidade),
 ADD FOREIGN KEY (IdPessoa) REFERENCES Professor (IdPessoa);

ALTER TABLE Pessoa
 ADD FOREIGN KEY (IdCidade) REFERENCES Cidade (IdCidade);

ALTER TABLE Professor
ADD FOREIGN KEY (IdPessoa) REFERENCES Pessoa(IdPessoa);

ALTER TABLE Aluno
ADD FOREIGN KEY (IdPessoa) REFERENCES Pessoa(IdPessoa),
ADD FOREIGN KEY (IdTurma) REFERENCES Turma(IdTurma);
ALTER TABLE Contato
ADD FOREIGN KEY (IdPessoa) REFERENCES Aluno(IdPessoa);

ALTER TABLE Turma
ADD FOREIGN KEY (IdEscola) REFERENCES Escola(IdEscola);

ALTER TABLE Ministra
ADD FOREIGN KEY (IdPessoa) REFERENCES Professor(IdPessoa),
ADD FOREIGN KEY (IdDisciplina) REFERENCES Disciplina(IdDisciplina);

ALTER TABLE Ministra_Turma
ADD FOREIGN KEY (IdPessoa, IdDisciplina) REFERENCES Ministra(IdPessoa, IdDisciplina),
ADD FOREIGN KEY (IdTurma) REFERENCES Turma(IdTurma);
