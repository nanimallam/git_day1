use eisms;
show tables;


create table categories(categoryid int auto_increment primary key,
categoryname varchar(100) unique not null,
description varchar(255)); 

create table suppliers(supplierid int auto_increment primary key,
suppliername varchar(100)not null,ContactPerson varchar(100) not null,
phone varchar(15) unique,email varchar(100) unique,
city varchar(100) not null
);

create table products(productid int auto_increment primary key , categoryid int, 
supplierid int ,productname varchar(150) not null, 
unitprice decimal(10,2) check(unitprice>0),reorderlevel int default 10 ,
status enum("available","out of stock") default "available",
foreign key (categoryid) references categories(categoryid),
foreign key (supplierid) references suppliers(supplierid));

create table customers(customerid int primary key,customername varchar(100) not null,
phone varchar(15) unique,email varchar(100) unique,city varchar(100) not null,
registration_date date default(current_date));


create table employees(employeeid int primary key,
employeename varchar(100) not null,
designation varchar(100) not null,
salary decimal(10,2) check(salary>0),
hiredate date not null);


create table orders (orderid int primary key,
customerid int,
employeeid int,
orderdate datetime default(current_timestamp),
totalamount decimal(10,2) check(totalamount>0),
status enum ("pending","completed","cancelled"),
foreign key (customerid) references customers(customerid),
foreign key(employeeid) references employees(employeeid));

create table ordersdetails(orderdetailid int primary key,
orderid int,
productid int,
quantity int check (quantity>0),
sellingprice decimal(10,2) check(sellingprice>0),
foreign key (orderid) references orders(orderid),
foreign key(productid)references products(productid));


create table inventory (inventoryid int primary key,
productid int unique,
stockquantity int check(stockquantity>=0),
lastupdated datetime default (current_timestamp),
foreign key (productid) references products(productid));


create table payments(paymentid int primary key,
orderid int,
amount decimal(10,2),
paymentmethod enum("cash","card","upi","netbanking"),
paymentdate datetime default (current_timestamp),
paymentstatus enum("pending","paid","failed"),
foreign key (orderid) references orders(orderid));



create table purchaseorders(purchaseid int primary key,supplierid int,employeeid int,
purchasedate datetime default(current_timestamp),totalamount decimal(10,2) check(totalamount>0),
foreign key (supplierid) references suppliers(supplierid),
foreign key (employeeid) references employees(employeeid));



create table purchasedetails(purchasedetailid int primary key,
purchaseid int,productid int,quantity int check(quantity>0),
purchaseprice decimal(10,2) check(purchaseprice>0),
foreign key (purchaseid) references purchaseorders(purchaseid),
foreign key (productid) references products(productid));








