-- BANCO DE DADOS - CLINICA MEDICA

CREATE DATABASE clinica_medica;

USE clinica_medica;

-- TABELA DE ESPECIALIDADES
CREATE TABLE especialidades (
    id_especialidade INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(60) NOT NULL
);

-- TABELA DE PACIENTES
CREATE TABLE pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(150)
);

-- TABELA DE MEDICOS
CREATE TABLE medicos (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    crm VARCHAR(20) NOT NULL,
    id_especialidade INT NOT NULL,
    endereco VARCHAR(150),
    FOREIGN KEY (id_especialidade) REFERENCES especialidades(id_especialidade)
);

-- TABELA DE CONSULTAS (AGENDA)
CREATE TABLE consultas (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    data_consulta DATE NOT NULL,
    horario TIME NOT NULL,
    status VARCHAR(20) NOT NULL,
    motivo VARCHAR(200),
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medico)
);

-- TABELA DE PRONTUARIOS
CREATE TABLE prontuarios (
    id_prontuario INT AUTO_INCREMENT PRIMARY KEY,
    id_consulta INT NOT NULL,
    leito VARCHAR(20),
    temperatura DECIMAL(3,1),
    saturacao_o2 DECIMAL(4,1),
    frequencia_cardiaca INT,
    pressao_arterial VARCHAR(10),
    conduta TEXT,
    balanco_hidrico VARCHAR(150),
    alergias VARCHAR(200),
    FOREIGN KEY (id_consulta) REFERENCES consultas(id_consulta)
);

-- TABELA DE PRESCRICOES (MEDICAMENTOS DO PRONTUARIO)
CREATE TABLE prescricoes (
    id_prescricao INT AUTO_INCREMENT PRIMARY KEY,
    id_prontuario INT NOT NULL,
    medicamento VARCHAR(100) NOT NULL,
    dosagem VARCHAR(50) NOT NULL,
    via VARCHAR(30) NOT NULL,
    horario VARCHAR(50),
    FOREIGN KEY (id_prontuario) REFERENCES prontuarios(id_prontuario)
);


-- INSERINDO ESPECIALIDADES
INSERT INTO especialidades (nome) VALUES
('Cardiologia'),
('Neurologia'),
('Dermatologia'),
('Pediatria'),
('Clinico Geral');

-- INSERINDO PACIENTES
INSERT INTO pacientes (nome, cpf, telefone, data_nascimento, endereco) VALUES
('Maria', '128.496.795-01', '(31) 93711-5678', '1990-03-14', 'R. Bandeirantes'),
('João', '231.645.997-84', '(31) 98166-4321', '1985-11-02', 'R. Bandeirantes'),
('Paula', '999.916.473-11', '(31) 97694-3010', '2016-07-27', 'R. Bandeirantes'),
('Diego', '334.575.676-58', '(31) 96693-2169', '1998-01-20', 'R. Bandeirantes'),
('Ana Paula Ferreira', '456.789.123-00', '(31) 99000-1111', '2005-06-28', 'R. das Flores, 120');

-- INSERINDO MEDICOS
INSERT INTO medicos (nome, cpf, telefone, crm, id_especialidade, endereco) VALUES
('Dr. Fabio', '000.000.000-01', '(31) 98003-0000', '128456-MG', 1, 'Centro'),
('Dr. Jorge', '000.000.000-02', '(31) 91800-0000', '094312-MG', 2, 'Centro'),
('Dra. Mariana', '000.000.000-03', '(31) 96000-0388', '210987-MG', 3, 'Centro'),
('Dr. Rodrigo Prado', '000.000.000-04', '(31) 90000-9999', '012345-MG', 1, 'Centro');

-- INSERINDO CONSULTAS
INSERT INTO consultas (id_paciente, id_medico, data_consulta, horario, status, motivo) VALUES
(1, 1, '2026-09-01', '08:00:00', 'agendado', 'Consulta de rotina'),
(2, 2, '2026-09-02', '09:00:00', 'realizada', 'Reavaliação'),
(3, 3, '2026-09-03', '11:00:00', 'realizada', 'Exame ECG'),
(4, 1, '2026-09-04', '17:00:00', 'cancelada', 'Emergência'),
(5, 4, '2026-09-03', '10:00:00', 'realizada', 'Consulta de rotina');

-- INSERINDO PRONTUARIO (referente a consulta 5 - Ana Paula Ferreira)
INSERT INTO prontuarios (id_consulta, leito, temperatura, saturacao_o2, frequencia_cardiaca, pressao_arterial, conduta, balanco_hidrico, alergias) VALUES
(5, 'Leito 1', 36.7, 98.0, 74, '12/8', 'Paciente encaminhada para consulta de rotina, sem queixas no momento.', '500ml administrado / 300ml eliminado', 'Alergia a dipirona');

-- INSERINDO PRESCRICOES
INSERT INTO prescricoes (id_prontuario, medicamento, dosagem, via, horario) VALUES
(1, 'Paracetamol', '750mg', 'Oral', '8 em 8 horas'),
(1, 'Soro Fisiológico', '500ml', 'Intravenosa', 'Uma vez ao dia');