IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [dbo].[Pessoas] (
    [Id] int NOT NULL IDENTITY,
    [Nome] nvarchar(max) NULL,
    CONSTRAINT [PK_Pessoas] PRIMARY KEY ([Id])
);
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Nome') AND [object_id] = OBJECT_ID(N'[dbo].[Pessoas]'))
    SET IDENTITY_INSERT [dbo].[Pessoas] ON;
INSERT INTO [dbo].[Pessoas] ([Id], [Nome])
VALUES (1, N'Pessoa 1');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Nome') AND [object_id] = OBJECT_ID(N'[dbo].[Pessoas]'))
    SET IDENTITY_INSERT [dbo].[Pessoas] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Nome') AND [object_id] = OBJECT_ID(N'[dbo].[Pessoas]'))
    SET IDENTITY_INSERT [dbo].[Pessoas] ON;
INSERT INTO [dbo].[Pessoas] ([Id], [Nome])
VALUES (2, N'Pessoa 2');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Nome') AND [object_id] = OBJECT_ID(N'[dbo].[Pessoas]'))
    SET IDENTITY_INSERT [dbo].[Pessoas] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Nome') AND [object_id] = OBJECT_ID(N'[dbo].[Pessoas]'))
    SET IDENTITY_INSERT [dbo].[Pessoas] ON;
INSERT INTO [dbo].[Pessoas] ([Id], [Nome])
VALUES (3, N'Pessoa 3');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Nome') AND [object_id] = OBJECT_ID(N'[dbo].[Pessoas]'))
    SET IDENTITY_INSERT [dbo].[Pessoas] OFF;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20211223205220_inicial', N'5.0.13');
GO

COMMIT;
GO

