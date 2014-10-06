CREATE TABLE [dbo].[FileLoad] (
    [FileLoadId]       INT           IDENTITY (1, 1) NOT NULL,
    [LoadDate]         DATETIME2 (7) NOT NULL,
    [FromDate]         DATETIME2 (7) NOT NULL,
    [ToDate]           DATETIME2 (7) NOT NULL,
    [FileName]         VARCHAR (100) NOT NULL,
    [AccountId]        INT           NOT NULL,
    [LoadStatusId]     INT           NOT NULL,
    [LoadErrorMessage] VARCHAR (500) NULL,
    PRIMARY KEY CLUSTERED ([FileLoadId] ASC),
    CONSTRAINT [FK_FileLoad_LoadStatus] FOREIGN KEY ([LoadStatusId]) REFERENCES [dbo].[LoadStatus] ([LoadStatusId])
);

