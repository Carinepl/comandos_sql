-- 1. Para criar o banco de dados:
CREATE DATABASE meu_banco;

-- 2. Para usar o banco de dados:
USE meu_banco;

-- 3. Para criar a tabela:
CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    idade INT
);

-- 4. Para inserir dados:
INSERT INTO usuarios (nome, email, idade) VALUES ('Carine Lima', 'carine@example.com', 25);

-- 5. Para inserir múltiplos dados:
INSERT INTO usuarios (nome, email, idade) VALUES 
('João Silva', 'joao@example.com', 30),
('Maria Santos', 'maria@example.com', 28);

-- 6. Para selecionar todos os dados:
SELECT * FROM usuarios;

-- 7. Para selecionar dados com condição:
SELECT * FROM usuarios WHERE idade > 25;

-- 8. Para atualizar dados:
UPDATE usuarios SET idade = 26 WHERE nome = 'Carine Lima';

-- 9. Para remover dados:
DELETE FROM usuarios WHERE nome = 'João Silva';

-- 10. Para contar registros:
SELECT COUNT(*) FROM usuarios;

-- 11. Para ordenar dados:
SELECT * FROM usuarios ORDER BY idade DESC;

-- 12. Para filtrar dados com LIKE:
SELECT * FROM usuarios WHERE nome LIKE 'Carine%';

-- 13. Para agrupar dados:
SELECT idade, COUNT(*) FROM usuarios GROUP BY idade;

-- 14. Para usar funções agregadas:
SELECT AVG(idade) FROM usuarios;

-- 15. Para criar uma tabela com chave estrangeira:
CREATE TABLE posts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    conteudo TEXT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- 16. Para inserir dados em tabela relacionada:
INSERT INTO posts (usuario_id, conteudo) VALUES (1, 'Meu primeiro post!');

-- 17. Para selecionar dados de múltiplas tabelas (JOIN):
SELECT u.nome, p.conteudo 
FROM usuarios u 
JOIN posts p ON u.id = p.usuario_id;

-- 18. Para adicionar uma coluna:
ALTER TABLE usuarios ADD COLUMN data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP;

-- 19. Para atualizar dados com subquery:
UPDATE usuarios SET idade = (SELECT AVG(idade) FROM usuarios) WHERE nome = 'Carine Lima';

-- 20. Para remover a tabela:
DROP TABLE posts;

-- 21. Para inserir dados com valores padrão:
INSERT INTO usuarios (nome, email) VALUES ('Ana Costa', 'ana@example.com');

-- 22. Para atualizar múltiplos registros:
UPDATE usuarios SET idade = idade + 1; -- Aumenta a idade de todos os usuários em 1

-- 23. Para selecionar dados distintos:
SELECT DISTINCT idade FROM usuarios;
