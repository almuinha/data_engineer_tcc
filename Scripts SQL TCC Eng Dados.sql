----------------------------------------
-- CRIAÇÃO DO ESQUEMA DE BANCO DE DADOS
----------------------------------------

CREATE SCHEMA ACID

-----------------------------------------
-- CRIAÇÃO DAS TABELAS DO BANCO DE DADOS
-----------------------------------------

------------------------------------------------------------
-- ACID.Acidentes_Transito - TABELA QUE RECEBE OS DADOS RAW
------------------------------------------------------------

CREATE TABLE ACID.Acidentes_Transito
	(
		 id                     VARCHAR(6)
		,pesid                  VARCHAR(20)
		,data_inversa           VARCHAR(10)
		,dia_semana             VARCHAR(30)
		,horario                VARCHAR(8)
		,uf                     VARCHAR(2)
		,br                     VARCHAR(3)
		,km                     VARCHAR(15)
		,municipio              VARCHAR(300)
		,causa_principal        VARCHAR(4000)
		,causa_acidente         VARCHAR(4000)
		,ordem_tipo_acidente    VARCHAR(5)
		,tipo_acidente          VARCHAR(800)
		,classificacao_acidente VARCHAR(200)
		,fase_dia               VARCHAR(100)
		,sentido_via            VARCHAR(100)
		,condicao_metereologica VARCHAR(100)
		,tipo_pista             VARCHAR(100)
		,tracado_via            VARCHAR(500)
		,uso_solo               VARCHAR(10)
		,id_veiculo             VARCHAR(20)
		,tipo_veiculo           VARCHAR(150)
		,marca                  VARCHAR(100)
		,ano_fabricacao_veiculo VARCHAR(4)
		,tipo_envolvido         VARCHAR(150)
		,estado_fisico          VARCHAR(200)
		,idade                  VARCHAR(10)
		,sexo                   VARCHAR(100)
		,ilesos                 VARCHAR(100)
		,feridos_leves          VARCHAR(100)
		,feridos_graves         VARCHAR(100)
		,mortos                 VARCHAR(100)
		,latitude               VARCHAR(50)
		,longitude              VARCHAR(50)
		,regional               VARCHAR(50)
		,delegacia              VARCHAR(50)
		,uop                    VARCHAR(100)
	)

-----------------
-- ACID.dados_uf
-----------------

CREATE TABLE ACID.dados_uf
	(
		 id_uf     UNIQUEIDENTIFIER NOT NULL
		,uf        VARCHAR(2)       NOT NULL
		,municipio VARCHAR(500)     NOT NULL
	)
	
ALTER TABLE ACID.dados_uf
ADD CONSTRAINT PK_dados_uf
PRIMARY KEY(id_uf)

-----------------------------
-- ACID.dados_causa_acidente
-----------------------------

CREATE TABLE ACID.dados_causa_acidente
(
	 id_causa_acidente UNIQUEIDENTIFIER
	,causa_acidente VARCHAR(800)
)

ALTER TABLE ACID.dados_causa_acidente
ADD CONSTRAINT PK_dados_causa_acidente
PRIMARY KEY(id_causa_acidente)

---------------------
-- ACID.dados_pessoa
---------------------

CREATE TABLE ACID.dados_pessoa
(
	 pesid          VARCHAR(50)  NOT NULL
	,tipo_envolvido VARCHAR(800) NOT NULL
	,estado_fisico  VARCHAR(500) NOT NULL
	,idade          VARCHAR(10)  NOT NULL
	,sexo           VARCHAR(100) NOT NULL
)

ALTER TABLE ACID.dados_pessoa
ADD CONSTRAINT PK_dados_pessoa
PRIMARY KEY(pesid);

----------------------
-- ACID.dados_veiculo
----------------------

CREATE TABLE ACID.dados_veiculo
(
	 id_veiculo             VARCHAR(50)  NOT NULL
	,tipo_veiculo           VARCHAR(800) NOT NULL
	,marca                  VARCHAR(500) NOT NULL
	,ano_fabricacao_veiculo VARCHAR(10)  NOT NULL
)

ALTER TABLE ACID.dados_veiculo
ADD CONSTRAINT PK_dados_veiculo
PRIMARY KEY(id_veiculo)

----------------------------
-- ACID.dados_tipo_acidente
----------------------------

CREATE TABLE ACID.dados_tipo_acidente
(
	 id_tipo_acidente UNIQUEIDENTIFIER NOT NULL
	,tipo_acidente    VARCHAR(1000)    NOT NULL
)

ALTER TABLE ACID.dados_tipo_acidente
ADD CONSTRAINT PK_dados_tipo_acidente
PRIMARY KEY(id_tipo_acidente)

-------------------------------------
-- ACID.dados_classificacao_acidente
-------------------------------------

CREATE TABLE ACID.dados_classificacao_acidente
(
	 id_classif_acidente    UNIQUEIDENTIFIER NOT NULL
	,classificacao_acidente VARCHAR(1000)    NOT NULL
)

ALTER TABLE ACID.dados_classificacao_acidente
ADD CONSTRAINT PK_dados_classificacao_acidente
PRIMARY KEY(id_classif_acidente)

-----------------
-- ACID.dados_br
-----------------

CREATE TABLE ACID.dados_br
(
	 id_br UNIQUEIDENTIFIER NOT NULL
	,br    VARCHAR(100)     NOT NULL
)

ALTER TABLE ACID.dados_br
ADD CONSTRAINT PK_dados_br
PRIMARY KEY(id_br)

-----------------
-- ACID.dados_km
-----------------

CREATE TABLE ACID.dados_km
(
	 id_km UNIQUEIDENTIFIER NOT NULL
	,km    VARCHAR(100)     NOT NULL
)

ALTER TABLE ACID.dados_km
ADD CONSTRAINT PK_dados_km
PRIMARY KEY(id_km)

-------------------------
-- ACID.dados_tipo_pista
-------------------------

CREATE TABLE ACID.dados_tipo_pista
(
	 id_tipo_pista UNIQUEIDENTIFIER NOT NULL
	,tipo_pista    VARCHAR(800)     NOT NULL
)

ALTER TABLE ACID.dados_tipo_pista
ADD CONSTRAINT PK_dados_tipo_pista
PRIMARY KEY(id_tipo_pista)

--------------------------
-- ACID.dados_tracado_via
--------------------------

CREATE TABLE ACID.dados_tracado_via
(
	 id_tracado_via UNIQUEIDENTIFIER NOT NULL
	,tracado_via    VARCHAR(800)     NOT NULL
)

ALTER TABLE ACID.dados_tracado_via
ADD CONSTRAINT PK_dados_tracado_via
PRIMARY KEY(id_tracado_via)

--------------------------
-- ACID.dados_sentido_via
--------------------------

CREATE TABLE ACID.dados_sentido_via
(
	 id_sentido_via UNIQUEIDENTIFIER NOT NULL
	,sentido_via    VARCHAR(800)     NOT NULL
)

ALTER TABLE ACID.dados_sentido_via
ADD CONSTRAINT PK_dados_sentido_via
PRIMARY KEY(id_sentido_via)

-----------------------
-- ACID.dados_fase_dia
-----------------------

CREATE TABLE ACID.dados_fase_dia
(
	 id_fase_dia UNIQUEIDENTIFIER NOT NULL
	,fase_dia    VARCHAR(800)     NOT NULL
)

ALTER TABLE ACID.dados_fase_dia
ADD CONSTRAINT PK_dados_fase_dia
PRIMARY KEY(id_fase_dia)

-------------------------------------
-- ACID.dados_condicao_meteorologica
-------------------------------------

CREATE TABLE ACID.dados_condicao_meteorologica
(
	 id_cond_met            UNIQUEIDENTIFIER NOT NULL
	,condicao_meteorologica VARCHAR(800)     NOT NULL
)

ALTER TABLE ACID.dados_condicao_meteorologica
ADD CONSTRAINT PK_dados_condicao_meteorologica
PRIMARY KEY(id_cond_met)

------------------------
-- ACID.dados_delegacia
------------------------

CREATE TABLE ACID.dados_delegacia
(
	 id_delegacia UNIQUEIDENTIFIER NOT NULL
	,regional     VARCHAR(800)     NOT NULL
	,delegacia    VARCHAR(800)     NOT NULL
	,uop          VARCHAR(800)     NOT NULL
)

ALTER TABLE ACID.dados_delegacia
ADD CONSTRAINT PK_dados_delegacia
PRIMARY KEY(id_delegacia)

-------------------
-- ACID.dados_data
-------------------

CREATE TABLE ACID.dados_data
	(
		 id_data_inversa UNIQUEIDENTIFIER NOT NULL
		,data_inversa    VARCHAR(30)      NOT NULL
		,dia_semana      VARCHAR(100)     NOT NULL
	)
	
ALTER TABLE ACID.dados_data
ADD CONSTRAINT PK_dados_data
PRIMARY KEY(id_data_inversa)

----------------------------
-- ACID.fato_dados_transito
----------------------------

CREATE TABLE ACID.fato_dados_transito
	(
		 id                  VARCHAR(50)      NOT NULL
		,id_data_inversa     UNIQUEIDENTIFIER NOT NULL
		,horario             VARCHAR(8)       NOT NULL
		,id_uf               UNIQUEIDENTIFIER NOT NULL
		,id_br               UNIQUEIDENTIFIER NOT NULL
		,id_km               UNIQUEIDENTIFIER NOT NULL
		,zona                VARCHAR(50)      NOT NULL
		,causa_principal     VARCHAR(4000)    NOT NULL
		,id_causa_acidente   UNIQUEIDENTIFIER NOT NULL
		,id_tipo_acidente    UNIQUEIDENTIFIER NOT NULL
		,ordem_tipo_acidente INT              NOT NULL
		,id_classif_acidente UNIQUEIDENTIFIER NOT NULL
		,id_fase_dia         UNIQUEIDENTIFIER NOT NULL
		,id_cond_met         UNIQUEIDENTIFIER NOT NULL
		,id_sentido_via      UNIQUEIDENTIFIER NOT NULL
		,id_tipo_pista       UNIQUEIDENTIFIER NOT NULL
		,id_tracado_via      UNIQUEIDENTIFIER NOT NULL
		,id_veiculo          VARCHAR(50)      NOT NULL
		,ilesos              VARCHAR(100)     NOT NULL
		,feridos_leves       VARCHAR(100)     NOT NULL
		,feridos_graves      VARCHAR(100)     NOT NULL
		,mortos              VARCHAR(100)     NOT NULL
		,pesid               VARCHAR(50)      NOT NULL
		,latitude            VARCHAR(50)      NOT NULL
		,longitude           VARCHAR(50)      NOT NULL
		,id_delegacia        UNIQUEIDENTIFIER NOT NULL
	)

ALTER TABLE ACID.fato_dados_transito
ADD CONSTRAINT FK_data
FOREIGN KEY (id_data_inversa)
REFERENCES ACID.dados_data(id_data_inversa)

ALTER TABLE ACID.fato_dados_transito
ADD CONSTRAINT FK_pessoa
FOREIGN KEY (pesid)
REFERENCES ACID.dados_pessoa(pesid)

ALTER TABLE ACID.fato_dados_transito
ADD CONSTRAINT FK_causa_acidente
FOREIGN KEY (id_causa_acidente)
REFERENCES ACID.dados_causa_acidente(id_causa_acidente)

ALTER TABLE ACID.fato_dados_transito
ADD CONSTRAINT FK_veiculo
FOREIGN KEY (id_veiculo)
REFERENCES ACID.dados_veiculo(id_veiculo)

ALTER TABLE ACID.fato_dados_transito
ADD CONSTRAINT FK_uf
FOREIGN KEY (id_uf)
REFERENCES ACID.dados_uf(id_uf)

ALTER TABLE ACID.fato_dados_transito
ADD CONSTRAINT FK_br
FOREIGN KEY (id_br)
REFERENCES ACID.dados_br(id_br)

ALTER TABLE ACID.fato_dados_transito
ADD CONSTRAINT FK_km
FOREIGN KEY (id_km)
REFERENCES ACID.dados_km(id_km)

ALTER TABLE ACID.fato_dados_transito
ADD CONSTRAINT FK_tipo_acidente
FOREIGN KEY (id_tipo_acidente)
REFERENCES ACID.dados_tipo_acidente(id_tipo_acidente)

ALTER TABLE ACID.fato_dados_transito
ADD CONSTRAINT FK_classif_acidente
FOREIGN KEY (id_classif_acidente)
REFERENCES ACID.dados_classificacao_acidente(id_classif_acidente)

ALTER TABLE ACID.fato_dados_transito
ADD CONSTRAINT FK_fase_dia
FOREIGN KEY (id_fase_dia)
REFERENCES ACID.dados_fase_dia(id_fase_dia)

ALTER TABLE ACID.fato_dados_transito
ADD CONSTRAINT FK_cond_met
FOREIGN KEY (id_cond_met)
REFERENCES ACID.dados_condicao_meteorologica(id_cond_met)

ALTER TABLE ACID.fato_dados_transito
ADD CONSTRAINT FK_sentido_via
FOREIGN KEY (id_sentido_via)
REFERENCES ACID.dados_sentido_via(id_sentido_via)

ALTER TABLE ACID.fato_dados_transito
ADD CONSTRAINT FK_tipo_pista
FOREIGN KEY (id_tipo_pista)
REFERENCES ACID.dados_tipo_pista(id_tipo_pista)

ALTER TABLE ACID.fato_dados_transito
ADD CONSTRAINT FK_tracado_via
FOREIGN KEY (id_tracado_via)
REFERENCES ACID.dados_tracado_via(id_tracado_via)

ALTER TABLE ACID.fato_dados_transito
ADD CONSTRAINT FK_delegacia
FOREIGN KEY (id_delegacia)
REFERENCES ACID.dados_delegacia(id_delegacia)


----------------------------------------------------
-- CARGAS DE DADOS PARA PREENCHER/ATUALIZAR TABELAS
----------------------------------------------------

-----------------
-- ACID.dados_uf
-----------------

SELECT DISTINCT
	 uf
	,municipio
INTO #temp_uf
FROM [ACID].[Acidentes_Transito]
ORDER BY uf;

MERGE ACID.dados_uf AS target_table
USING #temp_uf      AS source_table
   ON source_table.uf        = target_table.uf
  AND source_table.municipio = target_table.municipio

WHEN NOT MATCHED THEN
	INSERT VALUES
			(
				 newid()
				,source_table.uf
				,source_table.municipio
			);

DROP TABLE #temp_uf;

-----------------------------
-- ACID.dados_causa_acidente
-----------------------------

SELECT DISTINCT
	 causa_acidente
INTO #temp_causa_acidente
FROM [ACID].[Acidentes_Transito]
ORDER BY causa_acidente;

MERGE ACID.dados_causa_acidente AS target_table
USING #temp_causa_acidente      AS source_table
   ON source_table.causa_acidente = target_table.causa_acidente

WHEN NOT MATCHED THEN
	INSERT VALUES
			(
				 newid()
				,source_table.causa_acidente
			);

DROP TABLE #temp_causa_acidente;

---------------------
-- ACID.dados_pessoa
---------------------

SELECT DISTINCT
	  pesid
	 ,tipo_envolvido
	 ,estado_fisico
	 ,idade
	 ,sexo
INTO #temp_pessoa
FROM [ACID].[Acidentes_Transito]
ORDER BY pesid;

MERGE ACID.dados_pessoa AS target_table
USING #temp_pessoa      AS source_table
   ON source_table.pesid = target_table.pesid

WHEN NOT MATCHED THEN
	INSERT VALUES
			(
				 source_table.pesid
				,source_table.tipo_envolvido
				,source_table.estado_fisico
				,source_table.idade
				,source_table.sexo
			);

DROP TABLE #temp_pessoa;

----------------------
-- ACID.dados_veiculo
----------------------

SELECT DISTINCT
	  id_veiculo
	 ,tipo_veiculo
	 ,marca
	 ,ano_fabricacao_veiculo
INTO #temp_veiculo
FROM [ACID].[Acidentes_Transito]
ORDER BY id_veiculo;

MERGE ACID.dados_veiculo AS target_table
USING #temp_veiculo     AS source_table
   ON source_table.id_veiculo = target_table.id_veiculo

WHEN NOT MATCHED THEN
	INSERT VALUES
			(
				 source_table.id_veiculo
				,source_table.tipo_veiculo
				,source_table.marca
				,source_table.ano_fabricacao_veiculo
			);

DROP TABLE #temp_veiculo;

----------------------------
-- ACID.dados_tipo_acidente
----------------------------

SELECT DISTINCT
	 tipo_acidente
INTO #temp_tipo_acidente
FROM [ACID].[Acidentes_Transito]
ORDER BY tipo_acidente;

MERGE ACID.dados_tipo_acidente AS target_table
USING #temp_tipo_acidente      AS source_table
   ON source_table.tipo_acidente = target_table.tipo_acidente

WHEN NOT MATCHED THEN
	INSERT VALUES
			(
				 newid()
				,source_table.tipo_acidente
			);

DROP TABLE #temp_tipo_acidente;

-------------------------------------
-- ACID.dados_classificacao_acidente
-------------------------------------

SELECT DISTINCT
	 classificacao_acidente
INTO #temp_classificacao_acidente
FROM [ACID].[Acidentes_Transito]
ORDER BY classificacao_acidente;

MERGE ACID.dados_classificacao_acidente AS target_table
USING #temp_classificacao_acidente      AS source_table
   ON source_table.classificacao_acidente = target_table.classificacao_acidente

WHEN NOT MATCHED THEN
	INSERT VALUES
			(
				 newid()
				,source_table.classificacao_acidente
			);

DROP TABLE #temp_classificacao_acidente;

-----------------
-- ACID.dados_br
-----------------

SELECT DISTINCT
	 br
INTO #temp_br
FROM [ACID].[Acidentes_Transito]
ORDER BY br;

MERGE ACID.dados_br AS target_table
USING #temp_br      AS source_table
   ON source_table.br = target_table.br

WHEN NOT MATCHED THEN
	INSERT VALUES
			(
				 newid()
				,source_table.br
			);

DROP TABLE #temp_br;

-----------------
-- ACID.dados_km
-----------------

SELECT DISTINCT
	 km
INTO #temp_km
FROM [ACID].[Acidentes_Transito]
ORDER BY km;

MERGE ACID.dados_km AS target_table
USING #temp_km      AS source_table
   ON source_table.km = target_table.km

WHEN NOT MATCHED THEN
	INSERT VALUES
			(
				 newid()
				,source_table.km
			);

DROP TABLE #temp_km;

-------------------------
-- ACID.dados_tipo_pista
-------------------------

SELECT DISTINCT
	 tipo_pista
INTO #temp_tipo_pista
FROM [ACID].[Acidentes_Transito]
ORDER BY tipo_pista;

MERGE ACID.dados_tipo_pista AS target_table
USING #temp_tipo_pista      AS source_table
   ON source_table.tipo_pista = target_table.tipo_pista

WHEN NOT MATCHED THEN
	INSERT VALUES
			(
				 newid()
				,source_table.tipo_pista
			);

DROP TABLE #temp_tipo_pista;

--------------------------
-- ACID.dados_tracado_via
--------------------------

SELECT DISTINCT
	 tracado_via
INTO #temp_tracado_via
FROM [ACID].[Acidentes_Transito]
ORDER BY tracado_via;

MERGE ACID.dados_tracado_via AS target_table
USING #temp_tracado_via      AS source_table
   ON source_table.tracado_via = target_table.tracado_via

WHEN NOT MATCHED THEN
	INSERT VALUES
			(
				 newid()
				,source_table.tracado_via
			);

DROP TABLE #temp_tracado_via;

--------------------------
-- ACID.dados_sentido_via
--------------------------

SELECT DISTINCT
	 sentido_via
INTO #temp_sentido_via
FROM [ACID].[Acidentes_Transito]
ORDER BY sentido_via;

MERGE ACID.dados_sentido_via AS target_table
USING #temp_sentido_via      AS source_table
   ON source_table.sentido_via = target_table.sentido_via

WHEN NOT MATCHED THEN
	INSERT VALUES
			(
				 newid()
				,source_table.sentido_via
			);

DROP TABLE #temp_sentido_via;

-----------------------
-- ACID.dados_fase_dia
-----------------------

SELECT DISTINCT
	 fase_dia
INTO #temp_fase_dia
FROM [ACID].[Acidentes_Transito]
ORDER BY fase_dia;

MERGE ACID.dados_fase_dia AS target_table
USING #temp_fase_dia      AS source_table
   ON source_table.fase_dia = target_table.fase_dia

WHEN NOT MATCHED THEN
	INSERT VALUES
			(
				 newid()
				,source_table.fase_dia
			);

DROP TABLE #temp_fase_dia;

-------------------------------------
-- ACID.dados_condicao_meteorologica
-------------------------------------

SELECT DISTINCT
	 condicao_metereologica
INTO #temp_condicao_meteorologica
FROM [ACID].[Acidentes_Transito]
ORDER BY condicao_metereologica;

MERGE ACID.dados_condicao_meteorologica AS target_table
USING #temp_condicao_meteorologica      AS source_table
   ON source_table.condicao_metereologica = target_table.condicao_meteorologica

WHEN NOT MATCHED THEN
	INSERT VALUES
			(
				 newid()
				,source_table.condicao_metereologica
			);

DROP TABLE #temp_condicao_meteorologica;

------------------------
-- ACID.dados_delegacia
------------------------

SELECT DISTINCT
	  regional
	 ,delegacia
	 ,uop
INTO #temp_delegacia
FROM [ACID].[Acidentes_Transito]
ORDER BY regional
		,delegacia
		,uop;

MERGE ACID.dados_delegacia AS target_table
USING #temp_delegacia      AS source_table
   ON source_table.regional  = target_table.regional
  AND source_table.delegacia = target_table.delegacia
  AND source_table.uop       = target_table.uop

WHEN NOT MATCHED THEN
	INSERT VALUES
			(
				 newid()
				,source_table.regional
				,source_table.delegacia
				,source_table.uop
			);

DROP TABLE #temp_delegacia;

-------------------
-- ACID.dados_data
-------------------

SELECT DISTINCT
	  data_inversa
	 ,dia_semana
INTO #temp_data_inversa
FROM [ACID].[Acidentes_Transito]
ORDER BY data_inversa;

MERGE ACID.dados_data    AS target_table
USING #temp_data_inversa AS source_table
   ON source_table.data_inversa = target_table.data_inversa
  AND source_table.dia_semana   = target_table.dia_semana

WHEN NOT MATCHED THEN
	INSERT VALUES
			(
				 newid()
				,source_table.data_inversa
				,source_table.dia_semana
			);

DROP TABLE #temp_data_inversa;

----------------------------------------------------------------------------------------
-- PROCEDURE PARA APLICAR TRANSFORMAÇÕES NOS DADOS E REALIZAR A INGESTÃO NA TABELA FATO
----------------------------------------------------------------------------------------

CREATE PROCEDURE ACID.sp_insert_dados_fato @ano VARCHAR(4)

AS

SELECT
	 id
	,pesid
	,data_inversa
	,dia_semana
	,horario
	,uf
	,br
	,km
	,causa_principal
	,causa_acidente
	,ordem_tipo_acidente
	,tipo_acidente
	,classificacao_acidente
	,fase_dia
	,sentido_via
	,condicao_metereologica AS condicao_meteorologica
	,tipo_pista
	,tracado_via
	,CASE
		WHEN uso_solo = 'Não' THEN 'Rural'
		WHEN uso_solo = 'Sim' THEN 'Urbano'
	 END AS zona
	,id_veiculo
	,ilesos
	,feridos_leves
	,feridos_graves
	,mortos
	,latitude
	,longitude
	,regional
	,delegacia
	,uop
INTO #temp_dados_fato
FROM [ACID].[Acidentes_Transito]
WHERE YEAR(data_inversa) = @ano;

ALTER TABLE #temp_dados_fato
ADD id_uf               UNIQUEIDENTIFIER
   ,id_br               UNIQUEIDENTIFIER
   ,id_km               UNIQUEIDENTIFIER
   ,id_causa_acidente   UNIQUEIDENTIFIER
   ,id_tipo_acidente    UNIQUEIDENTIFIER
   ,id_classif_acidente UNIQUEIDENTIFIER
   ,id_fase_dia         UNIQUEIDENTIFIER
   ,id_sentido_via      UNIQUEIDENTIFIER
   ,id_cond_met         UNIQUEIDENTIFIER
   ,id_tipo_pista       UNIQUEIDENTIFIER
   ,id_tracado_via      UNIQUEIDENTIFIER
   ,id_delegacia        UNIQUEIDENTIFIER
   ,id_data_inversa     UNIQUEIDENTIFIER;

    UPDATE #temp_dados_fato
       SET #temp_dados_fato.id_uf = dados_uf.id_uf
      FROM #temp_dados_fato
INNER JOIN [ACID].[dados_uf] dados_uf
        ON #temp_dados_fato.uf = dados_uf.uf

	UPDATE #temp_dados_fato
       SET #temp_dados_fato.id_br = dados_br.id_br
      FROM #temp_dados_fato
INNER JOIN [ACID].[dados_br] dados_br
        ON #temp_dados_fato.br = dados_br.br

	UPDATE #temp_dados_fato
       SET #temp_dados_fato.id_km = dados_km.id_km
      FROM #temp_dados_fato
INNER JOIN [ACID].[dados_km] dados_km
        ON #temp_dados_fato.km = dados_km.km
		
	UPDATE #temp_dados_fato
       SET #temp_dados_fato.id_causa_acidente = dados_causa_acidente.id_causa_acidente
      FROM #temp_dados_fato
INNER JOIN [ACID].[dados_causa_acidente] dados_causa_acidente
        ON #temp_dados_fato.causa_acidente = dados_causa_acidente.causa_acidente

	UPDATE #temp_dados_fato
       SET #temp_dados_fato.id_tipo_acidente = dados_tipo_acidente.id_tipo_acidente
      FROM #temp_dados_fato
INNER JOIN [ACID].[dados_tipo_acidente] dados_tipo_acidente
        ON #temp_dados_fato.tipo_acidente = dados_tipo_acidente.tipo_acidente

	UPDATE #temp_dados_fato
       SET #temp_dados_fato.id_classif_acidente = dados_classif_acidente.id_classif_acidente
      FROM #temp_dados_fato
INNER JOIN [ACID].[dados_classificacao_acidente] dados_classif_acidente
        ON #temp_dados_fato.classificacao_acidente = dados_classif_acidente.classificacao_acidente

	UPDATE #temp_dados_fato
       SET #temp_dados_fato.id_fase_dia = dados_fase_dia.id_fase_dia
      FROM #temp_dados_fato
INNER JOIN [ACID].[dados_fase_dia] dados_fase_dia
        ON #temp_dados_fato.fase_dia = dados_fase_dia.fase_dia

	UPDATE #temp_dados_fato
       SET #temp_dados_fato.id_sentido_via = dados_sentido_via.id_sentido_via
      FROM #temp_dados_fato
INNER JOIN [ACID].[dados_sentido_via] dados_sentido_via
        ON #temp_dados_fato.sentido_via = dados_sentido_via.sentido_via

	UPDATE #temp_dados_fato
       SET #temp_dados_fato.id_cond_met = dados_cond_met.id_cond_met
      FROM #temp_dados_fato
INNER JOIN [ACID].[dados_condicao_meteorologica] dados_cond_met
        ON #temp_dados_fato.condicao_meteorologica = dados_cond_met.condicao_meteorologica

	UPDATE #temp_dados_fato
       SET #temp_dados_fato.id_tipo_pista = dados_tipo_pista.id_tipo_pista
      FROM #temp_dados_fato
INNER JOIN [ACID].[dados_tipo_pista] dados_tipo_pista
        ON #temp_dados_fato.tipo_pista = dados_tipo_pista.tipo_pista

	UPDATE #temp_dados_fato
       SET #temp_dados_fato.id_tracado_via = dados_tracado_via.id_tracado_via
      FROM #temp_dados_fato
INNER JOIN [ACID].[dados_tracado_via] dados_tracado_via
        ON #temp_dados_fato.tracado_via = dados_tracado_via.tracado_via

	UPDATE #temp_dados_fato
       SET #temp_dados_fato.id_delegacia = dados_delegacia.id_delegacia
      FROM #temp_dados_fato
INNER JOIN [ACID].[dados_delegacia] dados_delegacia
        ON #temp_dados_fato.delegacia = dados_delegacia.delegacia
	   AND #temp_dados_fato.regional  = dados_delegacia.regional
	   AND #temp_dados_fato.uop       = dados_delegacia.uop

	UPDATE #temp_dados_fato
       SET #temp_dados_fato.id_data_inversa = dados_data.id_data_inversa
      FROM #temp_dados_fato
INNER JOIN [ACID].[dados_data] dados_data
        ON #temp_dados_fato.data_inversa = dados_data.data_inversa
	   AND #temp_dados_fato.dia_semana   = dados_data.dia_semana

ALTER TABLE #temp_dados_fato
DROP COLUMN
	 uf
	,br
	,km
	,tipo_acidente
	,classificacao_acidente
	,fase_dia
	,sentido_via
	,condicao_meteorologica
	,tipo_pista
	,tracado_via
	,regional
	,delegacia
	,uop

INSERT INTO [ACID].[fato_dados_transito]
SELECT
	 id
	,id_data_inversa
	,horario
	,id_uf
	,id_br
	,id_km
	,zona
	,causa_principal
	,id_causa_acidente
	,id_tipo_acidente
	,ordem_tipo_acidente
	,id_classif_acidente
	,id_fase_dia
	,id_cond_met
	,id_sentido_via
	,id_tipo_pista
	,id_tracado_via
	,id_veiculo
	,ilesos
	,feridos_leves
	,feridos_graves
	,mortos
	,pesid
	,latitude
	,longitude
	,id_delegacia
FROM #temp_dados_fato

DROP TABLE #temp_dados_fato;

