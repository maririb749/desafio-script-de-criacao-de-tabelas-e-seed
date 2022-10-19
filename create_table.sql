CREATE TABLE tb_regiao(
	id SERIAL PRIMARY KEY, 
	nome VARCHAR(30) NOT NULL, 
	localidade_s FLOAT NOT NULL, 
	localidade_w FLOAT NOT NULL, 
	descricao VARCHAR(30)NOT NULL
);

CREATE TABLE tb_vinho(
	id SERIAL PRIMARY KEY, 
	nome VARCHAR(20) NOT NULL
);

CREATE TABLE tb_vinicola(
	id SERIAL PRIMARY KEY, 
	nome VARCHAR(30) NOT NULL,
	descricao VARCHAR(60) NOT NULL, 
	fone VARCHAR(12),
	email VARCHAR(40) UNIQUE NOT NULL ,
	regiao_id INT NOT NULL,
	FOREIGN KEY (regiao_id) REFERENCES tb_regiao(id)
);

CREATE TABLE tb_tipo_vinho (
	id SERIAL PRIMARY KEY , 
	nome VARCHAR(12) NOT NULL
);