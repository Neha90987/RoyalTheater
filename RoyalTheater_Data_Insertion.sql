use RoyalTheater;

-- -- Dumping data for table customer


truncate customer;
INSERT INTO customer VALUES ( 1,'RODRIGUEZ','680768868518','LAURA.RODRIGUEZ@amccustomer.org'),
(2,'KIMBERLY','489783829737','KIMBERLY.LEE@amccustomer.org'),
(3,'DEBORAH','708403338270','DEBORAH.WALKER@amccustomer.org'),
(4,'JESSICA','747791594069','JESSICA.HALL@amccustomer.org'),
(5,'SHIRLEY','949312333307','SHIRLEY.ALLEN@amccustomer.org'),
(6,'CYNTHIA','465887807014','CYNTHIA.YOUNG@amccustomer.org'),
(7,'ANGELA','648856936185','ANGELA.HERNANDEZ@amccustomer.org'),
(8,'MELISSA','380657522649','MELISSA.KING@amccustomer.org'),
(9,'BRENDA','657282285970','BRENDA.WRIGHT@amccustomer.org'),
(10,'AMY','10655648674','AMY.LOPEZ@amccustomer.org'),
(11,'ANNA','716571220373','ANNA.HILL@amccustomer.org'),
(12,'REBECCA','705814003527','REBECCA.SCOTT@amccustomer.org'),
(13,'VIRGINIA','448477190408','VIRGINIA.GREEN@amccustomer.org'),
(14,'KATHLEEN','838635286649','KATHLEEN.ADAMS@amccustomer.org'),
(15,'PAMELA','28303384290','PAMELA.BAKER@amccustomer.org'),
(16,'MARTHA','6172235589','MARTHA.GONZALEZ@amccustomer.org'),
(17,'DEBRA','14033335568','DEBRA.NELSON@amccustomer.org'),
(18,'AMANDA','489783829737','AMANDA.CARTER@amccustomer.org'),
(19,'STEPHANIE','680768868518','STEPHANIE.MITCHELL@amccustomer.org'),
(20,'CAROLYN','42384721397','CAROLYN.PEREZ@amccustomer.org'),
(21,'CHRISTINE','250767749542','CHRISTINE.ROBERTS@amccustomer.org'),
(22,'MARIE','177727722820','MARIE.TURNER@amccustomer.org'),
(23,'JANET','675292816413','JANET.PHILLIPS@amccustomer.org'),
(24,'CATHERINE','262076994845','CATHERINE.CAMPBELL@amccustomer.org'),
(25,'FRANCES','69493378813','FRANCES.PARKER@amccustomer.org'),
(26,'ANN','876295323994','ANN.EVANS@amccustomer.org'),
(27,'JOYCE','307703950263','JOYCE.EDWARDS@amccustomer.org'),
(28,'DIANE','171822533480','DIANE.COLLINS@amccustomer.org'),
(29,'ALICE','680428310138','ALICE.STEWART@amccustomer.org'),
(30,'JULIE','212869228936','JULIE.SANCHEZ@amccustomer.org');


-- Dumping data for table Movie


truncate movie;
INSERT INTO Movie VALUES ('122','Longest Third Date','Reality','1hr50min','Matt Robertson, Khani Le','543'),
('234','Evil Dead Rise','Horror','2hr','Lily Sullivan, Alyssa Sutherland','654'),
('345','Murder Mystery 2','Action,Comedy','1hr30min','Adam Sandler,Jennifer Aniston','876'),
('456', 'Renfield','HORROR',' 1hr33 min','Nicholas Hoult,Nicolas Cage','532'),
('567','Air','Drama','1hr51min','Ben Affleck,Viloa Davis','123');


-- Dumping data for table Theater

truncate theater;
INSERT INTO Theater VALUES ('123','IMAX','AMC Jersey Garden','651 Kapkowski Road,Elizabeth,NJ 07201','0'),
('876','Dolby Cinema','AMC Clifton Commons 16','405 Route 3 Clifton, New Jersey 07014','1'),
('654','PRIME','AMC Newport Centre 11','30-300 Mall Drive West Jersey City, New Jersey 07310','0'),
('543','RealD 3D','AMC DINE-IN Essex Green 9','495 Prospect Avenue West Orange, New Jersey 07052','0'),
('532','BigD at AMC','AMC 34th Street 14','312 West 34th Street New York, New York 10001','1');

-- Dumping data for table Catalogue

truncate catalogue;
INSERT INTO Catalogue VALUES ('123','345','Shazam! Fury Of The Gods','2hrs 10min','Zachary Levi,Adam Brody','USA','Action'),
('234','456','Plane','1hr47min','Gerard Butler,Remi Adeleke','USA','Action'),
('345','567','Champions','2hrs4min','Ernie Hudson,Woody Harrelson','USA','Comedy'),
('456','678','The Whale','1hr57min','Brendan Fraser,Samantha Morton','USA','Drama'),
('567','789','Women Talking','1hr44min','Jessie Buckley,Claire Foy','USA','Drama');


-- Dumping data for table Schedule

truncate schedule;
INSERT INTO Schedule VALUES ('000','04:35pm, 06:00 pm','2023-02-15','122','123'),
('111','05:35pm, 02:45pm','2023-01-10','234','876'),
('222','10:30am, 12:30pm','2023-03-16','345','654'),
('333','01:45pm, 05:00pm','2023-03-19','456','543'),
('444','03:55pm, 11:00pm','2022-12-19','567','532');

-- Dumping data for table Transaction

INSERT INTO Transaction VALUES ('001','2023-02-13 04:57:20','A12','250','0','1','122','123','000','123'),
('444','2023-01-08 02:40:10','B23','400','1','2','234','876','111','234'),
('555','2023-03-14 01:55:10','C45','500','0','3','345','654','222','345'),
('666','2023-03-18 06:55:10','D56','800','1','4','456','543','333','456'),
('777','2022-12-18 08:10:10','E13','1000','0','5','567','532','444','567');


-- Query 1 showing the name of customer and movie watched by customer number 4


select cu.Customer_name,mo.Movie_name from Customer cu
left join Transaction tr on (cu.Customer_id = tr.Customer_id)
left join Movie mo on (tr.Movie_id = mo.Movie_id)
where cu.Customer_id = '4' ;

-- Query 2 showing the movie name by alphabetical order
select * from movie
order by Movie_Name asc;


-- Query 3 showing all the customer name starts with A

select * from Customer
where Customer_Name Like 'a%';
