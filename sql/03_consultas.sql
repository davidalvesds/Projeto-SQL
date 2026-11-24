SELECT E.Nome AS NomeEscola, C.Nome As NomeCidade
FROM Escola E, Cidade C
WHERE E.IdCidade = C.IdCidade
AND NOT EXISTS (
     SELECT *
     FROM Aluno A, Pessoa P, Turma T
     WHERE A.IdPessoa = P.IdPessoa
     AND A.IdTurma = T.IdTurma
     AND T.IdEscola = E.IdEscola
     AND P.IdCidade <> E.IdCidade
);

SELECT P.Nome AS NomeAluno, A.Matricula
FROM Aluno A
JOIN Pessoa P ON A.IdPessoa = P.IdPessoa
LEFT JOIN Contato C ON A.IdPessoa = C.IdPessoa
WHERE C.IdPessoa IS NULL;

SELECT T.IdTurma, T.Nome
FROM Turma T
JOIN Aluno A ON T.IdTurma = A.IdTurma
GROUP BY T.IdTurma, T.Nome
HAVING COUNT(A.IdPessoa) > 5;

SELECT P.IdPessoa, P.Nome, Pr.Titulacao
FROM Pessoa P
JOIN Professor Pr ON P.IdPessoa = Pr.IdPessoa
JOIN Ministra_turma M ON P.IdPessoa = M.IdPessoa
GROUP BY P.IdPessoa, P.Nome, Pr.Titulacao
HAVING COUNT(DISTINCT M.IdTurma)>=3;

SELECT D.Nome AS Disciplina, COUNT(DISTINCT M.IdPessoa) AS NumProfessores,
COUNT(DISTINCT MT.IdPessoa) AS NumTurmas
FROM Disciplina D
LEFT JOIN Ministra M ON D.IdDisciplina = M.IdDisciplina
LEFT JOIN Ministra_Turma MT ON M.IdPessoa = MT.IdPessoa AND M.IdDisciplina = MT.IdDisciplina
GROUP BY D.Nome;

SELECT E.Nome AS NomeEscola, P.Nome AS NomeDiretor
FROM Escola E
JOIN Pessoa P ON E.IdCidade <> P.IdCidade
WHERE E.IdPessoa = P.IdPessoa;

SELECT E.Nome AS NomeEscola, COUNT(DISTINCT T.IdTurma) AS NumTurmas,
COUNT(DISTINCT M.IdPessoa) AS NumProfessores
FROM Escola E
JOIN Turma T ON E.IdEscola = T.IdEscola
JOIN Ministra_Turma MT ON T.IdTurma = MT.IdTurma
JOIN Ministra M ON MT.IdPessoa = M.IdPessoa
GROUP BY E.Nome;

SELECT E.Nome AS NomeEscola, COUNT(DISTINCT A.IdPessoa) AS NumAlunos,
COUNT(DISTINCT M.IdPessoa) AS NumProfessores, COUNT(DISTINCT A.IdPessoa) /
COUNT(DISTINCT M.IdPessoa) AS RazaoAlunosProfessores
FROM Escola E
JOIN Turma T ON E.IdEscola = T.IdEscola
JOIN Aluno A ON T.IdTurma = A.IdTurma
JOIN Ministra_Turma MT ON T.IdTurma = MT.IdTurma
JOIN Ministra M ON MT.IdPessoa = M.IdPessoa
GROUP BY E.Nome;

SELECT A.Matricula, P.Nome AS NomeAluno, C.Nome AS NomeContato, C.Telefone
FROM Aluno A
JOIN Pessoa P ON A.IdPessoa = P.IdPessoa
LEFT JOIN Contato C ON A.IdPessoa = C.IdPessoa
ORDER BY A.Matricula, C.Nome;

SELECT P.Nome AS NomeProfessor
FROM Pessoa P
JOIN Ministra_Turma MT ON P.IdPessoa = MT.IdPessoa
GROUP BY P.IdPessoa, P.Nome
HAVING COUNT(DISTINCT MT.IdTurma) = 1;
