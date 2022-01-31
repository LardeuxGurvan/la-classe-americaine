-- Deploy laclasse:initdb to pg

BEGIN;

CREATE TABLE "actor" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" TEXT NOT NULL UNIQUE,
    "created_at" TIMESTAMPTZ DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "quote" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "phrase" TEXT NOT NULL UNIQUE,
    "character" TEXT NOT NULL,
    "actor_id" INT NOT NULL REFERENCES "actor" ("id"),
    "created_at" TIMESTAMPTZ DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

COMMIT;
