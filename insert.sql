INSERT INTO `broker` (`Name`, `Id`, `Years_Active`, `Commission`) VALUES
('Chirayush', 1, 3, 15),
('Aakansha', 2, 2, 12),
('Arun', 3, 5, 9),
('Ankit', 4, 1, 4),
('Harish', 5, 1, 7);

INSERT INTO `stock` (`CurrentPrice`, `Low`, `High`, `Stock_Symbol`, `Open_Price`, `Stock_Id`) VALUES
('1239.95', '1251.10', '1349.75', 'M&M', '1254.00', 1),
('228.75', '233.05', '244.20', 'ICICIBANK', '233.10', 2),
('2459.50', '2473.00', '2614.50', 'BAJAJ-AUTO', '2474.70', 3),
('127.30', '128.20', '135.45', 'BHEL', '128.20', 4),
('3573.70', '3606.60', '3745.35', 'MARUTHI', '3613.00', 5),
('569.55', '580.55', '591.90', 'WIPRO', '583.00', 6),
('1182.20', '1166.35', '1194.95', 'INFY', '1194.95', 7),
('233.60', '232.00', '237.95', 'ADANIPORTS', '235.00', 8),
('395.80', '398.15', '411.75', 'TATAMOTORS', '400.00', 9),
('1090.50', '1093.65', '1117.45', 'HDFC', '1098.50', 10);


INSERT INTO `company` (`Name`, `Net_Worth`, `Volume`, `Stock_Id`) VALUES
('Mahindra & Mahindra', '359599139.45', 290011, 1),
('ICICI Bank', '5465748840.00', 23894084, 2),
('Bajaj Auto Ltd', '1154432731.50', 469377, 3),
('BHEL', '1535378411.90', 12061103, 4),
('Maruthi Suzuki', '3883326546.66', 1092727, 5),
('Wipro', '1152705654.96', 2001562, 6),
('Infosys', '7396915000.47', 6255693, 7),
('Adani Ports', '661150604.80', 2830268, 8),
('Tata Motors Ltd', '4897278917.00', 12373115, 9),
('HDFC', '3665774637.00', 3361554, 10);





INSERT INTO `market` (`id`, `name`) VALUES
(1, 'NYSE'),
(2, 'BSE');

INSERT INTO `trader` (`Id`, `Name`, `Years_Active`) VALUES
(1, 'Abhinav', 3),
(2, 'Aniket', 5),
(3, 'Akshay', 4),
(4, 'Abhimanyu', 5),
(5, 'Abhinand', 6),
(6, 'Aakash', 2),
(7, 'Bhargav', 1);

INSERT INTO `owns` (`Trader_id`, `Stock_id`, `Volume`) VALUES
(1, 5, 100),
(2, 3, 150),
(2, 6, 200),
(4, 4, 50),
(7, 1, 150),
(1, 6, 500),
(4, 3, 5000),
(5, 5, 10000);


INSERT INTO `partof` (`Stock_id`, `M_id`) VALUES
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 1),
(7, 1),
(7, 2),
(8, 2),
(9, 2),
(10, 1);











INSERT INTO `transaction` (`Bid`, `Stock_Id`, `Broker_Id`, `Volume`) VALUES
(1300, 1, 1, 100),
(1350, 1, 1, 50),
(1350, 1, 1, 50),
(4000, 6, 2, 500),
(2500, 3, 4, 5000),
(3600, 5, 5, 5000),
(3600, 5, 5, 5000);




INSERT INTO `works for` (`Broker_id`, `Trader_id`) VALUES
(1, 7),
(1, 6),
(2, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
