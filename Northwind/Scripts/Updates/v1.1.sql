IF OBJECT_ID(N'[dbo].[Cards]', N'U') IS NULL
BEGIN
  CREATE TABLE [dbo].[Cards]
  (
      [Id] INT NOT NULL  IDENTITY, 
      [Number] NVARCHAR(16) NOT NULL, 
      [ExpirationDate] DATE NOT NULL, 
      [CardHolder] NVARCHAR(50) NOT NULL, 
      [EmployeeId] INT NOT NULL, 
      CONSTRAINT [PK_Cards] PRIMARY KEY CLUSTERED ([Id] ASC),
      CONSTRAINT [FK_Cards_Employees] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Employees] ([EmployeeID])
  )
END
