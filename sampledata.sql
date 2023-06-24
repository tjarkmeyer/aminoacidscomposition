INSERT INTO base_foodcategory (id, name, description, created, updated) VALUES('3ebafec12eda4defbe08b00c64d3cbd6','Fruits','All kinds of fruits.','2023-06-21 14:12:35.169382','2023-06-21 14:12:35.169445');
INSERT INTO base_foodcategory (id, name, description, created, updated) VALUES('c0b46268298c4feca9b90229f706b55a','Vegetables','All kinds of vegetables.','2023-06-21 14:12:44.106372','2023-06-21 14:12:44.106415');

INSERT INTO base_food (id, name, created, updated, food_category_id, makros_id) VALUES('f361e78ca53749baacd02139de6a2ee9','Broccoli (Cooked)','Broccoli (Cooked)','2023-06-21 14:33:15.578743','2023-06-21 14:29:47.701003','c0b46268298c4feca9b90229f706b55a','b7f84bf8b6cb4d95a64128e5d954c179');
INSERT INTO base_food (id, name, created, updated, food_category_id, makros_id) VALUES('48fbc72279254a3a923005fda76d1c60','Apples','Apples per 100g','2023-06-21 14:32:35.048498','2023-06-21 14:31:57.190774','3ebafec12eda4defbe08b00c64d3cbd6','0627c2ca104f4874b9922cc9b184c2d4');

INSERT INTO base_food_nutrients (id, food_id, foodnutrient_id ) VALUES(1,'f361e78ca53749baacd02139de6a2ee9','bc4ba58932fd4f8ca31b718db6d9cb62');
INSERT INTO base_food_nutrients (id, food_id, foodnutrient_id) VALUES(2,'48fbc72279254a3a923005fda76d1c60','5eb1c78163684331bd63eb89a9b85801');
INSERT INTO base_food_nutrients (id, food_id, foodnutrient_id) VALUES(3,'48fbc72279254a3a923005fda76d1c60','8c5b685c469343d5b389033048ae05f6');
INSERT INTO base_food_nutrients (id, food_id, foodnutrient_id) VALUES(4,'48fbc72279254a3a923005fda76d1c60','6f48459c0ef847ee989f01055b82e2cc');
INSERT INTO base_food_nutrients (id, food_id, foodnutrient_id) VALUES(5,'f361e78ca53749baacd02139de6a2ee9','c258bddce95b4416a6b007bdd8233e7e');

INSERT INTO base_foodnutrient (id, created, updated, nutrient_id, amount) VALUES('bc4ba58932fd4f8ca31b718db6d9cb62','2023-06-21 14:29:02.359891','2023-06-21 14:29:02.359906','2f4754fcf3c5434e80c66117fdd50be5',31);
INSERT INTO base_foodnutrient (id, created, updated, nutrient_id, amount) VALUES('5eb1c78163684331bd63eb89a9b85801','2023-06-21 14:31:35.257431','2023-06-21 14:31:35.257518','1ce107aff674486cba8648af12bbfdb2',5);
INSERT INTO base_foodnutrient (id, created, updated, nutrient_id, amount) VALUES('8c5b685c469343d5b389033048ae05f6','2023-06-21 14:32:10.279916','2023-06-21 14:32:10.279956','c502f321cfe64b4dbf6506c326e79e62',12);
INSERT INTO base_foodnutrient (id, created, updated, nutrient_id, amount) VALUES('6f48459c0ef847ee989f01055b82e2cc','2023-06-21 14:32:30.568688','2023-06-21 14:32:30.568785','98aee85dabde451ca114fc3bead112e9',12);
INSERT INTO base_foodnutrient (id, created, updated, nutrient_id, amount) VALUES('c258bddce95b4416a6b007bdd8233e7e','2023-06-21 14:33:08.466623','2023-06-21 14:33:08.466638','98aee85dabde451ca114fc3bead112e9',153);

INSERT INTO base_makro (id, fat, carbohydrate, created, updated, protein) VALUES('b7f84bf8b6cb4d95a64128e5d954c179',0.4,7.20,'2023-06-21 14:25:40.815313','2023-06-21 14:25:40.815359',2.39);
INSERT INTO base_makro (id, fat, carbohydrate, created, updated, protein) VALUES('0627c2ca104f4874b9922cc9b184c2d4',0.2,14,'2023-06-21 14:31:15.350129','2023-06-21 14:31:15.350173',0.3);

INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('d8419b6e3f0b41cdab5ff8e5a10aa660','Tryptophan','mg','2023-06-21 14:13:21.763076','2023-06-21 14:13:21.763166',280);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('1ce107aff674486cba8648af12bbfdb2','Histidine','mg','2023-06-21 14:13:29.294343','2023-06-21 14:13:29.294387',700);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('eada37c455ad40c98852f387956f57ae','Threonine','mg','2023-06-21 14:13:37.813782','2023-06-21 14:13:37.813835',1050);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('e344dca318144b15b78d51bfd689d9b2','Isoleucine','mg','2023-06-21 14:13:45.850640','2023-06-21 14:13:45.850681',1400);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('c502f321cfe64b4dbf6506c326e79e62','Lysine','mg','2023-06-21 14:13:54.321736','2023-06-21 14:13:54.321774',2100);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('1886fb5532c64c2cb7af05ac5d09cbcb','Leucine','mg','2023-06-21 14:14:02.940574','2023-06-21 14:14:02.940621',2730);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('864f835f87824c23ac81c35d99f42efc','Methionine','mg','2023-06-21 14:14:12.148208','2023-06-21 14:14:12.148242',728);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('2f4754fcf3c5434e80c66117fdd50be5','Cystine','mg','2023-06-21 14:14:22.258611','2023-06-21 14:14:22.258671',287);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('f59a59eea265482c8f4ffa70ecc7009c','Phenylalanine','mg','2023-06-21 14:14:31.899298','2023-06-21 14:14:31.899350',875);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('acf5a07d56dc4afba91b52b4998ffda0','Tyrosine','mg','2023-06-21 14:14:40.666733','2023-06-21 14:14:40.666769',875);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('98aee85dabde451ca114fc3bead112e9','Valine','mg','2023-06-21 14:14:53.090832','2023-06-21 14:14:53.090874',1820);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('57826eae7dd54c43922f57c3ecf10c50','Arginine','mg','2023-06-21 14:20:45.590539','2023-06-21 14:20:45.590579',NULL);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('f327396c00c84c0d887b5ad200aaf6ed','Alanine','mg','2023-06-21 14:20:56.243756','2023-06-21 14:20:56.243792',NULL);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('c47e1c47851e47588fabf002c651ab99','Aspartic Acid','mg','2023-06-21 14:21:07.466781','2023-06-21 14:21:07.466825',NULL);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('6d5d0f5ddd4142ba8f9b5f69f029af43','Glutamic Acid','mg','2023-06-21 14:21:21.403711','2023-06-21 14:21:21.403752',NULL);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('84fc32b13a7b4300bd7ce2934a8c6c1e','Glycine','mg','2023-06-21 14:21:29.507074','2023-06-21 14:21:29.507106',NULL);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('e24abe9df3fd4a60ba433fb2288b49c0','Proline','mg','2023-06-21 14:21:35.959237','2023-06-21 14:21:35.959274',NULL);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('fcc23c7ff0d54a5f8e4ddd76becd1e44','Serine','mg','2023-06-21 14:21:41.499928','2023-06-21 14:21:41.499979',NULL);
INSERT INTO base_nutrient (id, name, unit_name, created, updated, intake) VALUES('054e4830f7f34c448dda2b0bc52622e1','Hydroxyproline','mg','2023-06-21 14:21:48.089041','2023-06-21 14:21:48.089103',NULL);
