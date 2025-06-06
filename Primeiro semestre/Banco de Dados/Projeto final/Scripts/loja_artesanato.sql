CREATE DATABASE IF NOT EXISTS loja_artesanatos;
USE loja_artesanatos;

-- // Tabela para registrar os profissionais 
CREATE TABLE IF NOT EXISTS Artesoes ( 
    ID_Artesao INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Contato VARCHAR(100),
    Endereco TEXT,
    Tipo_Artesanato VARCHAR(100),
    Data_Cadastro DATE
);

-- // Tabela para registrar os produtos feitos 
CREATE TABLE IF NOT EXISTS  Produtos (
    ID_Produto INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Descricao TEXT,
    Preco DECIMAL(10,2) NOT NULL,
    Quantidade_Estoque INT DEFAULT 0,
    Artesao_ID INT,
    FOREIGN KEY (Artesao_ID) REFERENCES Artesoes(ID_Artesao)
);

-- // Tabela para registrar os clientes 
CREATE TABLE IF NOT EXISTS  Clientes (
    ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Telefone VARCHAR(20),
    Endereco TEXT,
    Data_Cadastro DATE
);

-- // Tabela que registra as vendas feitas 
CREATE TABLE IF NOT EXISTS  Vendas (
    ID_Venda INT PRIMARY KEY AUTO_INCREMENT,
    Cliente_ID INT,
    Produto_ID INT,
    Data_Venda DATETIME,
    Valor_Total DECIMAL(10,2),
    Forma_Pagamento VARCHAR(50),
    Status VARCHAR(20),
    FOREIGN KEY (Cliente_ID) REFERENCES Clientes(ID_Cliente),
	FOREIGN KEY (Produto_ID) REFERENCES Produtos(ID_Produto)
);
-- // Tabela que registra os itens vendidos 
CREATE TABLE IF NOT EXISTS  Itens_Venda (
    ID_Item INT PRIMARY KEY AUTO_INCREMENT,
    Venda_ID INT,
    Produto_ID INT,
    Quantidade INT,
    Preco_Unitario DECIMAL(10,2),
    Subtotal DECIMAL(10,2),
    FOREIGN KEY (Venda_ID) REFERENCES Vendas(ID_Venda),
    FOREIGN KEY (Produto_ID) REFERENCES Produtos(ID_Produto)
);

INSERT INTO Artesoes (Nome, Contato, Endereco, Tipo_Artesanato, Data_Cadastro) VALUES
('Maria Silva', '(11) 98765-4321', 'Rua das Flores, 123 - São Paulo/SP', 'Cerâmica', '2023-01-15'),
('João Santos', '(21) 99876-5432', 'Av. Brasil, 456 - Rio de Janeiro/RJ', 'Madeira', '2023-02-10'),
('Ana Oliveira', '(31) 98765-1234', 'Rua da Paz, 789 - Belo Horizonte/MG', 'Bordado', '2023-01-20'),
('Carlos Mendes', '(41) 98765-5678', 'Rua XV de Novembro, 101 - Curitiba/PR', 'Couro', '2023-03-05'),
('Lucia Ferreira', '(51) 99876-8765', 'Av. Farroupilha, 202 - Porto Alegre/RS', 'Tricô', '2023-02-28'),
('Pedro Alves', '(81) 98765-3456', 'Rua do Sol, 303 - Recife/PE', 'Cerâmica', '2023-04-12'),
('Fernanda Costa', '(85) 99876-7890', 'Av. Beira Mar, 404 - Fortaleza/CE', 'Bonecas de Pano', '2023-03-18'),
('Rafael Lima', '(71) 98765-9012', 'Rua Chile, 505 - Salvador/BA', 'Metal', '2023-05-01'),
('Juliana Rocha', '(48) 99876-2345', 'Rua das Palmeiras, 606 - Florianópolis/SC', 'Tear', '2023-04-22'),
('Marcos Souza', '(61) 98765-6789', 'SQN 102, Bloco C, 707 - Brasília/DF', 'Papel Machê', '2023-06-10'),
('Patricia Gomes', '(62) 99876-0123', 'Rua 7, 808 - Goiânia/GO', 'Biscuit', '2023-05-15'),
('Antonio Nunes', '(98) 98765-4567', 'Av. dos Portugueses, 909 - São Luís/MA', 'Palha', '2023-07-03'),
('Sandra Martins', '(91) 99876-8901', 'Travessa Quintino Bocaiúva, 1010 - Belém/PA', 'Miçangas', '2023-06-20'),
('Eduardo Barbosa', '(69) 98765-2345', 'Rua Rondônia, 1111 - Porto Velho/RO', 'Madeira', '2023-08-07'),
('Cristina Dias', '(96) 99876-6789', 'Av. FAB, 1212 - Macapá/AP', 'Cerâmica', '2023-07-25'),
('Roberto Campos', '(92) 98765-0123', 'Rua 10 de Julho, 1313 - Manaus/AM', 'Couro', '2023-09-12'),
('Teresa Cardoso', '(63) 99876-4567', 'Av. JK, 1414 - Palmas/TO', 'Bordado', '2023-08-30'),
('Paulo Henrique', '(68) 98765-8901', 'Rua Epaminondas Jácome, 1515 - Rio Branco/AC', 'Metal', '2023-10-05'),
('Vanessa Monteiro', '(95) 99876-2345', 'Av. Ene Garcez, 1616 - Boa Vista/RR', 'Tricô', '2023-09-18'),
('Felipe Ramos', '(79) 98765-6789', 'Rua Laranjeiras, 1717 - Aracaju/SE', 'Papel Machê', '2023-11-02');

INSERT INTO Produtos (Nome, Descricao, Preco, Quantidade_Estoque, Artesao_ID) VALUES
('Vaso de Cerâmica', 'Vaso artesanal pintado à mão', 89.90, 15, 1),
('Cesta de Palha', 'Cesta trançada em fibra natural', 45.50, 20, 12),
('Boneca de Pano', 'Boneca artesanal com vestido florido', 65.00, 10, 7),
('Colar de Miçangas', 'Colar colorido com contas artesanais', 32.90, 30, 13),
('Estatueta de Madeira', 'Escultura em madeira de jatobá', 120.00, 8, 2),
('Carteira de Couro', 'Carteira masculina em couro legítimo', 75.80, 12, 4),
('Xale de Tricô', 'Xale de lã pura em ponto tricô', 98.50, 5, 5),
('Máscara Decorativa', 'Máscara africana em papel machê', 55.00, 7, 10),
('Toalha Bordada', 'Toalha de mesa com bordado manual', 85.00, 9, 3),
('Porta-retrato de Metal', 'Porta-retrato em metal reciclado', 42.90, 15, 8),
('Panela de Barro', 'Panela de cerâmica para fogão', 110.00, 6, 15),
('Tapete de Tear', 'Tapete artesanal feito em tear manual', 150.00, 4, 9),
('Estatueta de Biscuit', 'Miniatura de personagem em biscuit', 28.50, 25, 11),
('Bandô de Flores', 'Bandô para cabelo com flores de tecido', 22.90, 18, 7),
('Brincos de Semente', 'Brincos ecológicos de sementes nativas', 19.90, 22, 13),
('Banquinho de Madeira', 'Banco rústico em madeira maciça', 135.00, 3, 14),
('Bolsa de Couro', 'Bolsa feminina em couro artesanal', 185.00, 5, 16),
('Cachecol de Lã', 'Cachecol de lã merino em ponto jersey', 68.00, 8, 5),
('Quadro com Folhas', 'Quadro decorativo com folhas naturais', 72.50, 6, 10),
('Jogo Americano', 'Conjunto de 6 jogos americanos bordados', 95.00, 7, 3);

INSERT INTO Clientes (Nome, Email, Telefone, Endereco, Data_Cadastro) VALUES
('Amanda Costa', 'amanda.costa@email.com', '(11) 98765-1234', 'Av. Paulista, 1000 - São Paulo/SP', '2023-01-10'),
('Bruno Oliveira', 'bruno.oliveira@email.com', '(21) 99876-2345', 'Rua do Ouvidor, 200 - Rio de Janeiro/RJ', '2023-02-15'),
('Camila Santos', 'camila.santos@email.com', '(31) 98765-3456', 'Av. Afonso Pena, 300 - Belo Horizonte/MG', '2023-01-25'),
('Daniel Pereira', 'daniel.pereira@email.com', '(41) 99876-4567', 'Rua das Araucárias, 400 - Curitiba/PR', '2023-03-12'),
('Eduarda Almeida', 'eduarda.almeida@email.com', '(51) 98765-5678', 'Rua dos Andradas, 500 - Porto Alegre/RS', '2023-02-20'),
('Felipe Ribeiro', 'felipe.ribeiro@email.com', '(81) 99876-6789', 'Av. Boa Viagem, 600 - Recife/PE', '2023-04-05'),
('Gabriela Martins', 'gabriela.martins@email.com', '(85) 98765-7890', 'Rua Iracema, 700 - Fortaleza/CE', '2023-03-22'),
('Henrique Souza', 'henrique.souza@email.com', '(71) 99876-8901', 'Av. Sete de Setembro, 800 - Salvador/BA', '2023-05-08'),
('Isabela Ferreira', 'isabela.ferreira@email.com', '(48) 98765-9012', 'Rua Felipe Schmidt, 900 - Florianópolis/SC', '2023-04-18'),
('João Victor Lima', 'joao.lima@email.com', '(61) 99876-0123', 'SQS 104, Bloco B, 1000 - Brasília/DF', '2023-06-15'),
('Karina Gonçalves', 'karina.goncalves@email.com', '(62) 98765-1234', 'Av. Tocantins, 1100 - Goiânia/GO', '2023-05-22'),
('Lucas Rocha', 'lucas.rocha@email.com', '(98) 99876-2345', 'Rua Grande, 1200 - São Luís/MA', '2023-07-10'),
('Mariana Dias', 'mariana.dias@email.com', '(91) 98765-3456', 'Travessa Padre Eutíquio, 1300 - Belém/PA', '2023-06-25'),
('Nicolas Barbosa', 'nicolas.barbosa@email.com', '(69) 99876-4567', 'Av. Carlos Gomes, 1400 - Porto Velho/RO', '2023-08-12'),
('Olivia Campos', 'olivia.campos@email.com', '(96) 98765-5678', 'Rua Leopoldo Machado, 1500 - Macapá/AP', '2023-07-30'),
('Paulo Cardoso', 'paulo.cardoso@email.com', '(92) 99876-6789', 'Av. Eduardo Ribeiro, 1600 - Manaus/AM', '2023-09-18'),
('Quezia Monteiro', 'quezia.monteiro@email.com', '(63) 98765-7890', 'Rua 15, 1700 - Palmas/TO', '2023-08-28'),
('Rafael Ramos', 'rafael.ramos@email.com', '(68) 99876-8901', 'Av. Ceará, 1800 - Rio Branco/AC', '2023-10-10'),
('Sofia Nunes', 'sofia.nunes@email.com', '(95) 98765-9012', 'Rua São Sebastião, 1900 - Boa Vista/RR', '2023-09-22'),
('Thiago Alves', 'thiago.alves@email.com', '(79) 99876-0123', 'Av. Augusto Franco, 2000 - Aracaju/SE', '2023-11-05');

INSERT INTO Vendas (Cliente_ID, Produto_ID, Data_Venda, Valor_Total, Forma_Pagamento, Status) VALUES
(1, 20, '2023-02-05 10:30:00', 155.90, 'Cartão de Crédito', 'Concluída'),
(2, 19, '2023-03-12 14:15:00', 210.50, 'PIX', 'Concluída'),
(3, 18, '2023-02-18 11:45:00', 98.50, 'Dinheiro', 'Concluída'),
(4, 17, '2023-04-20 16:20:00', 327.80, 'Cartão de Débito', 'Concluída'),
(5, 16, '2023-03-10 09:10:00', 142.90, 'PIX', 'Concluída'),
(6, 15, '2023-05-15 13:25:00', 185.00, 'Cartão de Crédito', 'Concluída'),
(7, 14, '2023-04-05 15:50:00', 68.00, 'Dinheiro', 'Concluída'),
(8, 13, '2023-06-22 10:05:00', 240.50, 'PIX', 'Concluída'),
(9, 12, '2023-05-12 12:30:00', 95.00, 'Cartão de Débito', 'Concluída'),
(10, 11, '2023-07-18 17:15:00', 110.00, 'Cartão de Crédito', 'Concluída'),
(11, 10, '2023-06-08 14:40:00', 150.00, 'PIX', 'Concluída'),
(12, 9, '2023-08-25 11:20:00', 57.80, 'Dinheiro', 'Concluída'),
(13, 8, '2023-07-15 09:55:00', 205.90, 'Cartão de Crédito', 'Concluída'),
(14, 7, '2023-09-10 16:30:00', 120.00, 'PIX', 'Concluída'),
(15, 6, '2023-08-05 13:10:00', 85.00, 'Cartão de Débito', 'Concluída'),
(16, 5, '2023-10-12 10:45:00', 185.00, 'Cartão de Crédito', 'Concluída'),
(17, 4, '2023-09-20 15:20:00', 42.90, 'Dinheiro', 'Concluída'),
(18, 3, '2023-11-08 12:05:00', 130.50, 'PIX', 'Concluída'),
(19, 2, '2023-10-15 14:50:00', 65.00, 'Cartão de Débito', 'Concluída'),
(20, 1, '2023-12-05 09:25:00', 89.90, 'Cartão de Crédito', 'Concluída');

INSERT INTO Itens_Venda (Venda_ID, Produto_ID, Quantidade, Preco_Unitario, Subtotal) VALUES
(1, 1, 1, 89.90, 89.90),
(1, 4, 2, 32.90, 65.80),
(2, 5, 1, 120.00, 120.00),
(2, 7, 1, 98.50, 98.50),
(3, 7, 1, 98.50, 98.50),
(4, 6, 2, 75.80, 151.60),
(4, 10, 1, 42.90, 42.90),
(4, 13, 3, 28.50, 85.50),
(5, 9, 1, 85.00, 85.00),
(5, 14, 1, 22.90, 22.90),
(6, 16, 1, 135.00, 135.00),
(6, 18, 1, 68.00, 68.00),
(7, 18, 1, 68.00, 68.00),
(8, 12, 1, 150.00, 150.00),
(8, 19, 1, 72.50, 72.50),
(9, 20, 1, 95.00, 95.00),
(10, 11, 1, 110.00, 110.00),
(11, 12, 1, 150.00, 150.00),
(12, 6, 1, 75.80, 75.80),
(13, 1, 1, 89.90, 89.90),
(13, 3, 1, 65.00, 65.00),
(13, 15, 2, 19.90, 39.80),
(14, 5, 1, 120.00, 120.00),
(15, 9, 1, 85.00, 85.00),
(16, 17, 1, 185.00, 185.00),
(17, 10, 1, 42.90, 42.90),
(18, 14, 2, 22.90, 45.80),
(18, 15, 3, 19.90, 59.70),
(19, 3, 1, 65.00, 65.00),
(20, 1, 1, 89.90, 89.90);