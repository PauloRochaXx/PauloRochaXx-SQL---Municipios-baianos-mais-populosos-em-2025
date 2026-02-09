# Municípios mais populosos da Bahia – 2025

Este repositório reúne **consultas SQL aplicadas à organização e análise de dados públicos de população dos municípios da Bahia**, a partir de bases oficiais.

O projeto está estruturado em **quatro etapas principais**, desde a preparação e limpeza das tabelas até a elaboração de consultas analíticas sobre municípios com maior população.

---

## 📊 Fonte dos dados

As bases utilizadas neste projeto foram obtidas a partir de **fontes oficiais**:

1. **Estimativas de População do IBGE (2025)**  
   Base para o arquivo `pop2025_20260113.csv`.  
   [IBGE – Estimativas de População 2025](https://www.ibge.gov.br/estatisticas/sociais/populacao/9103-estimativas-de-populacao.html)

2. **DBT 2024 (Divisão Territorial Brasileira)**  
   Base utilizada para a criação da `tabela_cod_mun`.  
   [IBGE – Divisão Territorial Brasileira](https://www.ibge.gov.br/geociencias/organizacao-do-territorio/divisao-regional/23701-divisao-territorial-brasileira.html)

3. **Relatório de Territórios de Identidade da FUNCEB (2011)**  
   Fonte utilizada para a tabela `territorios_identidade_bahia`.  
   [FUNCEB – Anexo II: Relação de Territórios de Identidade](https://www.ba.gov.br/fundacaocultural/sites/site-funceb/files/migracao_2024/arquivos/File/editais-antigos/2011/06/qqd2011/docs/Anexo_II_-_Relacao_Territorios_de_Identidade.pdf)

O arquivo original de população foi **preparado e transformado em CSV**, mantendo rastreabilidade em relação às fontes oficiais.

---

## 🧹 Etapa 0 — Preparação e limpeza das tabelas

Antes da importação para o banco de dados, as tabelas foram submetidas a procedimentos de:

- Transformação das bases originais em arquivos CSV.  
- Limpeza inicial, mantendo apenas **colunas necessárias ao projeto**.  
- Padronização de nomes de campos e tipos de dados.  
- Garantia de consistência básica e adequação ao ambiente relacional.  

> O objetivo desta etapa foi assegurar que as tabelas estivessem prontas para importação, mantendo a estrutura essencial para o projeto.

---

## 🧱 Etapa 1 — Inspeção inicial das tabelas

Após a importação, foi realizada a **inspeção das tabelas** para identificar inconsistências e campos não preenchidos:

- Verificação das tabelas `POP2025_20260113`, `tabela_cod_mun` e `territorios_identidade_bahia`.  
- Identificação de ausência de preenchimento da coluna `cod_municipio` em algumas tabelas.  
- Detecção de colunas desnecessárias, como `column6` na tabela `tabela_cod_mun`.  

> Esta inspeção permitiu planejar o tratamento adequado dos dados.

---

## 🛠️ Etapa 2 — Tratamento das tabelas

As ações realizadas nesta etapa foram:

- Remoção de colunas desnecessárias.  
- Atualização da coluna `cod_municipio` nas tabelas `POP2025_20260113` e `territorios_identidade_bahia`, garantindo consistência entre as tabelas.  

> Essa etapa garantiu que todos os registros estivessem **integrados e aptos para análises confiáveis**.

---

## 🔎 Etapa 3 — Consultas analíticas

Foram desenvolvidas consultas SQL para análise dos municípios da Bahia, considerando:

- População superior a 100.000 habitantes.  
- Ordenação decrescente pelo número de habitantes.  
- Associação de cada município ao seu território correspondente.  

> Essas análises permitiram extrair informações relevantes sobre os municípios mais populosos do estado.

---

## 🛠️ Tecnologias utilizadas

- SQL Server  
- SQL Server Management Studio (SSMS)  
- T-SQL  
- Git e GitHub  

---

## 🎯 Objetivo do projeto

Aplicar conceitos de **tratamento, organização e análise de dados públicos**, utilizando SQL como ferramenta de apoio à extração de informações relevantes para **análise institucional e gestão pública**.

---

## 📌 Referência

Perfil GitHub:  
[https://github.com/PauloRochaXx](https://github.com/PauloRochaXx)

---

## 📌 Observação

Este projeto é um conjunto de repositórios voltado à **demonstração de uso prático das bases de dados**, com a finalidade de **assessorar a gestão na tomada de decisões**.
