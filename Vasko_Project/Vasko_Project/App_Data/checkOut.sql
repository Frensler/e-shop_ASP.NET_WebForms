CREATE TABLE [dbo].[checkOut] (
    [Id]     INT          NOT NULL IDENTITY(1,1) PRIMARY KEY,
    [Name]   VARCHAR (50) NOT NULL,
    [Email]  VARCHAR (50) NOT NULL,
    [Adress] VARCHAR (50) NOT NULL,
    [Phone]  INT          NOT NULL,
    [Smth]   VARCHAR (50) NULL,
);