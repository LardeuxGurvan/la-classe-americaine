-- Revert laclasse:initdb from pg

BEGIN;

DROP TABLE "quote", "actor";

COMMIT;
