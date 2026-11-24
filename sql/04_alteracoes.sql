UPDATE Contato
SET IdPessoa = 'PES4'
WHERE IdPessoa = 'PES3';

DELETE FROM Ministra_Turma
WHERE IdPessoa = 'PES16';

UPDATE Escola
SET IdPessoa = 'PES31'
WHERE IdPessoa = 'PES16';

DELETE FROM Ministra
WHERE IdPessoa = 'PES16';

DELETE FROM Professor
WHERE IdPessoa = 'PES16';

DELETE FROM Pessoa
WHERE IdPessoa = 'PES16';

INSERT INTO Ministra (IdPessoa, IdDisciplina)
SELECT 'PES31', IdDisciplina
FROM Ministra
WHERE IdPessoa = 'PES7'
AND IdDisciplina NOT IN (
    SELECT IdDisciplina FROM Ministra WHERE IdPessoa = 'PES31'
);

UPDATE Ministra_Turma
SET IdPessoa = 'PES31'
WHERE IdPessoa = 'PES7';
