CREATE TABLE `broker` (
  `Name` varchar(11) NOT NULL,
  `Id` int(11) NOT NULL,
  `Years_Active` int(11) NOT NULL,
  `Commission` int(11) NOT NULL
);

CREATE TABLE `company` (
  `Name` varchar(20) NOT NULL,
  `Net_Worth` decimal(20,2) NOT NULL,
  `Volume` int(11) NOT NULL,
  `Stock_Id` int(11) NOT NULL
);


CREATE TABLE `market` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL
);



CREATE TABLE `owns` (
  `Trader_id` int(11) NOT NULL,
  `Stock_id` int(11) NOT NULL,
  `Volume` int(10) NOT NULL
);




CREATE TABLE `partof` (
  `Stock_id` int(10) NOT NULL,
  `M_id` int(11) NOT NULL
);





CREATE TABLE `stock` (
  `CurrentPrice` decimal(10,2) NOT NULL,
  `Low` decimal(10,2) NOT NULL,
  `High` decimal(10,2) NOT NULL,
  `Stock_Symbol` varchar(20) NOT NULL,
  `Open_Price` decimal(10,2) NOT NULL,
  `Stock_Id` int(11) NOT NULL
);

CREATE TABLE `trader` (
  `Id` int(11) NOT NULL,
  `Name` varchar(11) NOT NULL,
  `Years_Active` int(11) NOT NULL
);





CREATE TABLE `transaction` (
  `Bid` int(11) NOT NULL,
  `Stock_Id` int(11) NOT NULL,
  `Broker_Id` int(11) NOT NULL,
  `Volume` int(11) NOT NULL
) ;






CREATE TABLE `works for` (
  `Broker_id` int(10) NOT NULL,
  `Trader_id` int(11) NOT NULL
) ;





ALTER TABLE `broker`
  ADD PRIMARY KEY (`Id`);


ALTER TABLE `company`
  ADD KEY `Stock_Id` (`Stock_Id`);


ALTER TABLE `market`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owns`
--
ALTER TABLE `owns`
  ADD PRIMARY KEY (`Trader_id`,`Stock_id`);
  

--
-- Indexes for table `partof`
--
ALTER TABLE `partof`
  ADD PRIMARY KEY (`M_id`,`Stock_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`Stock_Id`);

--
-- Indexes for table `trader`
--
ALTER TABLE `trader`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `transaction`
--



--
-- Indexes for table `works for`
--
ALTER TABLE `works for`
	ADD PRIMARY KEY (`Broker_Id`,`Trader_id`);



ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`Stock_Id`) REFERENCES `stock` (`Stock_Id`);


ALTER TABLE `owns`
  ADD CONSTRAINT `owns_ibfk_1` FOREIGN KEY (`Trader_id`) REFERENCES `trader` (`Id`),
  ADD CONSTRAINT `owns_ibfk_2` FOREIGN KEY (`Stock_id`) REFERENCES `stock` (`Stock_Id`);


ALTER TABLE `partof`
  ADD CONSTRAINT `partof_ibfk_2` FOREIGN KEY (`M_id`) REFERENCES `market` (`id`),
  ADD CONSTRAINT `partof_ibfk_3` FOREIGN KEY (`Stock_id`) REFERENCES `stock` (`Stock_Id`);


ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`Stock_Id`) REFERENCES `stock` (`Stock_Id`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`Broker_Id`) REFERENCES `broker` (`Id`);

ALTER TABLE `works for`
  ADD CONSTRAINT `works for_ibfk_1` FOREIGN KEY (`Trader_id`) REFERENCES `trader` (`Id`),
  ADD CONSTRAINT `works for_ibfk_2` FOREIGN KEY (`Broker_Id`) REFERENCES `broker` (`Id`);

