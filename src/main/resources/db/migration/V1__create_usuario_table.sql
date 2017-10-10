CREATE TABLE usuario (
    id BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    data_nascimento DATE NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(150) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,
    data_criacao DATETIME DEFAULT NOW(),
    data_atualizacao DATETIME DEFAULT NOW(),
    CONSTRAINT pk_usuario PRIMARY KEY(id),
    CONSTRAINT uk_usuario_email UNIQUE KEY(email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
