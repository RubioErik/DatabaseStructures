
insert into users (userid, firstname, lastname, middlename, username, password, dob, gender, occupationid, userStatusId, userTypeId) values ('181818','Erik','Rubio','Tony','erub18','rubio18','1993-12-10','M','189','1','1');

insert into orders (orderid,userid,orderDate,shippingDate) values ('201218','181818','2015-02-05','2015-02-07');
insert into orders (orderid,userid,orderDate,shippingDate) values ('201216','181818','2015-02-06','2015-02-08');
insert into orderitem (orderid,itemid,quantity) values ('201218','18','2');
insert into orderitem (orderid,itemid,quantity) values ('201216','16','1');

insert into userDVD (userDVDid,userid,dvdid) values ('18','181818','356');
insert into userDVD (userDVDid,userid,dvdid) values ('16','181818','31');

insert into userVehicle (userid,vehicleid) values ('181818','3');
insert into userVehicle (userid,vehicleid) values ('181818','20');



select users.userid, firstname ,lastname , orderid
from users inner join orders on users.userid = orders.userid
where orderId is not NULL;

select * from users cross join orders on users.userid = orders.userid
limit 200;

select users.userid, firstname ,lastname , orderid
from users inner join orders on users.userid = orders.userid
where orderId is NULL
limit 200;


select users.userId, firstname, lastname,orders.orderId,orderDate
from users
join orders on users.userId = orders.userId;


ALTER TABLE orders ADD COLUMN destinationState TEXT NULL AFTER shippingDate;

ALTER TABLE orders
ADD FOREIGN KEY (destinationState)
REFERENCES state(state);

select concat(firstname,' ',lastname)
from users where lastname like '%Steady';

CREATE INDEX indexname
ON users (lastname);

select count(*) from users where lastname like '%ing';

select count(occupationid is not NULL) from users where firstname like 'J%';
