--=================================================================================
--Remover colunas desnecessárias e padronizar códigos de município entre tabelas
--=================================================================================

-- Remove coluna desnecessária da tabela de códigos de municípios.
-- A coluna 'column6' não é utilizada nas análises, e sua remoção deixa a tabela mais enxuta
ALTER TABLE dbo.tabela_cod_mun
	DROP COLUMN column6;


-- Copia o código de município da tabela de códigos para a tabela de população
-- Garante que os registros em POP2025_20260113 estejam alinhados com a tabela de referência
UPDATE dbo.POP2025_20260113
	SET cod_municipio = dbo.tabela_cod_mun.cod_municipio
FROM dbo.POP2025_20260113
INNER JOIN dbo.tabela_cod_mun
	ON dbo.POP2025_20260113.nome_municipio = dbo.tabela_cod_mun.nome_municipio;


-- Copia o código de município da tabela de códigos para a tabela de territórios de identidade
-- Garante que os registros em territorios_identidade_bahia estejam alinhados com a tabela de referência
UPDATE dbo.territorios_identidade_bahia
	SET cod_municipio = dbo.tabela_cod_mun.cod_municipio
FROM dbo.territorios_identidade_bahia
INNER JOIN dbo.tabela_cod_mun
	ON dbo.territorios_identidade_bahia.nome_municipio = dbo.tabela_cod_mun.nome_municipio;
--=================================================================================

