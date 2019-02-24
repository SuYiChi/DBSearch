﻿CREATE DATABASE DBSearchTestDB ;

CREATE TABLE DBSearchTestDB..[Table1](
    [col_varchar] [varchar](150) NULL,
    [col_varchar_like] [varchar](150) NULL,
    [col_nvarchar] [nvarchar](300) NULL,
    [col_int] [int] NULL,
    [col_datetime] [datetime] NULL,
    [col_bit] [bit] null,
    [col_null] [varchar],
    [col_float] [float]
);

CREATE TABLE DBSearchTestDB..[Table2](
    [col_varchar] [varchar](150) NULL,
    [col_varchar_like] [varchar](150) NULL,
    [col_nvarchar] [nvarchar](300) NULL,
    [col_int] [int] NULL,
    [col_datetime] [datetime] NULL,
    [col_bit] [bit] null,
    [col_null] [varchar],
    [col_float] [float]
);

insert into DBSearchTestDB..[Table1] 
select 'Test','Test2',N'測試',123,'2019/01/02 03:04:05',1,null,1.2 
union all
select 'Test','Test2',N'測試',123,'2019/01/02 03:04:05',1,null,1.2 
;

insert into DBSearchTestDB..[Table2] 
select 'Test','Test2',N'測試',123,'2019/01/02 03:04:05',1,null,1.2
;
 
select * from DBSearchTestDB..[Table1];
select * from DBSearchTestDB..[Table2];

--commit