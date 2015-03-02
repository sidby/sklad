USE [Sklad]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 09.01.2014 7:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContactType]    Script Date: 09.01.2014 7:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactType](
	[ContactTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
 CONSTRAINT [PK_dbo.ContactType] PRIMARY KEY CLUSTERED 
(
	[ContactTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contractor]    Script Date: 09.01.2014 7:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contractor](
	[ContractorId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[Code] [nvarchar](300) NULL,
	[Phone] [nvarchar](150) NULL,
	[Fax] [nvarchar](150) NULL,
	[Email] [nvarchar](320) NULL,
	[ActualAddress] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[ResponsibleId] [int] NULL,
	[IsArchived] [bit] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ContractorTypeId] [int] NOT NULL,
	[Region] [nvarchar](150) NULL,
 CONSTRAINT [PK_dbo.Contractor] PRIMARY KEY CLUSTERED 
(
	[ContractorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContractorTag]    Script Date: 09.01.2014 7:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractorTag](
	[ContractorTagId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
 CONSTRAINT [PK_dbo.ContractorTag] PRIMARY KEY CLUSTERED 
(
	[ContractorTagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContractorTagContractor]    Script Date: 09.01.2014 7:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractorTagContractor](
	[ContractorTagId] [int] NOT NULL,
	[ContractorId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ContractorTagContractor] PRIMARY KEY CLUSTERED 
(
	[ContractorTagId] ASC,
	[ContractorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContractorType]    Script Date: 09.01.2014 7:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractorType](
	[ContractorTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ContractorType] PRIMARY KEY CLUSTERED 
(
	[ContractorTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LegalEntity]    Script Date: 09.01.2014 7:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LegalEntity](
	[LegalEntityId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[Code] [nvarchar](300) NULL,
	[Phone] [nvarchar](150) NULL,
	[Fax] [nvarchar](150) NULL,
	[Email] [nvarchar](320) NULL,
	[IsVATPayer] [bit] NOT NULL,
	[ActualAddress] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[Director] [nvarchar](400) NULL,
	[ChiefAccountant] [nvarchar](400) NULL,
 CONSTRAINT [PK_dbo.LegalEntity] PRIMARY KEY CLUSTERED 
(
	[LegalEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log]    Script Date: 09.01.2014 7:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Thread] [varchar](255) NOT NULL,
	[Level] [varchar](50) NOT NULL,
	[Logger] [varchar](255) NOT NULL,
	[Message] [varchar](4000) NOT NULL,
	[Exception] [varchar](2000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 09.01.2014 7:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](56) NOT NULL,
	[DisplayName] [nvarchar](100) NULL,
	[UserEmail] [nvarchar](320) NULL,
	[Surname] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NULL,
	[MiddleName] [nvarchar](100) NULL,
	[Phone1] [nvarchar](150) NULL,
	[Phone2] [nvarchar](150) NULL,
	[Skype] [nvarchar](150) NULL,
	[Comment] [nvarchar](max) NULL,
	[ContactTypeId] [int] NULL,
	[LegalEntityId] [int] NULL,
 CONSTRAINT [PK_dbo.UserProfile] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserProfileContractor]    Script Date: 09.01.2014 7:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfileContractor](
	[UserId] [int] NOT NULL,
	[ContractorId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.UserProfileContractor] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[ContractorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 09.01.2014 7:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[WarehouseId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[Code] [nvarchar](300) NULL,
	[ParentId] [int] NULL,
 CONSTRAINT [PK_dbo.Warehouse] PRIMARY KEY CLUSTERED 
(
	[WarehouseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 09.01.2014 7:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 09.01.2014 7:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 09.01.2014 7:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 09.01.2014 7:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
ALTER TABLE [dbo].[Contractor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Contractor_dbo.ContractorType_ContractorTypeId] FOREIGN KEY([ContractorTypeId])
REFERENCES [dbo].[ContractorType] ([ContractorTypeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contractor] CHECK CONSTRAINT [FK_dbo.Contractor_dbo.ContractorType_ContractorTypeId]
GO
ALTER TABLE [dbo].[Contractor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Contractor_dbo.UserProfile_ResponsibleId] FOREIGN KEY([ResponsibleId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[Contractor] CHECK CONSTRAINT [FK_dbo.Contractor_dbo.UserProfile_ResponsibleId]
GO
ALTER TABLE [dbo].[ContractorTagContractor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ContractorTagContractor_dbo.Contractor_ContractorTagId] FOREIGN KEY([ContractorTagId])
REFERENCES [dbo].[Contractor] ([ContractorId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ContractorTagContractor] CHECK CONSTRAINT [FK_dbo.ContractorTagContractor_dbo.Contractor_ContractorTagId]
GO
ALTER TABLE [dbo].[ContractorTagContractor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ContractorTagContractor_dbo.ContractorTag_ContractorId] FOREIGN KEY([ContractorId])
REFERENCES [dbo].[ContractorTag] ([ContractorTagId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ContractorTagContractor] CHECK CONSTRAINT [FK_dbo.ContractorTagContractor_dbo.ContractorTag_ContractorId]
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserProfile_dbo.ContactType_ContactTypeId] FOREIGN KEY([ContactTypeId])
REFERENCES [dbo].[ContactType] ([ContactTypeId])
GO
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_dbo.UserProfile_dbo.ContactType_ContactTypeId]
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserProfile_dbo.LegalEntity_LegalEntityId] FOREIGN KEY([LegalEntityId])
REFERENCES [dbo].[LegalEntity] ([LegalEntityId])
GO
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_dbo.UserProfile_dbo.LegalEntity_LegalEntityId]
GO
ALTER TABLE [dbo].[UserProfileContractor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserProfileContractor_dbo.Contractor_ContractorId] FOREIGN KEY([ContractorId])
REFERENCES [dbo].[Contractor] ([ContractorId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserProfileContractor] CHECK CONSTRAINT [FK_dbo.UserProfileContractor_dbo.Contractor_ContractorId]
GO
ALTER TABLE [dbo].[UserProfileContractor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserProfileContractor_dbo.UserProfile_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserProfileContractor] CHECK CONSTRAINT [FK_dbo.UserProfileContractor_dbo.UserProfile_UserId]
GO
ALTER TABLE [dbo].[Warehouse]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Warehouse_dbo.Warehouse_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Warehouse] ([WarehouseId])
GO
ALTER TABLE [dbo].[Warehouse] CHECK CONSTRAINT [FK_dbo.Warehouse_dbo.Warehouse_ParentId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
