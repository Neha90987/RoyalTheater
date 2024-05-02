DROP SCHEMA IF EXISTS RoyalTheater;
Create database RoyalTheater;
use RoyalTheater;

-- Table structure for table `Customer`
--
--

drop table Customer;

create table Customer(
Customer_Id Int,
Customer_name varchar (20),
Customer_PhoneNo bigint,
Email_ID varchar (50),
PRIMARY KEY (Customer_Id));

-- Table structure for table `Movie Catalogue`
--
--
drop table catalogue;

create table Catalogue(
Movie_Catalogue_Id Int,
Movie_Id Int,
Movie_Name Varchar (255),
Movie_Duration Varchar(10),
Cast Varchar (255),
Territories Varchar (10),
Genre Varchar (20),
PRIMARY KEY (Movie_Catalogue_Id));

-- Table structure for table `Theater`
--
--

create table Theater(
Theater_Id Int,
Theater_Type Varchar (55),
Name varchar (100),
Location varchar (255),
Recliner Boolean,
PRIMARY KEY (Theater_Id));

-- Table structure for table `Movie Name`
--
--
drop table movie;
create table Movie(
Movie_Id bigInt,
Movie_name varchar (100),
Genre Varchar (50),
Movie_Duration varchar (20),
Cast Varchar (100),
PRIMARY KEY (Movie_Id),
Theater_Id Int,
Foreign key (Theater_Id) references Theater(Theater_Id)ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
--
--
-- Table structure for table `Movie Schedule`
--
--
Drop table schedule;
create table Schedule(
Schedule_Id Int,
Show_Time varchar (20),
Date date,
PRIMARY KEY (Schedule_Id),
Movie_Id bigInt,
Theater_Id Int,
Foreign key (Movie_Id) references Movie(Movie_Id)ON DELETE RESTRICT ON UPDATE CASCADE,
Foreign key (Theater_Id) references Theater(Theater_Id)ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Table structure for table `Transaction Value`
--
--
drop table transaction;
create table Transaction(
Transaction_id Int,
Transaction_Time Datetime,
Seat_No varchar (3),
Amount Int,
IsTheater Boolean,
Customer_Id Int,
Movie_Id bigInt,
Theater_Id Int,
Schedule_Id Int,
Movie_Catalogue_Id Int,
Primary Key (Transaction_id),
Foreign key (Customer_Id) references Customer(Customer_Id) ON DELETE RESTRICT ON UPDATE CASCADE,
Foreign key (Movie_Id) references Movie(Movie_Id)ON DELETE RESTRICT ON UPDATE CASCADE,
Foreign key (Theater_Id) references Theater(Theater_Id)ON DELETE RESTRICT ON UPDATE CASCADE,
Foreign key (Schedule_Id) references Schedule(Schedule_Id)ON DELETE RESTRICT ON UPDATE CASCADE,
Foreign key (Movie_Catalogue_Id) references Catalogue(Movie_Catalogue_Id)ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
