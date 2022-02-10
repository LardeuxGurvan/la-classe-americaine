-- Revert laclasse:seeding from pg

BEGIN;

DROP TABLE "quote", "actor";

COMMIT;
