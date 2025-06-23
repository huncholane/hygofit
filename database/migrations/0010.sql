SELECT setval('block_id_seq', (SELECT MAX(id) FROM block));
CREATE OR REPLACE FUNCTION insert_block_with_reps(p_difficulty INT, rep_ids INT[])
RETURNS VOID AS $$
DECLARE
  block_id BIGINT;
  idx INT := 1;
  rep_id INT;
BEGIN
  INSERT INTO block (difficulty) VALUES (p_difficulty) RETURNING id INTO block_id;

  FOREACH rep_id IN ARRAY rep_ids LOOP
    INSERT INTO blockrep (block, rep, position) VALUES (block_id, rep_id, idx);
    idx := idx + 1;
  END LOOP;
END;
$$ LANGUAGE plpgsql;

SELECT insert_block_with_reps(2, ARRAY[11,11,11,11]);
SELECT insert_block_with_reps(2, ARRAY[11,11,11,11]);
SELECT insert_block_with_reps(2, ARRAY[11,11,11,11]);
SELECT insert_block_with_reps(2, ARRAY[12,12,11,11]);
SELECT insert_block_with_reps(2, ARRAY[11,11,9,9]);
SELECT insert_block_with_reps(2, ARRAY[10,10,9,9]);
SELECT insert_block_with_reps(2, ARRAY[12,12,12,12]);
SELECT insert_block_with_reps(2, ARRAY[9,9,9,9]);
SELECT insert_block_with_reps(2, ARRAY[8,8,8,8]);
SELECT insert_block_with_reps(2, ARRAY[7,7,7,2]);
SELECT insert_block_with_reps(2, ARRAY[1,1,12,12]);
SELECT insert_block_with_reps(2, ARRAY[10,10,10,10]);
SELECT insert_block_with_reps(2, ARRAY[10,10,12,12]);
SELECT insert_block_with_reps(2, ARRAY[10,10,11,11]);
SELECT insert_block_with_reps(2, ARRAY[1,12,11,10]);
SELECT insert_block_with_reps(2, ARRAY[1,12,11,7]);
SELECT insert_block_with_reps(2, ARRAY[7,7,7,7]);
SELECT insert_block_with_reps(2, ARRAY[7,7,7,7]);
SELECT insert_block_with_reps(2, ARRAY[12,10,8,9]);
SELECT insert_block_with_reps(2, ARRAY[12,10,8,9]);

