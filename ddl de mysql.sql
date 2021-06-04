-- flix.artista definition

CREATE TABLE `artista` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `nome_artistico` varchar(255) DEFAULT NULL,
  `data_nascimento` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- flix.avaliacao definition

CREATE TABLE `avaliacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nota` double NOT NULL,
  `descricao` longtext,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- flix.categoria definition

CREATE TABLE `categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- flix.filme definition

CREATE TABLE `filme` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `sinopse` longtext NOT NULL,
  `lancamento` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- flix.filme_artista definition

CREATE TABLE `filme_artista` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `filme_id` bigint NOT NULL,
  `artista_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filme_artista_filme_id_artista_id_59156ee4_uniq` (`filme_id`,`artista_id`),
  KEY `filme_artista_filme_id_21edbde7` (`filme_id`),
  KEY `filme_artista_artista_id_4b268404` (`artista_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- flix.filme_avaliacao definition

CREATE TABLE `filme_avaliacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `filme_id` bigint NOT NULL,
  `avaliacao_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filme_avaliacao_filme_id_avaliacao_id_8d6afe6f_uniq` (`filme_id`,`avaliacao_id`),
  KEY `filme_avaliacao_filme_id_188112d2` (`filme_id`),
  KEY `filme_avaliacao_avaliacao_id_64c3d1f0` (`avaliacao_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- flix.filme_categoria definition

CREATE TABLE `filme_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `filme_id` bigint NOT NULL,
  `categoria_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filme_categoria_filme_id_categoria_id_f55ba4f2_uniq` (`filme_id`,`categoria_id`),
  KEY `filme_categoria_filme_id_986c4b6e` (`filme_id`),
  KEY `filme_categoria_categoria_id_a5335a3c` (`categoria_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;