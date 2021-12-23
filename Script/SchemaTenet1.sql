CREATE SCHEMA tenet1

BEGIN TRANSACTION;

CREATE TABLE [tenet1].[Pessoas] (
    [Id] int NOT NULL IDENTITY,
    [Nome] nvarchar(max) NULL,
    CONSTRAINT [PK_Pessoas] PRIMARY KEY ([Id])
);
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Nome') AND [object_id] = OBJECT_ID(N'[tenet1].[Pessoas]'))
    SET IDENTITY_INSERT [tenet1].[Pessoas] ON;
INSERT INTO [tenet1].[Pessoas] ([Id], [Nome])
VALUES (1, N'Pessoa 1');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Nome') AND [object_id] = OBJECT_ID(N'[tenet1].[Pessoas]'))
    SET IDENTITY_INSERT [tenet1].[Pessoas] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Nome') AND [object_id] = OBJECT_ID(N'[tenet1].[Pessoas]'))
    SET IDENTITY_INSERT [tenet1].[Pessoas] ON;
INSERT INTO [tenet1].[Pessoas] ([Id], [Nome])
VALUES (2, N'Pessoa 2');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Nome') AND [object_id] = OBJECT_ID(N'[tenet1].[Pessoas]'))
    SET IDENTITY_INSERT [tenet1].[Pessoas] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Nome') AND [object_id] = OBJECT_ID(N'[tenet1].[Pessoas]'))
    SET IDENTITY_INSERT [tenet1].[Pessoas] ON;
INSERT INTO [tenet1].[Pessoas] ([Id], [Nome])
VALUES (3, N'Pessoa 3');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Nome') AND [object_id] = OBJECT_ID(N'[tenet1].[Pessoas]'))
    SET IDENTITY_INSERT [tenet1].[Pessoas] OFF;
GO

COMMIT;
GO

