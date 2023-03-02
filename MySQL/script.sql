CREATE TABLE `Universidade` (
  `id` int,
  `Curso` int,
  `Professores` varchar(255),
  `created at` varchar(255),
  `admin_id` int
);

CREATE TABLE `cursos` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome_do_curso` varchar(255),
  `Periodo` timestamp,
  `Carga_horaria` int,
  `Disciplinas` int
);

CREATE TABLE `Professores` (
  `Nome` int PRIMARY KEY,
  `Matricula_da_universidade` varchar(255),
  `disciplina` varchar(255)
);

CREATE TABLE `Alunos` (
  `Matricula` int PRIMARY KEY,
  `name` varchar(255),
  `curso_escolhido` varchar(255)
);

CREATE TABLE `Matricula` (
  `id` int PRIMARY KEY,
  `cpf` int,
  `endereco` int,
  `data_de_nascimento` datetime
);

ALTER TABLE `cursos` ADD FOREIGN KEY (`nome_do_curso`) REFERENCES `Universidade` (`Curso`);

ALTER TABLE `Alunos` ADD FOREIGN KEY (`Matricula`) REFERENCES `Matricula` (`cpf`);

ALTER TABLE `Matricula` ADD FOREIGN KEY (`cpf`) REFERENCES `Universidade` (`Curso`);

ALTER TABLE `Professores` ADD FOREIGN KEY (`Nome`) REFERENCES `cursos` (`Disciplinas`);
