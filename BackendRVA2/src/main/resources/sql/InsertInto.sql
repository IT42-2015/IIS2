INSERT INTO "dobavljac"("id", "naziv", "adresa", "kontakt")
VALUES(1, 'AD Imlek', 'Industrijsko naselje bb, Padinska skela, Beograd', '+381 11 30 50 505');
INSERT INTO "dobavljac"("id", "naziv", "adresa", "kontakt")
VALUES(2, 'Henkel Srbija', 'Bulevar oslobodenja 383, 11040 Beograd, Srbija', '+381 11 20 72 200');
INSERT INTO "dobavljac"("id", "naziv", "adresa", "kontakt")
VALUES(3, 'Fruit D.O.O.', 'Justina Popovica 3, 11080 Zemun, Beograd', '+381 11 3143 171');
INSERT INTO "dobavljac"("id", "naziv", "adresa", "kontakt")
VALUES(4, 'CENTROPROIZVOD', 'DOBANOVACKI PUT B.B. 11271, SURCIN', '+381 11 3773 600');

INSERT INTO "artikl"("id", "naziv", "proizvodjac")
VALUES(1, 'Moja Kravica sveže mleko 2,8% MM 1l', 'AD Imlek');
INSERT INTO "artikl"("id", "naziv", "proizvodjac")
VALUES(2, 'Moja Kravica dugotrajno mleko 3,2% MM 1l', 'AD Imlek');
INSERT INTO "artikl"("id", "naziv", "proizvodjac")
VALUES(3, 'Moja Kravica Beli sir 1kg', 'AD Imlek');

INSERT INTO "artikl"("id", "naziv", "proizvodjac")
VALUES(4, 'Persil Regular Prašak 2kg', 'Henkel Srbija');
INSERT INTO "artikl"("id", "naziv", "proizvodjac")
VALUES(5, 'Persil Regular Gel 2l', 'Henkel Srbija');
INSERT INTO "artikl"("id", "naziv", "proizvodjac")
VALUES(6, 'Persil Duo-Caps Color pak', 'Henkel Srbija');

INSERT INTO "artikl"("id", "naziv", "proizvodjac")
VALUES(7, 'Jagoda', 'Fruit D.O.O.');
INSERT INTO "artikl"("id", "naziv", "proizvodjac")
VALUES(8, 'Jabuka', 'Fruit D.O.O.');
INSERT INTO "artikl"("id", "naziv", "proizvodjac")
VALUES(9, 'Kajsija', 'Fruit D.O.O.');

INSERT INTO "artikl"("id", "naziv", "proizvodjac")
VALUES(10, 'Šlag pena', 'CENTROPROIZ?VOD');
INSERT INTO "artikl"("id", "naziv", "proizvodjac")
VALUES(11, 'Puding vanila', 'CENTROPROIZ?VOD');
INSERT INTO "artikl"("id", "naziv", "proizvodjac")
VALUES(12, 'Puding jagoda', 'CENTROPROIZ?VOD');

INSERT INTO "porudzbina"("id", "datum", "dobavljac", "isporuceno", "iznos", "placeno")
VALUES (1, to_date('01.03.2017.', 'dd.mm.yyyy.'), 1, to_date('01.03.2017.', 'dd.mm.yyyy.'), 0, true);
INSERT INTO "porudzbina"("id", "datum", "dobavljac", "isporuceno", "iznos", "placeno")
VALUES (2, to_date('21.02.2017.', 'dd.mm.yyyy.'), 2, to_date('03.03.2017.', 'dd.mm.yyyy.'), 0, false);
INSERT INTO "porudzbina"("id", "datum", "dobavljac", "isporuceno", "iznos", "placeno")
VALUES (3, to_date('18.02.2017.', 'dd.mm.yyyy.'), 3, to_date('01.03.2017.', 'dd.mm.yyyy.'), 0, true);
INSERT INTO "porudzbina"("id", "datum", "dobavljac", "isporuceno", "iznos", "placeno")
VALUES (4, to_date('11.02.2017.', 'dd.mm.yyyy.'), 4, to_date('04.03.2017.', 'dd.mm.yyyy.'), 0, true);
INSERT INTO "porudzbina"("id", "datum", "dobavljac", "isporuceno", "iznos", "placeno")
VALUES (5, to_date('01.03.2017.', 'dd.mm.yyyy.'), 4, to_date('03.03.2017.', 'dd.mm.yyyy.'), 0, false);

INSERT INTO "stavka_porudzbine"("id", "porudzbina", "redni_broj", "artikl", "kolicina", "jedinica_mere", "cena")
VALUES (1, 1, 1, 1, 20, 'komad', 100);
INSERT INTO "stavka_porudzbine"("id", "porudzbina", "redni_broj", "artikl", "kolicina", "jedinica_mere", "cena")
VALUES (2, 1, 2, 2, 30, 'komad', 150);
INSERT INTO "stavka_porudzbine"("id", "porudzbina", "redni_broj", "artikl", "kolicina", "jedinica_mere", "cena")
VALUES (3, 1, 3, 3, 15, 'komad', 500);

INSERT INTO "stavka_porudzbine"("id", "porudzbina", "redni_broj", "artikl", "kolicina", "jedinica_mere", "cena")
VALUES (4, 2, 1, 4, 30, 'komad', 1000);
INSERT INTO "stavka_porudzbine"("id", "porudzbina", "redni_broj", "artikl", "kolicina", "jedinica_mere", "cena")
VALUES (5, 2, 2, 5, 18, 'komad', 1300);
INSERT INTO "stavka_porudzbine"("id", "porudzbina", "redni_broj", "artikl", "kolicina", "jedinica_mere", "cena")
VALUES (6, 2, 3, 6, 20, 'komad', 500);

INSERT INTO "stavka_porudzbine"("id", "porudzbina", "redni_broj", "artikl", "kolicina", "jedinica_mere", "cena")
VALUES (7, 3, 1, 7, 30, 'kg', 200);
INSERT INTO "stavka_porudzbine"("id", "porudzbina", "redni_broj", "artikl", "kolicina", "jedinica_mere", "cena")
VALUES (8, 3, 2, 8, 50, 'kg', 80);
INSERT INTO "stavka_porudzbine"("id", "porudzbina", "redni_broj", "artikl", "kolicina", "jedinica_mere", "cena")
VALUES (9, 3, 3, 9, 25, 'kg', 130);

INSERT INTO "stavka_porudzbine"("id", "porudzbina", "redni_broj", "artikl", "kolicina", "jedinica_mere", "cena")
VALUES (10, 4, 1, 10, 5, 'kg', 300);
INSERT INTO "stavka_porudzbine"("id", "porudzbina", "redni_broj", "artikl", "kolicina", "jedinica_mere", "cena")
VALUES (11, 4, 2, 11, 2, 'kg', 500);
INSERT INTO "stavka_porudzbine"("id", "porudzbina", "redni_broj", "artikl", "kolicina", "jedinica_mere", "cena")
VALUES (12, 4, 3, 12, 3, 'kg', 400);

INSERT INTO "stavka_porudzbine"("id", "porudzbina", "redni_broj", "artikl", "kolicina", "jedinica_mere", "cena")
VALUES (13, 5, 1, 11, 10, 'kg', 300);
INSERT INTO "stavka_porudzbine"("id", "porudzbina", "redni_broj", "artikl", "kolicina", "jedinica_mere", "cena")
VALUES (14, 5, 2, 12, 10, 'kg', 500);

