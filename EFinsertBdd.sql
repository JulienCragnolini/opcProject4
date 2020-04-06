
INSERT INTO `label` (`category`) VALUES
('Dishe'),
('Dessert');

INSERT INTO `dishe` (`id_dish`, `name`, `description`, `price`, `id_lab`) VALUES 
(NULL, 'Compote de pommes', 'azertyuiop', 2.50, '2'),
(NULL, 'Salade de saucisses', 'qsdfghjklm', 7.50, '1'),
(NULL, 'Salade de fruits', 'wxcvbn', 3.50, '2'),
(NULL, 'Soupe aux potirons', 'aqwedctgb', 5.00, '1');

INSERT INTO `payment` (`id_pay`, `status`, `amount`, `payment_date`) VALUES 
(NULL, 'payé', 13.50, '2020-01-31 17:08:07'),
(NULL, 'payé', 28.36, '2020-01-31 17:10:52'),
(NULL, 'payé', 51.68, '2020-01-31 17:13:27'),
(NULL, 'payé', 11.23, '2020-01-31 17:19:02');

INSERT INTO `address` (`id_add`, `number`, `street`, `city`, `departement`, `ZIP`, `country`) VALUES 
(NULL, 8, 'rue du Soleil', 'Paris', 'idf', 75000, 'France'),
(NULL, 2, 'rue des prés', 'Paris', 'idf', 75000, 'France'),
(NULL, 3, 'rue des avions', 'Paris', 'idf', 75000, 'France'),
(NULL, 15, 'rue des fleurs', 'Paris', 'idf', 75000, 'France'),
(NULL, 3, 'rue des oiseaux', 'Paris', 'idf', 75000, 'France'),
(NULL, 15, 'rue des sapins', 'Paris', 'idf', 75000, 'France');

INSERT INTO `user` (`id_us`, `last_name`, `first_name`, `password`, `id_add`) VALUES 
(NULL, 'Meyer', 'Nicolas', 'android', '1'),
(NULL, 'Martin', 'Arthur', 'soulax', '2'),
(NULL, 'De Nicolas', 'Cédric', 'polype', '3'),
(NULL, 'Hinderer', 'Théo', 'jujujul', '4'),
(NULL, 'Zeh', 'Sarah', 'polype', '5'),
(NULL, 'Lecomte', 'Mathilde', 'jujujul', '6');

INSERT INTO `order` (`number`, `id_pay`, `status`, `date_ordered`, `date_delivred`, `id_add`, `id_us`) VALUES 
(2455, '1', 'livré', '2020-01-31 16:48:07', '2020-01-31 17:08:07', '1', '1'),
(2456, '2', 'livré', '2020-01-31 16:50:52', '2020-01-31 17:10:52', '2', '2'),
(2457, '3', 'en cours de livraison', '2020-01-31 16:53:27', '2020-01-31 17:10:52', '3', '3'),
(2458, '4', 'en cours de livraison', '2020-01-31 16:59:02', '2020-01-31 17:10:52', '4', '4');

INSERT INTO `order_dishe` (`number`, `id_dish`, `quantity_dishes`, `quantity_desserts`) VALUES 
(2455, '1', 0, 3),
(2456, '2', 4, 0),
(2457, '3', 0, 9),
(2458, '4', 6, 0);

INSERT INTO `administration` (`id_us`, `arriving_hour`, `departur_hour`) VALUES 
('3', '08:04:02', '17:04:02'),
('6', '08:04:15', '17:04:15');

INSERT INTO `customer` (`id_us`, `phone`, `email`) VALUES 
('1', '0645761346', 'meyer@gmail.com'),
('4', '0734531643', 'hinderer@gmail.com');

INSERT INTO `dellivery` (`id_us`, `status`, `position_x`, `position_y`, `quantity_dishes`, `quantity_desserts`) VALUES 
('2', 'libre', 9.3, 9.5, 5, 9),
('5', 'en livraison', 1.3, 1.5, 2, 3);