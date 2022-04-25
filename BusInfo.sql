/*  creating a table BusInfo*/

CREATE TABLE BusInfo
(
BusID INTEGER  PRIMARY KEY,
BoardingPoint VARCHAR(50) ,
TravelDate DATETIME ,
Amount DECIMAL ,
Rating INTEGER
);

/* Insert values into table Businfo*/

INSERT INTO BusInfo
(BusID,BoardingPoint,TravelDate,Amount,Rating)
VALUES
(1,'BGL',18-06-2017,400.65,2),
(2,'HYD',05-10-2017,600.00,3),
(3,'CHN',25-07-2016,445.95,3),
(4,'PUN',10-12-2017,543.00,4),
(5,'MUM',28-01-2017,500.50,4),
(6,'PUN',27-03-2016,333.55,3),
(7,'MUM',06-11-2016,510.00,4);

select * from BusInfo  --Retriving Data from Table

/* creating a store Procedure */

CREATE PROCEDURE sp_BusInfo
AS
BEGIN
SELECT * FROM BusInfo
END


EXECUTE sp_BusInfo; --exceuting stored procedure

/* Retrieve all BoardingPoint and TravelDate for the amount which is greater than 450 */

SELECT BoardingPoint,TravelDate
FROM BusInfo
WHERE Amount > 450;

/*  Create View Bus_View to display the BusID, BoardingPoint whose rating is greater than 3 */

CREATE VIEW Bus_View
AS 
SELECT BusID,BoardingPoint
FROM BusInfo
WHERE Rating>3;

SELECT * FROM Bus_View;   -- execute a View

/* Retrive all BusId,BoardingPoints forthe bus travelled on 10-12-2017 */

SELECT BusID,BoardingPoint
FROM BusInfo
WHERE TravelDate = 10-12-2017;