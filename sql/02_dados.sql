INSERT INTO Cidade (IdCidade, Nome) VALUES
('CID1', 'Rio de Janeiro'),
('CID2', 'Niterói'),
('CID3', 'Magé');

INSERT INTO Pessoa (IdPessoa, Tipo, Nome, Telefone, IdCidade) VALUES
('PES1', 'Professor', 'Professor 01', '1234567890', 'CID1'),
('PES2', 'Aluno', 'Aluno 01', '9876543210', 'CID1'),
('PES3', 'Aluno', 'Aluno 02', '5555555555', 'CID3'),
('PES4', 'Aluno', 'Aluno 03', '1111111111', 'CID1'),
('PES5', 'Professor', 'Professor 02', '2222222222', 'CID1'),
('PES6', 'Aluno', 'Aluno 04', '3333333333', 'CID3'),
('PES7', 'Professor', 'Professor 03', '893214040', 'CID3'),
('PES8', 'Aluno', 'Aluno 05', '973115897', 'CID1'),
('PES9', 'Aluno', 'Aluno 06', '543613238', 'CID1'),
('PES10', 'Aluno', 'Aluno 07', '431314374', 'CID1'),
('PES11', 'Aluno', 'Aluno 08', '356215530', 'CID1'),
('PES12', 'Aluno', 'Aluno 09', '811816600', 'CID1'),
('PES13', 'Aluno', 'Aluno 10', '332118733', 'CID1'),
('PES14', 'Aluno', 'Aluno 11', '432815486', 'CID1'),
('PES15', 'Aluno', 'Aluno 12', '520916410', 'CID1'),
('PES16', 'Professor', 'Professor 04', '903417173', 'CID1'),
('PES17', 'Aluno', 'Aluno 13', '639416627', 'CID2'),
('PES18', 'Professor', 'Professor 05', '530116457', 'CID3'),
('PES19', 'Aluno', 'Aluno 14', '765215139', 'CID2'),
('PES20', 'Professor', 'Professor 06', '738117760', 'CID3'),
('PES21', 'Professor', 'Professor 07', '213611932', 'CID2'),
('PES22', 'Professor', 'Professor 08', '126315540', 'CID3'),
('PES23', 'Professor', 'Professor 09', '786512772', 'CID1'),
('PES24', 'Professor', 'Professor 10', '573314796', 'CID1'),
('PES25', 'Aluno', 'Aluno 15', '973611869', 'CID3'),
('PES26', 'Aluno', 'Aluno 16', '881618753', 'CID1'),
('PES27', 'Aluno', 'Aluno 17', '712419636', 'CID1'),
('PES28', 'Aluno', 'Aluno 18', '602914794', 'CID2'),
('PES29', 'Aluno', 'Aluno 19', '218314412', 'CID2'),
('PES30', 'Aluno', 'Aluno 20', '279616804', 'CID1'),
('PES31', 'Professor', 'Professor 11', '599616857', 'CID1');

INSERT INTO Professor (IdPessoa, RG, CPF, Titulacao) VALUES
('PES1', '123456789', '12345678900', 'Mestre'),
('PES5', '987654321', '98765432100', 'Doutor'),
('PES16','56224309','14138316403' ,'Doutor'),
('PES18','75823520','17681067375' ,'Doutor'),
('PES20','46122533','27014509554' ,'Doutor'),
('PES21','11528201','29700517002' ,'Mestre'),
('PES22','26824078','32422978186' ,'Mestre'),
('PES23','27721962','32460490270' ,'Doutor'),
('PES24','89820703','35018248266','Doutor'),
('PES31','97920706','35718248267','Doutor'),
('PES7','44862284','45892712856','Mestre');

INSERT INTO Escola (IdEscola, Nome, IdCidade, IdPessoa) VALUES
('ESC1', 'CEFET/RJ', 'CID1', 'PES1'),
('ESC2', 'Coluni-UFF', 'CID2', 'PES5');

INSERT INTO Turma (IdTurma, Nome, IdEscola) VALUES
('TUR1', 'Turma A1', 'ESC1'),
('TUR3', 'Turma A2', 'ESC1'),
('TUR2', 'Turma B1', 'ESC2'),
('TUR4', 'Turma B2', 'ESC2'),
('TUR6', 'Turma B3', 'ESC2');

INSERT INTO Aluno (IdPessoa, Matricula, Data_Nascimento, IdTurma) VALUES
('PES2', '012021', '2005-01-01', 'TUR1'),
('PES3', '022022', '2006-02-02', 'TUR2'),
('PES4', '032021', '2007-03-03', 'TUR1'),
('PES6', '042022', '2008-04-04', 'TUR2'),
('PES8', '062022', '2003-02-04', 'TUR1'),
('PES9', '052021', '2001-03-04', 'TUR1'),
('PES10','072021', '2005-03-04', 'TUR3'),
('PES11','082022', '2006-04-10', 'TUR1'),
('PES12','092021', '2004-05-04', 'TUR1'),
('PES13','102022', '2004-04-12', 'TUR3'),
('PES14','112021', '2002-05-04', 'TUR3'),
('PES15','122022', '2002-04-04', 'TUR3'),
('PES17','132022', '2003-04-04', 'TUR6'),
('PES19','142021', '2005-04-04', 'TUR4'),
('PES25','152022', '2004-04-11', 'TUR6'),
('PES26','162022', '2003-05-05', 'TUR6'),
('PES27','172022', '2002-09-09', 'TUR2'),
('PES28','182021', '2003-01-01', 'TUR4'),
('PES29','192022', '2004-07-04', 'TUR4'),
('PES30','202021', '2005-09-04', 'TUR2');

INSERT INTO Disciplina (IdDisciplina, Nome) VALUES
('DIS1', 'Matemática'),
('DIS2', 'História'),
('DIS3', 'Geografia'),
('DIS4', 'Português'),
('DIS5', 'Artes'),
('DIS6', 'Inglês');

INSERT INTO Ministra (IdPessoa, IdDisciplina) VALUES
('PES1', 'DIS1'),
('PES5', 'DIS2'),
('PES16', 'DIS3'),
('PES18', 'DIS4'),
('PES20', 'DIS5'),
('PES21', 'DIS6'),
('PES22', 'DIS2'),
('PES23', 'DIS4'),
('PES24', 'DIS5'),
('PES7', 'DIS1');

INSERT INTO Ministra_Turma (IdPessoa, IdDisciplina, IdTurma) VALUES
('PES16', 'DIS3', 'TUR3'),
('PES18', 'DIS4', 'TUR3'),
('PES20', 'DIS5', 'TUR4'),
('PES21', 'DIS6', 'TUR3'),
('PES22', 'DIS2', 'TUR2'),
('PES23', 'DIS4', 'TUR1'),
('PES24', 'DIS5', 'TUR6'),
('PES7', 'DIS1', 'TUR4'),
('PES16', 'DIS3', 'TUR1'),
('PES18', 'DIS4', 'TUR1'),
('PES20', 'DIS5', 'TUR2'),
('PES22', 'DIS2', 'TUR6'),
('PES24', 'DIS5', 'TUR2'),
('PES7', 'DIS1', 'TUR6'),
('PES20', 'DIS5', 'TUR6'),
('PES22', 'DIS2', 'TUR4');

INSERT INTO Contato (Nome, IdPessoa, Telefone) VALUES
('Contato 2', 'PES3', '3333333333'),
('Contato 3', 'PES4', '4444444444'),
('Contato 4', 'PES6', '6666666666'),
('Contato 5', 'PES12','377346748'),
('Contato 6', 'PES13','221645094'),
('Contato 7', 'PES14','860244967'),
('Contato 8', 'PES15','562749224'),
('Contato 9', 'PES17','616944760'),
('Contato 10', 'PES19','269074758'),
('Contato 11', 'PES25','308475541'),
('Contato 12', 'PES26','148977928'),
('Contato 13', 'PES27','416579161'),
('Contato 14', 'PES28','678877672'),
('Contato 15', 'PES29','156974720'),
('Contato 16', 'PES30','693571281'),
('Contato 17', 'PES8' ,'752278749');
