-- artista definition

CREATE TABLE "artista" (
    "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
    "nome" varchar(255) NOT NULL, 
    "nome_artistico" varchar(255) NULL, 
    "data_nascimento" datetime NULL);


-- avaliacao definition

CREATE TABLE "avaliacao" (
    "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
    "nota" real NOT NULL, 
    "descricao" text NULL, 
    "created_at" datetime NOT NULL, 
    "updated_at" datetime NOT NULL);


-- categoria definition

CREATE TABLE "categoria" (
    "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
    "tipo" varchar(255) NOT NULL, 
    "created_at" datetime NOT NULL, 
    "updated_at" datetime NOT NULL);


-- filme definition

CREATE TABLE "filme" (
    "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
    "titulo" varchar(255) NOT NULL, 
    "sinopse" text NOT NULL, 
    "lancamento" datetime NOT NULL, 
    "created_at" datetime NOT NULL, 
    "updated_at" datetime NOT NULL);


-- filme_artista definition

CREATE TABLE "filme_artista" (
    "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
    "filme_id" bigint NOT NULL REFERENCES "filme" ("id") DEFERRABLE INITIALLY DEFERRED, 
    "artista_id" bigint NOT NULL REFERENCES "artista" ("id") DEFERRABLE INITIALLY DEFERRED);

CREATE UNIQUE INDEX "filme_artista_filme_id_artista_id_59156ee4_uniq" ON "filme_artista" ("filme_id", "artista_id");
CREATE INDEX "filme_artista_filme_id_21edbde7" ON "filme_artista" ("filme_id");
CREATE INDEX "filme_artista_artista_id_4b268404" ON "filme_artista" ("artista_id");


-- filme_avaliacao definition

CREATE TABLE "filme_avaliacao" (
    "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
    "filme_id" bigint NOT NULL REFERENCES "filme" ("id") DEFERRABLE INITIALLY DEFERRED, 
    "avaliacao_id" bigint NOT NULL REFERENCES "avaliacao" ("id") DEFERRABLE INITIALLY DEFERRED);

CREATE UNIQUE INDEX "filme_avaliacao_filme_id_avaliacao_id_8d6afe6f_uniq" ON "filme_avaliacao" ("filme_id", "avaliacao_id");
CREATE INDEX "filme_avaliacao_filme_id_188112d2" ON "filme_avaliacao" ("filme_id");
CREATE INDEX "filme_avaliacao_avaliacao_id_64c3d1f0" ON "filme_avaliacao" ("avaliacao_id");


-- filme_categoria definition

CREATE TABLE "filme_categoria" (
    "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
    "filme_id" bigint NOT NULL REFERENCES "filme" ("id") DEFERRABLE INITIALLY DEFERRED, 
    "categoria_id" bigint NOT NULL REFERENCES "categoria" ("id") DEFERRABLE INITIALLY DEFERRED);

CREATE UNIQUE INDEX "filme_categoria_filme_id_categoria_id_f55ba4f2_uniq" ON "filme_categoria" ("filme_id", "categoria_id");
CREATE INDEX "filme_categoria_filme_id_986c4b6e" ON "filme_categoria" ("filme_id");
CREATE INDEX "filme_categoria_categoria_id_a5335a3c" ON "filme_categoria" ("categoria_id");