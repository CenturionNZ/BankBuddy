CREATE TABLE [dbo].[User] (
    [UserId]       INT           IDENTITY (1, 1) NOT NULL,
    [UserName]     VARCHAR (50)  NOT NULL,
    [FirstName]    VARCHAR (100) NOT NULL,
    [LastName]     VARCHAR (100) NOT NULL,
    [EmailAddress] VARCHAR (100) NOT NULL,
    [Password]     VARCHAR (MAX) NOT NULL,
    [IsLocked]     BIT           NOT NULL,
    [LastLogin]    DATETIME2 (7) NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC)
);

