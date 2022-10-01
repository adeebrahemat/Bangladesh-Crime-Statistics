IF OBJECT_ID('BD_Crime_Stat') IS NOT NULL DROP TABLE BD_Crime_Stat

CREATE TABLE BD_Crime_Stat
(Year NVARCHAR(200),
Unite_Name NVARCHAR(200),
Dacoity INT,
Robbery INT, 
Murder INT,
Speedy_Trial INT,
Riot INT,
Harrasement INT,
Kidnapping INT,
Police_Assault INT,
Burglary INT,
Theft INT,
Other_Cases INT,
Arms_Act INT,
Explosives INT,
Narcotics INT, 
Smuggling INT,
Total_Rec INT,
Total_Cases INT
) 


BULK INSERT BD_Crime_Stat
FROM 'D:\DATA ANALYTICS\BD Crimes Data\BD-Crime-Statistics-2010-2019.csv' 
WITH (Format ='CSV')	

SELECT * FROM BD_Crime_Stat
SELECT * FROM BD_Crime_Stat WHERE Unite_Name = 'DMP'

Delete From BD_Crime_Stat WHERE Unite_Name = 'Total'

SELECT MAX (Total_Cases) FROM BD_Crime_Stat 