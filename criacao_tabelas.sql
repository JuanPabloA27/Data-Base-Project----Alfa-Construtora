CREATE TABLE Construtoras (
    codigo NUMBER(3) NOT NULL,
    nome VARCHAR2(100) NOT NULL,
    nome_fantasia VARCHAR2(100),
    cnpj CHAR(14),

    CONSTRAINT PK_CONSTRUTORAS PRIMARY KEY (codigo)
);

CREATE TABLE Categorias (
    codigo NUMBER(3) NOT NULL,
    descricao VARCHAR2(100) NOT NULL,

    CONSTRAINT PK_CATEGORIAS PRIMARY KEY (codigo)
);

CREATE TABLE Obras (
    codigo NUMBER(3) NOT NULL,
    nome VARCHAR2(100) NOT NULL,
    logradouro VARCHAR2(100) NOT NULL,
    numero NUMBER(5) NOT NULL,
    complemento VARCHAR2(100),
    codigo_construtora NUMBER(3) NOT NULL,

    CONSTRAINT PK_OBRAS PRIMARY KEY (codigo),
    CONSTRAINT FK_OBRAS_CONSTRUTORAS
        FOREIGN KEY (codigo_construtora)
        REFERENCES Construtoras (codigo)
);

CREATE TABLE Trabalhadores (
    cpf CHAR(11) NOT NULL,
    nome VARCHAR2(100) NOT NULL,
    salario NUMBER(10,2) NOT NULL,
    codigo_obra NUMBER(3) NOT NULL,

    CONSTRAINT PK_TRABALHADORES PRIMARY KEY (cpf),
    CONSTRAINT FK_TRABALHADORES_OBRAS
        FOREIGN KEY (codigo_obra)
        REFERENCES Obras (codigo)
);

CREATE TABLE Equipamentos (
    codigo NUMBER(3) NOT NULL,
    nome VARCHAR2(100) NOT NULL,
    valor_de_uso_diario NUMBER(10,2) NOT NULL,
    codigo_categoria NUMBER(3) NOT NULL,

    CONSTRAINT PK_EQUIPAMENTOS PRIMARY KEY (codigo),
    CONSTRAINT FK_EQUIPAMENTOS_CATEGORIAS
        FOREIGN KEY (codigo_categoria)
        REFERENCES Categorias (codigo)
);

CREATE TABLE obra_equipamentos (
    codigo_obra NUMBER(3) NOT NULL,
    codigo_equipamento NUMBER(3) NOT NULL,
    data_inicio DATE NOT NULL,
    data_final DATE NOT NULL,

    CONSTRAINT PK_OBRA_EQUIPAMENTOS
        PRIMARY KEY (codigo_obra, codigo_equipamento),

    CONSTRAINT FK_OBRA_EQUIP_OBRAS
        FOREIGN KEY (codigo_obra)
        REFERENCES Obras (codigo),

    CONSTRAINT FK_OBRA_EQUIP_EQUIPAMENTOS
        FOREIGN KEY (codigo_equipamento)
        REFERENCES Equipamentos (codigo)
);

CREATE TABLE Telefones (
    telefone CHAR(11) NOT NULL,
    codigo_construtora NUMBER(3) NOT NULL,

    CONSTRAINT PK_TELEFONES
        PRIMARY KEY (telefone, codigo_construtora),

    CONSTRAINT FK_TELEFONES_CONSTRUTORAS
        FOREIGN KEY (codigo_construtora)
        REFERENCES Construtoras (codigo)
);