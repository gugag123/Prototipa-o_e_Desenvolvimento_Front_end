# 🏥 Clínica Vitalis — Sistema de Gestão Médica

![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![UI/UX](https://img.shields.io/badge/UI%2FUX-Design-7B2CBF?style=for-the-badge)

> Sistema web intuitivo, semântico e responsivo para controle de pacientes, agendamentos, médicos, prontuários e relatórios da **Clínica Vitalis**.

---

## 📖 1. Sobre o Projeto
O **Sistema Clínica Vitalis** é uma aplicação voltada para a gestão e automação do atendimento médico. O projeto integra uma modelagem de banco de dados relacional rigorosa em MySQL a uma interface web intuitiva, desenvolvida com foco em acessibilidade, semântica HTML5 e layouts responsivos.

---

## 🎯 2. Módulos do Sistema
O sistema é estruturado nos seguintes módulos fundamentais:
- 👥 **[Cadastro de Pacientes](./sitema_De_Clinica_Medica/cadastro_Paciente.html):** Gestão de dados pessoais, contatos e histórico.
- 👨‍⚕️ **[Cadastro de Médicos](./sitema_De_Clinica_Medica/cadastro_Medico.html):** Registro de profissionais, CRM e especialidades.
- 📅 **[Agenda e Agendamento](./sitema_De_Clinica_Medica/agenda.html):** Controle de horários e datas com calendário e grade semanal.
- 📋 **[Prontuário Eletrônico](./sitema_De_Clinica_Medica/prontuario.html):** Anotações clínicas, sinais vitais e histórico de consultas.
- 📊 **[Relatórios e Painel](./sitema_De_Clinica_Medica/relatorios.html):** Visualização de dados agregados e consultas por período.
- 🏠 **[Página Inicial / Dashboard](./sitema_De_Clinica_Medica/index.html):** Visão geral do sistema.

---

## 🎨 3. Prototipação e Modelagem (UI/UX - Fase A)

> 📎 **Acesse o documento original:** [📄 Clique aqui para visualizar o PDF dos Wireframes desenhados à mão](./Fase_A_Prototipacao.pdf)

A etapa de prototipação foi realizada por meio de **Wireframes de Baixa Fidelidade** desenhados à mão, priorizando a arquitetura de informação, disposição de componentes e fluxo de navegação antes do desenvolvimento do código.

### 📐 Detalhamento das Telas Prototipadas:

1. **📊 Painel / Dashboard:**
   - **Indicadores Rápidos (Cards):** Métricas de consultas do dia, da semana, novos agendamentos e taxa de cancelamento.
   - **Gráficos e Listagens:** Gráfico de distribuição de consultas semanais e tabela com os últimos agendamentos.
   - **Navegação Lateral:** Menu fixo com acesso direto a todas as seções do sistema.

2. **👥 Cadastro e Gestão de Pacientes:**
   - Tabela central com contagem de registros, busca dinâmica por nome e listagem de dados (Nome, CPF, Telefone, Endereço).
   - Botões de ação direta para **Editar** e **Excluir**, além do atalho para **Novo Cadastro**.

3. **👨‍⚕️ Cadastro e Gestão de Médicos:**
   - Estrutura semelhante à tela de pacientes, agregando os campos de **CRM** e **Especialidade Médica**.
   - Permite a busca e manutenção contínua do corpo clínico pela recepção.

4. **📋 Prontuário Eletrônico:**
   - **Cabeçalho Clínico:** Identificação do paciente, dados demográficos, alergias e tipo sanguíneo.
   - **Atendimento em Tempo Real:** Campo para anotações/diagnóstico e emissão de receita/prescrição médica com botão de impressão rápida.
   - **Sinais Vitais:** Bloco para registro e monitoramento de Pressão Arterial, Frequência Cardíaca, Temperatura e Saturação ($SpO_2$).
   - **Histórico:** Painel lateral com o histórico das consultas anteriores.

5. **📅 Agenda e Agendamento de Consultas:**
   - **Visão em Grade Semanal:** Cruzamento de horários (linhas) com os dias da semana (colunas).
   - **Filtros e Legenda:** Seleção por Médico/Especialidade e sistema de status colorido (Livre, Agendado, Bloqueado, Em Atendimento).

---

## 💻 4. Arquitetura e Tecnologia Front-end (Fase B)
A implementação da interface segue os padrões estritos do HTML5 e CSS3:
- **Estilização Global:** [📄 Arquivo CSS Global (`style.css`)](./sitema_De_Clinica_Medica/style.css)
- **Semântica HTML5:** Utilização de `<header>`, `<nav>`, `<main>`, `<section>`, `<article>`, `<footer>`, `<aside>` e `<form>`.
- **CSS Grid Layout:** Macro-estruturação dos contêineres principais (menu lateral vs. área de conteúdo).
- **CSS Flexbox:** Alinhamento bidimensional de componentes (cards, botões, itens de menu e formulários).
- **Validação Nativa:** Uso de atributos `required`, `type="email"`, `type="date"`, `min` e `max`.

---

## 🗄️ 5. Banco de Dados (MySQL)
O banco de dados relacional `clinica_vitalis` foi modelado para suportar todas as operações da clínica.

> 🗃️ **Script de Criação:** [📄 Clique aqui para visualizar o código SQL (`Sistema_Clinica_Medica.sql`)](./sitema_De_Clinica_Medica/Sistema_Clinica_Medica.sql)

### 📐 Estrutura de Tabelas e Entidades:
* `especialidades`: Registro das áreas médicas.
* `pacientes`: Dados demográficos e contatos dos pacientes.
* `medicos`: Profissionais de saúde vinculados às especialidades.
* `consultas`: Agendamentos e status da consulta.
* `prontuarios`: Registro de leito, sinais vitais, temperatura, $SpO_2$, FC e conduta.
* `prescricoes`: Medicamentos, dosagens e vias de administração.

---

## 🔍 6. Diagnóstico de Integração (Fase C: Front & Backend)

> 📝 **Documento Completo:** [📄 Diagnóstico da Fase C (`Diagnostico_Integracao_Front_Backend_Clinica_Vitalis.pdf`)](./Diagnostico_Integracao_Front_Backend_Clinica_Vitalis.pdf)

### 1. Cobertura dos Campos
Os formulários desenhados na UI capturam integralmente todos os campos obrigatórios e opcionais exigidos pelas tabelas do banco de dados (`pacientes`, `medicos`, `consultas`, `prontuarios` e `prescricoes`).

### 2. Mapeamento de Queries e Endpoints Necessários
Para garantir o perfeito funcionamento das regras de negócio, foram identificadas as seguintes necessidades de backend:
* **Verificação de Disponibilidade:** Query dinâmica para validar se o médico já possui consulta no horário selecionado na grade antes de confirmar o agendamento.
* **Alertas de Sinais Vitais:** Endpoint para sinalizar automaticamente alterações de temperatura ou saturação na tela do prontuário.
* **Consultas Agregadas para Dashboard:** Queries utilizando `GROUP BY`, `COUNT` e `BETWEEN` para alimentar os cards e gráficos de desempenho do painel inicial.

---

## 👥 7. Divisão da Equipe de Desenvolvimento
1. **Modelagem e Integração com Banco:** Estruturação SQL e scripts de banco.
2. **Cadastro de Pacientes:** Interface de registro e gestão de pacientes.
3. **Cadastro de Médicos:** Interface e gerenciamento de médicos e CRM.
4. **Agendamento:** Módulo de calendário e marcação de consultas.
5. **Prontuário Médico:** Interface clínica de anotações e prescrições.
6. **Relatórios e Consultas:** Dashboard e exibição de métricas.
