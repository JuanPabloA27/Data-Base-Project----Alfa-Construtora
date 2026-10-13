-- Categorias --

INSERT INTO Categorias (codigo, descricao)
VALUES (1, 'Concretagem');

INSERT INTO Categorias (codigo, descricao)
VALUES (2, 'Acesso e Elevação');

INSERT INTO Categorias (codigo, descricao)
VALUES (3, 'Geradores e Compressores');

INSERT INTO Categorias (codigo, descricao)
VALUES (4, 'Andaimes');

INSERT INTO Categorias (codigo, descricao)
VALUES (5, 'Ferramenta Elétrica');

-- Construtora ALFA --

INSERT INTO Construtoras (codigo, nome, nome_fantasia)
VALUES (10, 'Construtora Alfa S.A.', 'Alfa Incorporações');

-- Equpamentos --

INSERT INTO Equipamentos (codigo, nome, valor_de_uso_diario, codigo_categoria)
VALUES (301, 'Betoneira', 100.00, 1);

INSERT INTO Equipamentos (codigo, nome, valor_de_uso_diario, codigo_categoria)
VALUES (302, 'Cortadora de Piso', 10.00, 1);

INSERT INTO Equipamentos (codigo, nome, valor_de_uso_diario, codigo_categoria)
VALUES (303, 'Mangote', 30.50, 1);

INSERT INTO Equipamentos (codigo, nome, valor_de_uso_diario, codigo_categoria)
VALUES (304, 'Guincho', 250.00, 2);

INSERT INTO Equipamentos (codigo, nome, valor_de_uso_diario, codigo_categoria)
VALUES (305, 'Gerador', 451.00, 3);

INSERT INTO Equipamentos (codigo, nome, valor_de_uso_diario, codigo_categoria)
VALUES (306, 'Piso Metálico', 150.00, 4);

INSERT INTO Equipamentos (codigo, nome, valor_de_uso_diario, codigo_categoria)
VALUES (307, 'Furadeira de bancada', 65.00, 5);

INSERT INTO Equipamentos (codigo, nome, valor_de_uso_diario, codigo_categoria)
VALUES (308, 'Parafusadeira', 37.00, 5);

INSERT INTO Equipamentos (codigo, nome, valor_de_uso_diario, codigo_categoria)
VALUES (309, 'Plaina', 25.00, 5);

-- Obras ALFA --

INSERT INTO Obras
    (codigo, nome, logradouro, numero, complemento, codigo_construtora)
VALUES
    (115, 'Condomínio dos Lagos', 'Travessa dos Lagos', 100, 'Norte', 10);

INSERT INTO Obras
    (codigo, nome, logradouro, numero, complemento, codigo_construtora)
VALUES
    (116, 'Condomínio Araras', 'Avenida Rio Grande', 22, 'Lado A', 10);


-- Trabalhadores da ALFA --

INSERT INTO Trabalhadores (cpf, nome, salario, codigo_obra)
VALUES ('10110110134', 'José Chaves', 2200.00, 115);

INSERT INTO Trabalhadores (cpf, nome, salario, codigo_obra)
VALUES ('10210210291', 'Pedro Passos', 3502.18, 115);

INSERT INTO Trabalhadores (cpf, nome, salario, codigo_obra)
VALUES ('10310310318', 'Maria Aparecida', 2800.87, 115);

INSERT INTO Trabalhadores (cpf, nome, salario, codigo_obra)
VALUES ('10410410452', 'Carlos Dutra', 3100.00, 116);

INSERT INTO Trabalhadores (cpf, nome, salario, codigo_obra)
VALUES ('10510510585', 'Mário Pires', 4323.29, 116);

-- Telefones da ALFA --

INSERT INTO Telefones (telefone, codigo_construtora)
VALUES ('5133333334', 10);

INSERT INTO Telefones (telefone, codigo_construtora)
VALUES ('5133333335', 10);

INSERT INTO Telefones (telefone, codigo_construtora)
VALUES ('5133333336', 10);

-- Equipamentos utilizados nas obras da ALFA --

INSERT INTO obra_equipamentos
VALUES (115, 301, TO_DATE('18/03/2022','DD/MM/YYYY'), TO_DATE('24/10/2022','DD/MM/YYYY'));

INSERT INTO obra_equipamentos
VALUES (115, 304, TO_DATE('20/04/2022','DD/MM/YYYY'), TO_DATE('02/08/2022','DD/MM/YYYY'));

INSERT INTO obra_equipamentos
VALUES (115, 306, TO_DATE('06/07/2021','DD/MM/YYYY'), TO_DATE('18/07/2021','DD/MM/YYYY'));

INSERT INTO obra_equipamentos
VALUES (115, 307, TO_DATE('04/03/2022','DD/MM/YYYY'), TO_DATE('20/03/2022','DD/MM/YYYY'));

INSERT INTO obra_equipamentos
VALUES (115, 309, TO_DATE('04/08/2021','DD/MM/YYYY'), TO_DATE('10/08/2021','DD/MM/YYYY'));

INSERT INTO obra_equipamentos
VALUES (116, 304, TO_DATE('22/10/2022','DD/MM/YYYY'), TO_DATE('25/10/2022','DD/MM/YYYY'));

INSERT INTO obra_equipamentos
VALUES (116, 305, TO_DATE('07/03/2022','DD/MM/YYYY'), TO_DATE('10/03/2022','DD/MM/YYYY'));

INSERT INTO obra_equipamentos
VALUES (116, 306, TO_DATE('12/09/2022','DD/MM/YYYY'), TO_DATE('21/09/2022','DD/MM/YYYY'));

INSERT INTO obra_equipamentos
VALUES (116, 307, TO_DATE('16/08/2022','DD/MM/YYYY'), TO_DATE('24/08/2022','DD/MM/YYYY'));

INSERT INTO obra_equipamentos
VALUES (116, 308, TO_DATE('23/10/2022','DD/MM/YYYY'), TO_DATE('25/10/2022','DD/MM/YYYY'));

-- JF Construçoes e Obras --

INSERT INTO Construtoras (codigo, nome, nome_fantasia)
VALUES (20, 'Construtora Juan Fraga', 'JF Construções');

INSERT INTO Obras
    (codigo, nome, logradouro, numero, complemento, codigo_construtora)
VALUES
    (201, 'Orla do Guaíba', 'Avenida Beira Rio', 500, 'Trecho 1', 20);

INSERT INTO Obras
    (codigo, nome, logradouro, numero, complemento, codigo_construtora)
VALUES
    (202, 'Colégio Israelita', 'Avenida Principal', 250, 'Bloco A', 20);

-- TRABALHADORES DA OBRA ORLA DO GUAÍBA --

INSERT INTO Trabalhadores (cpf, nome, salario, codigo_obra)
VALUES ('20120120101', 'Lucas Martins', 2400.00, 201);

INSERT INTO Trabalhadores (cpf, nome, salario, codigo_obra)
VALUES ('20120120102', 'Gabriel Souza', 2750.00, 201);

INSERT INTO Trabalhadores (cpf, nome, salario, codigo_obra)
VALUES ('20120120103', 'Rafael Oliveira', 3200.00, 201);

INSERT INTO Trabalhadores (cpf, nome, salario, codigo_obra)
VALUES ('20120120104', 'Bruno Costa', 2300.00, 201);

INSERT INTO Trabalhadores (cpf, nome, salario, codigo_obra)
VALUES ('20120120105', 'Matheus Lima', 2900.00, 201);


-- TRABALHADORES DA OBRA COLÉGIO ISRAELITA --

INSERT INTO Trabalhadores (cpf, nome, salario, codigo_obra)
VALUES ('20220220201', 'Ulisses Hurts', 2600.00, 202);

INSERT INTO Trabalhadores (cpf, nome, salario, codigo_obra)
VALUES ('20220220202', 'Eduardo Rocky', 3100.00, 202);

INSERT INTO Trabalhadores (cpf, nome, salario, codigo_obra)
VALUES ('20220220203', 'Gustavo Rocha', 2450.00, 202);

INSERT INTO Trabalhadores (cpf, nome, salario, codigo_obra)
VALUES ('20220220204', 'Amanda Triz', 3500.00, 202);

INSERT INTO Trabalhadores (cpf, nome, salario, codigo_obra)
VALUES ('20220220205', 'Carolina Santo', 2800.00, 202);

-- Alocaçoes Equipamentos --

INSERT INTO obra_equipamentos
VALUES (201, 301, TO_DATE('01/09/2026','DD/MM/YYYY'), TO_DATE('30/09/2026','DD/MM/YYYY'));

INSERT INTO obra_equipamentos
VALUES (201, 304, TO_DATE('01/09/2026','DD/MM/YYYY'), TO_DATE('30/09/2026','DD/MM/YYYY'));

INSERT INTO obra_equipamentos
VALUES (201, 305, TO_DATE('01/09/2026','DD/MM/YYYY'), TO_DATE('30/09/2026','DD/MM/YYYY'));

INSERT INTO obra_equipamentos
VALUES (201, 306, TO_DATE('01/09/2026','DD/MM/YYYY'), TO_DATE('30/09/2026','DD/MM/YYYY'));