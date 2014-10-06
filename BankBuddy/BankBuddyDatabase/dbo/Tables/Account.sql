CREATE TABLE [dbo].[Account] (
    [AccountId]      INT             IDENTITY (1, 1) NOT NULL,
    [UserId]         INT             NOT NULL,
    [AccountName]    VARCHAR (100)   NOT NULL,
    [AccountType]    VARCHAR (50)    NOT NULL,
    [AccountNumber]  VARCHAR (50)    NOT NULL,
    [AccountBalance] DECIMAL (12, 2) NOT NULL,
    [CreatedDate]    DATETIME2 (7)   NOT NULL,
    [BankName]       VARCHAR (50)    NOT NULL,
    PRIMARY KEY CLUSTERED ([AccountId] ASC),
    CONSTRAINT [FK_Account_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId])
);

