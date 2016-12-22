-- Many of the quries used here makes use of variables which were obtained as part of the php script. Example : $stock_name in query 1.


-- 1    which stock belongs to which market

select Stock_Symbol,stock.Stock_Id,Open_Price,CurrentPrice,Low,High,name
from stock,partof,market
where stock.Stock_Id = partof.Stock_id and partof.M_id = market.id and stock.Stock_Symbol = '$stock_name' ;


--2. First check if the broker works for that trader

select * from `works for` where Broker_id = $brokerid AND Trader_id = $traderid;

-- 3 if yes, then enter values into transaction table

insert into  `transaction` (`Bid`, `Stock_Id`, `Broker_Id`, `Volume`) VALUES ($bid, $stockid, $brokerid, $volume);

-- 4  Check if the trader already owns the stock ....    
select Volume from owns where Trader_id =$traderid AND Stock_id = $stockid;

-- 5   insert a new row if the trader does not own the stock
insert into `owns` (`Trader_id`, `Stock_id`, `Volume`) VALUES ($traderid, $stockid, $volume);

-- 6  update the existing row if the trader owns the stock
update owns set volume = $volume where Stock_id = $stockid and Trader_id = $traderid;

-- 7   display which all stocks the trader owns
select Stock_id,Volume from owns where Trader_id = $traderid;

--8   to change the volume owned by the company first get the existing volume
select Volume from company where Stock_Id = $stockid;


--9   Change the volume to the new value
update company set Volume = $volume where Stock_Id = $stockid;

--10   change the companies net worth depending on the transaction
update company c 
INNER JOIN transaction t ON c.Stock_Id = t.Stock_id 
INNER JOIN stock s ON s.Stock_Id = t.Stock_id 
set c.Net_Worth = c.Net_Worth - (t.Volume * s.CurrentPrice)
where c.Stock_Id = $stockid;

-- 11 change the companies net worth depending on the transaction
update company c
INNER JOIN transaction t ON c.Stock_Id = t.Stock_id 
set c.Net_Worth = c.Net_Worth + (t.Volume * t.Bid) 
where c.Stock_Id = $stockid;

-- 12 change the value of the stock price depending on the transaction
update stock s 
INNER JOIN company c ON s.Stock_Id = c.Stock_Id 
set s.CurrentPrice = (c.Net_Worth / c.Volume) 
where s.Stock_Id = $stockid;

-- 13 which broker works for which trader
select trader.Name as TraderName, trader.Id as TraderId, trader.Years_Active as TraderYears, broker.Name as BrokerName, broker.Id as BrokerId, broker.Years_Active as BrokerYears
from trader,`works for`,broker
where trader.Id = `works for`.Trader_id and `works for`.Broker_id = broker.Id and broker.Name = '$brokername';

-- 14 to check which trader owns what stock
select trader.Name as TraderName,trader.Id as TraderId,trader.Years_Active as TraderYears,stock.Stock_Id as StockId,Stock_Symbol,CurrentPrice,Volume
from trader,owns,stock where trader.Id = owns.Trader_id and owns.Stock_id = stock.Stock_Id and trader.Name = '$tradername';


-- 15  To get the Net value of a market
select SUM(company.Net_Worth) as net_value, new.MarketName as NW
from company INNER JOIN (select market.name as MarketName, partof.Stock_id from partof INNER JOIN market ON market.id = partof.M_id) as new 
where new.Stock_id = company.Stock_Id group by new.MarketName;


-- 16 list all the stock symbols and their corresponding markets
select stock.Stock_Symbol, new.MarketName
from stock INNER JOIN (select market.name as MarketName, partof.Stock_id from partof INNER jOIN market ON market.id = partof.M_id) AS new 
where new.Stock_id = stock.Stock_Id ;

-- 17 list the trader broker relation
SELECT trader.Name as tradername, new.brokername 
from trader INNER JOIN 
(select broker.Name as brokername, `works for`.`Trader_id`
	from `works for` INNER JOIN broker ON `works for`.`Broker_id` = broker.Id) as new
where new.Trader_id = trader.Id;




