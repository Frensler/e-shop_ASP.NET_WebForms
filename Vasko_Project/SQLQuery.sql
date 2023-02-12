insert into items values(122, 1, 2, 2, 4, 0, 0);
insert into checkout (name, email, adress, phone, smth, order_id) values ('AL','emal', 'adres', 784383608, 'ysab', 122);

select * from items;
select * from checkout;

delete from items;
delete from checkout;

drop table checkout;

CREATE TABLE [dbo].[checkOut] (
    [Id]       INT          IDENTITY (1, 1) NOT NULL,
    [Name]     VARCHAR (50) NOT NULL,
    [Email]    VARCHAR (50) NOT NULL,
    [Address]   VARCHAR (50) NOT NULL,
    [Phone]    INT          NOT NULL,
    [Smth]     VARCHAR (50) NULL,
    [Order_ID] INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([Order_ID]) REFERENCES [dbo].[items] ([Order_ID])
);