INSERT INTO releases(db, rel_no, rel_date)
VALUES (
  'INTENZ',
  (SELECT MAX(rel_no)+1 FROM releases WHERE db = 'INTENZ'),
  sysdate);

INSERT INTO releases(db, rel_no, rel_date)
VALUES (
  'RHEA',
  (SELECT MAX(rel_no)+1 FROM releases WHERE db = 'RHEA'),
  sysdate);
