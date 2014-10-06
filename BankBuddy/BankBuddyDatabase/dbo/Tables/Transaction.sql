CREATE TABLE [dbo].[Transaction] (
    [TransactionId]   INT             IDENTITY (1, 1) NOT NULL,
    [AccountId]       INT             NOT NULL,
    [Date]            DATETIME2 (7)   NOT NULL,
    [Amount]          DECIMAL (12, 2) NOT NULL,
    [OtherParty]      VARCHAR (25)    NOT NULL,
    [TransactionType] VARCHAR (25)    NOT NULL,
    [Reference]       VARCHAR (25)    NOT NULL,
    [Particulars]     VARCHAR (25)    NOT NULL,
    [AnalysisCode]    VARCHAR (25)    NOT NULL,
    [FileLoadId]      INT             NOT NULL,
    PRIMARY KEY CLUSTERED ([TransactionId] ASC),
    CONSTRAINT [FK_Transaction_Account] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Account] ([AccountId]),
    CONSTRAINT [FK_Transaction_FileLoad] FOREIGN KEY ([FileLoadId]) REFERENCES [dbo].[FileLoad] ([FileLoadId])
);

