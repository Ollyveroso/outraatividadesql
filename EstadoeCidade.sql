-- Adicionar coluna 'cidade_id' na tabela de alunos
ALTER TABLE alunos
ADD COLUMN cidade_id INT;

-- Atualizar a coluna 'cidade_id' na tabela de alunos
UPDATE alunos SET cidade_id = 1 WHERE id IN (1, 2, 3, 4, 5);
UPDATE alunos SET cidade_id = 2 WHERE id IN (6, 7, 8, 9, 10);
UPDATE alunos SET cidade_id = 3 WHERE id IN (11, 12, 13, 14, 15);
UPDATE alunos SET cidade_id = 4 WHERE id IN (16, 17, 18, 19, 20);
UPDATE alunos SET cidade_id = 5 WHERE id IN (21, 22, 23, 24, 25);
UPDATE alunos SET cidade_id = 1 WHERE id IN (26, 27, 28, 29, 30);
UPDATE alunos SET cidade_id = 2 WHERE id IN (31, 32, 33, 34);

-- Exibir os dados atualizados com nome da cidade e estado
SELECT alunos.id, alunos.nome, alunos.sobrenome, alunos.idade, cidades.nome_cidade AS cidade, estados.nome_estado AS estado
FROM alunos
JOIN cidades ON alunos.cidade_id = cidades.cidade_id
JOIN estados ON cidades.estado_id = estados.estado_id;

-- Excluir a coluna 'cidade_id' se já existir
ALTER TABLE alunos DROP COLUMN cidade_id;

-- Adicionar a coluna 'cidade_id' na tabela de alunos
ALTER TABLE alunos ADD COLUMN cidade_id INT;
