-- Revert laclasse:initdb from pg

BEGIN;

DROP TABLE if exists "quote", "actor";

COMMIT;
