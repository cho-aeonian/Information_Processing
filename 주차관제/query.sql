create table tbl_car_202301 (
	car_number char(10) not null,
	car_name varchar2(15),
	owner_name varchar2(20),
	primary key(car_number)
);
select * from tbl_car_202301;
insert into tbl_car_202301 values('11가1111', '그랜저', '박선수');
insert into tbl_car_202301 values('22가1111', 'K3', '백선수');
insert into tbl_car_202301 values('33가1111', '셀토스', '채선수');
insert into tbl_car_202301 values('44가1111', 'SM5', '임선수');
insert into tbl_car_202301 values('55가1111', '티볼리', '한선수');

create table tbl_parking_202301 (
	car_number char(10) not null,
	location char(4) not null,
	entrance_time varchar2(6),
	departure_time varchar2(6),
	primary key(car_number,location)
);

insert into tbl_parking_202301 values('11가1111', 'A001', '11:22', '');
select * from tbl_parking_202301;
create table tbl_parking_lot_202301 (
	location char(4) not null,
	hourly_parking_fee number(10),
	primary key(location)
);

insert into tbl_parking_lot_202301 values('A001', 1000);
insert into tbl_parking_lot_202301 values('A002', 1000);
insert into tbl_parking_lot_202301 values('A003', 1000);
insert into tbl_parking_lot_202301 values('A004', 1000);
insert into tbl_parking_lot_202301 values('A005', 1000);