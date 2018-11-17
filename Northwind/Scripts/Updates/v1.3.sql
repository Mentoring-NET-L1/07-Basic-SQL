IF OBJECT_ID(N'[dbo].[Region]', N'U') IS NOT NULL
BEGIN
  EXECUTE sp_rename N'[dbo].[Region]', N'Regions';
END

IF OBJECT_ID(N'[dbo].[PK_Region]', N'U') IS NOT NULL
BEGIN
  EXECUTE sp_rename N'[dbo].[PK_Region]', N'PK_Regions';
END

IF OBJECT_ID(N'[dbo].[Customers].[FoundationDate]', N'U') IS NULL
BEGIN
  ALTER TABLE [dbo].[Customers]
    ADD [FoundationDate] DATETIME NULL;
END
