CREATE TABLE Eventos (
    id_evento INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    ano INT,
    resumos_ampliados TEXT,
    periodicos VARCHAR(255),
    anais VARCHAR(255)
);

CREATE TABLE Pesquisadores (
    id_pesquisador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    tese_posdoc TEXT,
    dissertação_posdoc TEXT,
    projeto_posdoc TEXT
);

CREATE TABLE Artigos (
    id_artigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    ano INT,
    periodico VARCHAR(255),
    id_pesquisador INT,
    FOREIGN KEY (id_pesquisador) REFERENCES Pesquisadores(id_pesquisador)
);

CREATE TABLE Projetos (
    id_projeto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    ano INT,
    resumo TEXT,
    id_pesquisador INT,
    FOREIGN KEY (id_pesquisador) REFERENCES Pesquisadores(id_pesquisador)
);