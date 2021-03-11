CREATE TABLE address
(
  _id INT PRIMARY KEY AUTO_INCREMENT,
  street VARCHAR(100) NOT NULL,
  city VARCHAR(100) NOT NULL,
  state VARCHAR(100) NOT NULL,
  country VARCHAR(100) NOT NULL,
  zip INT NOT NULL
);
create table User
(
  first_name VARCHAR(50) NOT NULL,
  middle_name VARCHAR(50) NOT null,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  adhar_num varchar(20) not null unique,
  phone_no VARCHAR(10),
  gender ENUM('m', 'f', 'u') DEFAULT 'u',
 address_id INT,
  age int not null,
  DOB date not null,
  occupation varchar(20),
  primary key (adhar_num),
   CONSTRAINT user_address_id_fk FOREIGN KEY (address_id) REFERENCES address (_id) ON DELETE SET NULL ON UPDATE CASCADE
  );
  create table cardb
  (
  model_name varchar(20) not null,
  first_name VARCHAR(50) NOT NULL,
  middle_name VARCHAR(50) NOT null,
  last_name VARCHAR(50) NOT NULL,
  date_of_purchase date not null,
  address_id INT,
  meter_reading INT,
  for_sale bool,
  for_rent bool,
  price int,
  license_plate_num varchar(20) not null unique
  );
  create table bookingdet(
   booking_id INT PRIMARY KEY AUTO_INCREMENT,
   book_date date,
   meter_read int,
   discount_amm int,
   security_dep int not null,
   net_amount int not null
   );
   create table billing(
   _id int primary key auto_increment,
   bill_id int not null,
   total int not null,
   bill_amount int not null,
   tax_amount int not null,
   disc_amount int not null,
   adv_payment int not null,
   bill_date date
   
   )
  
 