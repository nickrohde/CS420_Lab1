CREATE TABLE [dbo].[planes] (planeID int, planeType char(5), seats smallint, PRIMARY KEY(planeID));
CREATE TABLE [dbo].[employees] (employeeID int, name nvarchar(100), birthday date, salary int, PRIMARY KEY(employeeID));
CREATE TABLE [dbo].[airports] (airportID int, code char(3), latitude float, longitude float, localMaintance bit, PRIMARY KEY(airportID));

ALTER TABLE [dbo].[planes] ADD lastMaintance date;
ALTER TABLE [dbo].[planes] ADD maintanceLead int;
ALTER TABLE [dbo].[planes] ADD FOREIGN KEY(maintanceLead) REFERENCES [dbo].[employees](employeeID);

INSERT INTO [dbo].[employees] VALUES (21, 'Adam Davis', '1960-08-19', 120000);
INSERT INTO [dbo].[employees] VALUES (56, 'Charles Foster', '1985-10-24', 750000);
INSERT INTO [dbo].[employees] VALUES (85, 'Brianna Evans', '1972-06-15', 100000);
INSERT INTO [dbo].[employees] VALUES (32, 'Julia Smith', '1981-04-20', 95000);

INSERT INTO [dbo].[planes] VALUES (1, 'Bg737', 154, '2018-01-01', 21);
INSERT INTO [dbo].[planes] VALUES (2, 'Bg787', 219, '2017-12-30', 21);
INSERT INTO [dbo].[planes] VALUES (3, 'Ab320', 150, '2018-03-14', 56);
INSERT INTO [dbo].[planes] VALUES (4, 'Ab380', 489, '2018-02-28', 56);

INSERT INTO [dbo].[airports] VALUES (43, 'SEA', 47.449, -122.309, 1);
INSERT INTO [dbo].[airports] VALUES (65, 'ORD', 41.978, -87.904, 1);
INSERT INTO [dbo].[airports] VALUES (20, 'CAK', 40.915, -81.443, 0);


