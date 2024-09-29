INSERT INTO Eventos (nome, ano, resumos_ampliados, periodicos, anais)
VALUES
('Congresso de Ciência 2024', 2024, 'Resumo ampliado do evento de ciência.', 'Revista Científica', 'Anais do Congresso de Ciência 2024'),
('Workshop de Tecnologias', 2023, 'Resumo ampliado do workshop.', 'Jornal de Tecnologia', 'Anais do Workshop de 2023');

-- Inserindo dados na tabela Pesquisadores
INSERT INTO Pesquisadores (nome, tese_posdoc, dissertação_posdoc, projeto_posdoc)
VALUES
('Dr. João Silva', 'Tese de pós-doutorado em inteligência artificial.', 'Dissertação de pós-doutorado em aprendizado de máquina.', 'Projeto de pós-doutorado em redes neurais.'),
('Dra. Maria Souza', 'Tese de pós-doutorado em biotecnologia.', 'Dissertação de pós-doutorado em genética.', 'Projeto de pós-doutorado em biologia sintética.');

-- Inserindo dados na tabela Artigos
INSERT INTO Artigos (nome, ano, periodico, id_pesquisador)
VALUES
('Avanços em Inteligência Artificial', 2024, 'Revista de Computação', 1),
('Estudo sobre Biologia Sintética', 2023, 'Revista de Biotecnologia', 2);

-- Inserindo dados na tabela Projetos
INSERT INTO Projetos (nome, ano, resumo, id_pesquisador)
VALUES
('Projeto de Redes Neurais', 2024, 'Resumo do projeto de redes neurais.', 1),
('Projeto de Biologia Sintética', 2023, 'Resumo do projeto de biologia sintética.', 2);
