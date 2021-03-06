﻿/*
Drop table table1
Drop table table2
*/
--rollback --commit
CREATE TABLE [Table1](
    [col_varchar] [varchar](150) NULL,
    [col_varchar_like] [varchar](150) NULL,
    [col_nvarchar] [nvarchar](300) NULL,
    [col_int] [int] NULL,
    [col_datetime] [datetime] NULL,
    [col_bit] [bit] null,
    [col_null] [varchar],
    [col_float] [float],
    [col_money] [money],
	[col_uniqueidentifier] [uniqueidentifier]
);

CREATE TABLE [Table2](
    [col_varchar] [varchar](150) NULL,
    [col_varchar_like] [varchar](150) NULL,
    [col_nvarchar] [nvarchar](300) NULL,
    [col_int] [int] NULL,
    [col_datetime] [datetime] NULL,
    [col_bit] [bit] null,
    [col_null] [varchar],
    [col_float] [float],
    [col_money] [money],
	[col_uniqueidentifier] [uniqueidentifier]
);

insert into [Table1] 
select 'Test','Test2',N'測試',123,'2019/01/02 03:04:05',1,null,1.2,0.123,'219f7ef5-f4bd-4e9a-a9f6-1f127122d004' 
union all
select 'Test','Test2',N'測試',123,'2019/01/02 03:04:05',1,null,1.2,0.123,'219f7ef5-f4bd-4e9a-a9f6-1f127122d004'
;

insert into [Table2] 
select 'Test','Test2',N'測試',123,'2019/01/02 03:04:05',1,null,1.2,0.123,'219f7ef5-f4bd-4e9a-a9f6-1f127122d004'
;
 
select * from [Table1];
select * from [Table2];

--commit