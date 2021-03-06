USE [seven_ORA]
GO
/****** Object:  Table [dbo].[Ch_Pw]    Script Date: 5/9/2018 9:59:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ch_Pw](
	[account] [varchar](50) NULL,
	[oldpass] [varchar](50) NULL,
	[oldhash] [varchar](50) NULL,
	[newpass] [varchar](50) NULL,
	[newhash] [varchar](50) NULL,
	[oldhost] [varchar](50) NULL,
	[newhost] [varchar](50) NULL,
	[regDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donation_History]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donation_History](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [varchar](60) NULL,
	[CharacterName] [varchar](60) NULL,
	[Amount] [int] NULL,
	[txtItemDeposited] [varchar](150) NULL,
	[binItemDeposited] [binary](14) NULL,
	[dateReg] [datetime] NULL,
	[subAmount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonationLog]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonationLog](
	[txtAccount] [varchar](30) NULL,
	[txtItemData] [varchar](2000) NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reboot_Log]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reboot_Log](
	[AID] [int] IDENTITY(1,1) NOT NULL,
	[dateReg]  AS (getdate()),
	[RemoteHost] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restart_Flag]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restart_Flag](
	[ARC_LS] [int] NULL,
	[ARC_WS] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statistic]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statistic](
	[txtChannel] [varchar](50) NOT NULL,
	[intCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusChecker]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusChecker](
	[ProcessName] [varchar](50) NULL,
	[Status] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskList]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskList](
	[ProcessList] [varchar](800) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[testingtesting]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testingtesting](
	[line] [varchar](2000) NULL,
	[line2] [varchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TopClans]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopClans](
	[txtNAME] [nchar](20) NOT NULL,
	[intPOINT] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TopUsers]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopUsers](
	[txtNAME] [nvarchar](30) NULL,
	[btLEVEL] [smallint] NULL,
	[intJOB] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TryLimits]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TryLimits](
	[IP] [varchar](50) NULL,
	[Tries] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_mail_check]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_mail_check](
	[ch_aid] [int] NULL,
	[ch_account] [nvarchar](50) NOT NULL,
	[ch_pw] [nvarchar](50) NULL,
 CONSTRAINT [PK_user_mail_check] PRIMARY KEY CLUSTERED 
(
	[ch_account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Account] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NULL,
	[AID] [int] NULL,
	[AllowBeta] [int] NULL,
	[AscPassWord] [nvarchar](50) NULL,
	[Birthday] [datetime] NULL,
	[BlockEnd] [datetime] NULL,
	[BlockEnd_Web] [datetime] NULL,
	[BlockStart] [datetime] NULL,
	[BlockStart_Web] [datetime] NULL,
	[City] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[Gen] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Jumin] [nvarchar](50) NULL,
	[LastConnect] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[MailIsConfirm] [bit] NULL,
	[MailOpt] [bit] NULL,
	[MD5PassWord] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[MortherLName] [nvarchar](50) NULL,
	[Nation] [nvarchar](50) NULL,
	[NickName] [nvarchar](50) NULL,
	[RegDate] [datetime] NULL,
	[Right] [int] NULL,
	[States] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[realname] [nvarchar](50) NULL,
	[USER_CP] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[memberinfo] [int] NOT NULL,
	[Mod] [nvarchar](50) NULL,
	[hint] [nvarchar](50) NULL,
	[answer] [nvarchar](50) NULL,
	[job] [nvarchar](50) NULL,
	[BlockReason] [nvarchar](100) NULL,
	[birthyear] [datetime] NULL,
	[MotherLName] [nvarchar](50) NULL,
	[BlockGM] [varchar](30) NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserInfo] ADD  CONSTRAINT [DF_UserInfo_memberinfo]  DEFAULT ((0)) FOR [memberinfo]
GO
/****** Object:  StoredProcedure [dbo].[DeleteAccount]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[DeleteAccount] @Account nvarchar(20), @AscPassWord varchar(16), @EMail varchar(32), @Reason varchar(100) As Set NoCount On Begin Tran Begin Insert Into [dbo].[UserInfo_UN] Select * From [dbo].[UserInfo] Where Account = @Account And AscPassWord = @AscPassWord And EMail = @EMail End Begin Insert Into [dbo].[UserInfo_UN_Reason](Account, DrawDate, DrawReason) Values(@Account, Default, @Reason) End Begin Delete From [dbo].[UserInfo] Where Account = @Account And AscPassWord = @AscPassWord And EMail = @EMail End Commit Tran

GO
/****** Object:  StoredProcedure [dbo].[InsertAccount]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  Proc [dbo].[InsertAccount] @Account nvarchar(20), @MD5Password varchar(32), @MLName nvarchar(32), @FName nvarchar(32), @MName nvarchar(32), @LName nvarchar(32), @Address nvarchar(128), @City nvarchar(20), @ZipCode varchar(7), @EMail varchar(32), @MailOpt char(3), @Tel varchar(16), @Nation varchar(30), @Gender char(1), @BirthDay char(8), @AscPassWord varchar(16), @Ch_PW varchar(30) As Set NoCount On Declare @AID int set @AID=(select max(AID) from seven_ORA..UserInfo) set @AID=@AID+1 Begin Tran Begin Insert Into [dbo].[UserInfo]( Account, MD5Password, MotherLName, FirstName, MiddleName, LastName, Address, City, ZipCode, EMail, MailOpt, Tel, Nation, RegDate, Gender, BirthDay, [Right], AscPassWord, MailIsConfirm, AID,memberinfo) Values( @Account, @MD5Password, @MLName, @FName, @MName, @LName, @Address, @City, @ZipCode, @EMail, 1, @Tel, @Nation, Default, @Gender, @BirthDay, 0, @AscPassWord, 1, @AID,  2) End Select @AID = AID From [dbo].[UserInfo] Where Account = @Account Begin Insert Into [dbo].[User_Mail_Check](Ch_AID, Ch_Account, Ch_PW) Values(@AID, @Account, @Ch_PW) End Commit Tran

GO
/****** Object:  StoredProcedure [dbo].[sp_ActivateAccounts]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[sp_ActivateAccounts] AS
declare @currentdate datetime
set @currentdate=getdate();
delete from seven_ORA..UserInfo where memberinfo=0 and regdate is null and Tel in 
(--crash--
'68.169.176.14',
'222.164.113.166',
'207.13.77.111',
'24.17.115.240',
'207.13.77.118',
'207.13.77.109',
'80.24.237.76',
'200.116.174.154',
'81.202.143.89',
'213.96.157.52',
'62.252.64.31',
'196.218.81.44',
'24.17.127.210',
--forum packets--
'68.106.102.68',
'82.238.19.7',
'81.102.167.85',
'80.60.246.106',
'80.242.237.66',
'71.107.69.155',
'220.240.89.223',
'219.95.133.190',
'218.186.11.2',
'202.67.91.92',
--Exploits--
'82.158.213.61',
'82.158.214.35',
'83.42.164.244',
--DesertRaven--
'213.161.5.196',
'213.161.7.253',
'82.201.218.135',
'82.201.219.192',
'84.82.124.185',
--QuestHaxPostWipe--
'201.6.9.163',
'220.255.23.226',
'62.43.148.227',
'83.152.95.112',
'83.155.163.155',
--Charm Exploits post wipe--
'24.13.117.8',
'74.120.192.53',
'69.138.1.203',
'84.98.222.190',
'82.227.39.235',
'83.205.218.133',
'81.246.191.64',
'90.16.66.109',
'86.198.224.157',
'24.12.231.81',
'69.138.1.203',
'81.56.52.60',
---GM tags or WS crash---
'83.226.164.85',
'86.146.210.168',
'83.23.124.34',
'86.147.203.41',
'85.210.174.35',
--More GM Tags --
'172.190.200.191',
'172.191.168.200',
'172.194.248.3',
'172.195.148.45',
'207.255.115.174',
'218.208.223.74',
'62.218.151.138',
'66.228.119.104',
'69.115.149.17',
'69.221.67.212',
'69.248.127.97',
'81.153.227.116',
'81.158.237.23',
'81.164.242.173',
'81.178.64.197',
'82.154.174.100',
'82.154.176.113',
'82.154.73.136',
'82.154.77.141',
'82.154.77.68',
'82.160.2.82',
'82.171.152.11',
'82.173.117.35',
'83.226.164.85',
'83.23.115.176',
'83.23.118.198',
'83.23.143.221',
'83.23.148.91',
'83.23.182.78',
'83.23.188.137',
'83.23.188.64',
'83.23.190.47',
'83.28.202.41',
'84.194.39.115',
'85.210.139.227',
'85.210.174.35',
'85.240.210.93',
'85.87.65.156',
'86.146.210.168',
'86.147.203.41',
'86.84.84.184',
---Eruca---
'69.138.1.203',
'219.241.129.248',
'85.195.117.177',
'84.252.41.177',
'82.171.1.12',
'206.116.178.85',
'219.241.129.248',
'24.12.231.81',
'24.13.117.8',
'24.19.95.49',
'24.40.166.169',
'65.8.177.80',
'69.138.1.203',
'70.180.196.88',
'71.197.81.136',
'74.120.192.53',
'85.195.117.177')

update seven_ORA..UserInfo set [right]=1,regdate=@currentdate,memberinfo=2 where memberinfo=0 and BlockReason is null and regDate is null
select count(*) from seven_ORA..UserInfo where regDate=@currentdate
GO
/****** Object:  StoredProcedure [dbo].[sp_ActivateAccountsASP]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[sp_ActivateAccountsASP] AS
declare @currentdate datetime,@activatedcount int
set @currentdate=getDate();
delete from seven_ORA..UserInfo where memberinfo=0 and regdate is null and Tel in 
(--crash--
'68.169.176.14',
'222.164.113.166',
'207.13.77.111',
'24.17.115.240',
'207.13.77.118',
'207.13.77.109',
'80.24.237.76',
'200.116.174.154',
'81.202.143.89',
'213.96.157.52',
'62.252.64.31',
'196.218.81.44',
'24.17.127.210',
--forum packets--
'68.106.102.68',
'82.238.19.7',
'81.102.167.85',
'80.60.246.106',
'80.242.237.66',
'71.107.69.155',
'220.240.89.223',
'219.95.133.190',
'218.186.11.2',
'202.67.91.92',
--Exploits--
'82.158.213.61',
'82.158.214.35',
'83.42.164.244',
--DesertRaven--
'213.161.5.196',
'213.161.7.253',
'82.201.218.135',
'82.201.219.192',
'84.82.124.185',
--QuestHaxPostWipe--
'201.6.9.163',
'220.255.23.226',
'62.43.148.227',
'83.152.95.112',
'83.155.163.155',
--Charm Exploits post wipe--
'24.13.117.8',
'74.120.192.53',
'69.138.1.203',
'84.98.222.190',
'82.227.39.235',
'83.205.218.133',
'81.246.191.64',
'90.16.66.109',
'86.198.224.157',
'24.12.231.81',
'69.138.1.203',
'81.56.52.60',
---GM tags or WS crash---
'83.226.164.85',
'86.146.210.168',
'83.23.124.34',
'86.147.203.41',
'85.210.174.35',
--More GM Tags --
'172.190.200.191',
'172.191.168.200',
'172.194.248.3',
'172.195.148.45',
'207.255.115.174',
'218.208.223.74',
'62.218.151.138',
'66.228.119.104',
'69.115.149.17',
'69.221.67.212',
'69.248.127.97',
'81.153.227.116',
'81.158.237.23',
'81.164.242.173',
'81.178.64.197',
'82.154.174.100',
'82.154.176.113',
'82.154.73.136',
'82.154.77.141',
'82.154.77.68',
'82.160.2.82',
'82.171.152.11',
'82.173.117.35',
'83.226.164.85',
'83.23.115.176',
'83.23.118.198',
'83.23.143.221',
'83.23.148.91',
'83.23.182.78',
'83.23.188.137',
'83.23.188.64',
'83.23.190.47',
'83.28.202.41',
'84.194.39.115',
'85.210.139.227',
'85.210.174.35',
'85.240.210.93',
'85.87.65.156',
'86.146.210.168',
'86.147.203.41',
'86.84.84.184',
---Eruca---
'69.138.1.203',
'219.241.129.248',
'85.195.117.177',
'84.252.41.177',
'82.171.1.12',
'206.116.178.85',
'219.241.129.248',
'24.12.231.81',
'24.13.117.8',
'24.19.95.49',
'24.40.166.169',
'65.8.177.80',
'69.138.1.203',
'70.180.196.88',
'71.197.81.136',
'74.120.192.53',
'85.195.117.177',
--Virgames--
'221.196.249.248',
'221.197.193.248',
'221.197.193.143',
'221.197.193.123',
'220.248.65.67')

update seven_ORA..UserInfo set [right]=1,regdate=@currentdate,memberinfo=2 where memberinfo=0 and BlockReason is null and regDate is null
set @activatedcount=(select count(*) from seven_ORA..UserInfo where regDate=@currentdate)
return @activatedcount
GO
/****** Object:  StoredProcedure [dbo].[sp_LS_Reboot]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_LS_Reboot] @RemoteHost varchar(50) AS
insert Reboot_Log(RemoteHost) Values(@RemoteHost)
Update Restart_Flag set ARC_LS=1;
GO
/****** Object:  StoredProcedure [dbo].[sp_reboot]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[sp_reboot] AS
exec master..xp_cmdshell 'taskkill /F /IM SHO_LS.exe'
exec master..xp_cmdshell 'c:\SHO\LoginServer\SHO_LS.exe'
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateStatusChecker]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_UpdateStatusChecker] as
declare @ls int, @ws int, @gs int
INSERT INTO seven_ORA..TaskList EXEC master..xp_cmdshell 'tasklist |Find "SHO_LS"'
INSERT INTO seven_ORA..TaskList EXEC master..xp_cmdshell 'tasklist |Find "SHO_WS"'
INSERT INTO seven_ORA..TaskList EXEC master..xp_cmdshell 'tasklist |Find "SHO_GS"'
set @ls = (select count(*) from seven_ORA..TaskList where ProcessList like '%SHO_LS%')
set @ws = (select count(*) from seven_ORA..TaskList where ProcessList like '%SHO_WS%')
set @gs = (select count(*) from seven_ORA..TaskList where ProcessList like '%SHO_GS%')
Update seven_ORA..StatusChecker set Status=@ls where ProcessName='SHO_LS'
Update seven_ORA..StatusChecker set Status=@ws where ProcessName='SHO_WS'
Update seven_ORA..StatusChecker set Status=@gs where ProcessName='SHO_GS'
DELETE FROM seven_ORA..TaskList

GO
/****** Object:  StoredProcedure [dbo].[up_GetAbilityLog]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Proc [dbo].[up_GetAbilityLog] @CharName nvarchar(30), @Sdate nvarchar(30), @Edate nvarchar(30), @CharSvr varchar(30) As Set nocount on Declare @ExecString varchar(1900) Declare @Date varchar(6) set @Edate= (select convert(varchar,dateadd(dd,1,@Edate),112)) set @ExecString = '' set @ExecString = 'Declare @AbilityLog Table(dateREG datetime,' set @ExecString = @ExecString+ ' CharName nvarchar(30),' set @ExecString = @ExecString+ ' AbilityType smallint,' set @ExecString = @ExecString+ ' UsedPoint smallint,' set @ExecString = @ExecString+ ' BonusPoint smallint,' set @ExecString = @ExecString+ ' IP char(15),' set @ExecString = @ExecString+ ' Location varchar(24),' set @ExecString = @ExecString+ ' LocX int,' set @ExecString = @ExecString+ ' LocY int)' set @Date = (select convert(varchar,dateadd(mm,-2,getdate()),112)) set @ExecString = @ExecString+ ' IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N''SHOLog_'+@CharSvr+'_'+@Date+''')' set @ExecString = @ExecString+ ' Begin' set @ExecString = @ExecString+ ' Insert Into @AbilityLog' set @ExecString = @ExecString+ ' Select dateREG, CharName, Abilitytype, UsedPoint, BonusPoint, IP, Location,LocX,LocY' set @ExecString = @ExecString+ ' From SHOLog_'+@CharSvr+'_'+@Date+'.dbo.GS_ChangeAbility' set @ExecString = @ExecString+ ' Where CharName ='''+@CharName+''' and (dateREG Between '''+@Sdate+''' and '''+@Edate+''')' set @ExecString = @ExecString+ ' End' set @Date = (select convert(varchar,dateadd(mm,-1,getdate()),112)) set @ExecString = @ExecString+ ' IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N''SHOLog_'+@CharSvr+'_'+@Date+''')' set @ExecString = @ExecString+ ' Begin' set @ExecString = @ExecString+ ' Insert Into @AbilityLog' set @ExecString = @ExecString+ ' Select dateREG, CharName, Abilitytype, UsedPoint, BonusPoint, IP, Location,LocX,LocY' set @ExecString = @ExecString+ ' From SHOLog_'+@CharSvr+'_'+@Date+'.dbo.GS_ChangeAbility' set @ExecString = @ExecString+ ' Where CharName ='''+@CharName+''' and (dateREG Between '''+@Sdate+''' and '''+@Edate+''')' set @ExecString = @ExecString+ ' End' set @Date = (select convert(varchar, getdate(),112)) set @ExecString = @ExecString+ ' IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N''SHOLog_'+@CharSvr+'_'+@Date+''')' set @ExecString = @ExecString+ ' Begin' set @ExecString = @ExecString+ ' Insert Into @AbilityLog' set @ExecString = @ExecString+ ' Select dateREG, CharName, Abilitytype, UsedPoint, BonusPoint, IP, Location,LocX,LocY' set @ExecString = @ExecString+ ' From SHOLog_'+@CharSvr+'_'+@Date+'.dbo.GS_ChangeAbility' set @ExecString = @ExecString+ ' Where CharName ='''+@CharName+''' and (dateREG Between '''+@Sdate+''' and '''+@Edate+''')' set @ExecString = @ExecString+ ' End' set @ExecString = @ExecString+ ' Select dateREG,CharName,AbilityType, UsedPoint, BonusPoint, IP,Location,LocX,LocY' set @ExecString = @ExecString+ ' From @AbilityLog' set @ExecString = @ExecString+ ' order by dateREG' print @ExecString Exec (@ExecString) Set NoCount Off 

GO
/****** Object:  StoredProcedure [dbo].[up_GetRefineLog]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Proc [dbo].[up_GetRefineLog] @CharName nvarchar(30), @Sdate nvarchar(30), @Edate nvarchar(30), @Chk_num varchar(30), @CharSvr varchar(30) As Set nocount on Declare @ExecString varchar(2000) Declare @Date varchar(6) set @Edate= (select convert(varchar,dateadd(dd,1,@Edate),112)) set @ExecString = '' set @ExecString = 'Declare @RefineLog Table(dateREG datetime,' set @ExecString = @ExecString+ ' CharName nvarchar(30),' set @ExecString = @ExecString+ ' ItemName nvarchar(20),' set @ExecString = @ExecString+ ' UpLevel smallint,' set @ExecString = @ExecString+ ' Success tinyint,' set @ExecString = @ExecString+ ' Location varchar(24),' set @ExecString = @ExecString+ ' LocX int,' set @ExecString = @ExecString+ ' LocY int)' set @Date = (select convert(varchar,dateadd(mm,-2,getdate()),112)) set @ExecString = @ExecString+ ' IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N''SHOLog_'+@CharSvr+'_'+@Date+''')' set @ExecString = @ExecString+ ' Begin' set @ExecString = @ExecString+ ' Insert Into @RefineLOG' set @ExecString = @ExecString+ ' Select dateREG, CharName, ItemName, UpLevel, Success, Location, LocX, LocY' set @ExecString = @ExecString+ ' From SHOLog_'+@CharSvr+'_'+@Date+'.dbo.GS_UpgradeLOG' IF @Chk_num='' Begin set @ExecString = @ExecString+ ' Where CharName ='''+@CharName+''' and (dateREG Between '''+@Sdate+''' and '''+@Edate+''')' End Else Begin set @ExecString = @ExecString+ ' Where Success in ('+@Chk_num+') and CharName = '''+@CharName+''' and (dateREG Between '''+@Sdate+''' and '''+@Edate+''')' End set @ExecString = @ExecString+ ' End' set @Date = (select convert(varchar,dateadd(mm,-1,getdate()),112)) set @ExecString = @ExecString+ ' IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N''SHOLog_'+@CharSvr+'_'+@Date+''')' set @ExecString = @ExecString+ ' Begin' set @ExecString = @ExecString+ ' Insert Into @RefineLOG' set @ExecString = @ExecString+ ' Select dateREG, CharName, ItemName, UpLevel, Success, Location, LocX, LocY' set @ExecString = @ExecString+ ' From SHOLog_'+@CharSvr+'_'+@Date+'.dbo.GS_UpgradeLOG' IF @Chk_num='' Begin set @ExecString = @ExecString+ ' Where CharName ='''+@CharName+''' and (dateREG Between '''+@Sdate+''' and '''+@Edate+''')' End Else Begin set @ExecString = @ExecString+ ' Where Success in ('+@Chk_num+') and CharName = '''+@CharName+''' and (dateREG Between '''+@Sdate+''' and '''+@Edate+''')' End set @ExecString = @ExecString+ ' End' set @Date = (select convert(varchar, getdate(),112)) set @ExecString = @ExecString+ ' IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N''SHOLog_'+@CharSvr+'_'+@Date+''')' set @ExecString = @ExecString+ ' Begin' set @ExecString = @ExecString+ ' Insert Into @RefineLOG' set @ExecString = @ExecString+ ' Select dateREG, CharName, ItemName, UpLevel, Success, Location, LocX, LocY' set @ExecString = @ExecString+ ' From SHOLog_'+@CharSvr+'_'+@Date+'.dbo.GS_UpgradeLOG' IF @Chk_num='' Begin set @ExecString = @ExecString+ ' Where CharName ='''+@CharName+''' and (dateREG Between '''+@Sdate+''' and '''+@Edate+''')' End Else Begin set @ExecString = @ExecString+ ' Where Success in ('+@Chk_num+') and CharName = '''+@CharName+''' and (dateREG Between '''+@Sdate+''' and '''+@Edate+''')' End set @ExecString = @ExecString+ ' End' set @ExecString = @ExecString+ ' Select dateREG, CharName, ItemName, UpLevel, Location, LocX, LocY,' set @ExecString = @ExecString+ ' Success = Case Success' set @ExecString = @ExecString+ ' When 0 Then ''Success''' set @ExecString = @ExecString+ ' When 1 Then ''Fail''' set @ExecString = @ExecString+ ' ELSE ''Error''' set @ExecString = @ExecString+ ' End' set @ExecString = @ExecString+ ' From @RefineLOG' set @ExecString = @ExecString+ ' order by dateREG' print @ExecString Exec (@ExecString) Set NoCount Off 

GO
/****** Object:  StoredProcedure [dbo].[up_GetUnionLog]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Proc [dbo].[up_GetUnionLog] @CharName nvarchar(30), @Sdate nvarchar(30), @Edate nvarchar(30), @Chk_num varchar(30), @CharSvr varchar(30) As Set nocount on Declare @ExecString varchar(2300) Declare @Date varchar(6) set @Edate= (select convert(varchar,dateadd(dd,1,@Edate),112)) set @ExecString = '' set @ExecString = 'Declare @UnionLog Table(dateREG datetime,' set @ExecString = @ExecString+ ' szCharName nvarchar(30),' set @ExecString = @ExecString+ ' nAction smallint,' set @ExecString = @ExecString+ ' nCurUnion smallint,' set @ExecString = @ExecString+ ' iCurPoint int,' set @ExecString = @ExecString+ ' nAfterUnion smallint,' set @ExecString = @ExecString+ ' iAfterPoint int,' set @ExecString = @ExecString+ ' szLocation varchar(24),' set @ExecString = @ExecString+ ' iLocX int,' set @ExecString = @ExecString+ ' iLocY int)' set @Date = (select convert(varchar,dateadd(mm,-2,getdate()),112)) set @ExecString = @ExecString+ ' IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N''SHOLog_'+@CharSvr+'_'+@Date+''')' set @ExecString = @ExecString+ ' Begin' set @ExecString = @ExecString+ ' Insert Into @UnionLOG' set @ExecString = @ExecString+ ' Select dateREG, szCharName, nAction, nCurUnion, iCurPoint, nAfterUnion, iAfterPoint, szLocation, iLocX, iLocY' set @ExecString = @ExecString+ ' From SHOLog_'+@CharSvr+'_'+@Date+'.dbo.GS_UnionLOG' IF @Chk_num='' Begin set @ExecString = @ExecString+ ' Where szCharName ='''+@CharName+''' and (dateREG Between '''+@Sdate+''' and '''+@Edate+''')' End Else Begin set @ExecString = @ExecString+ ' Where nAction in ('+@Chk_num+') and szCharName = '''+@CharName+''' and (dateREG Between '''+@Sdate+''' and '''+@Edate+''')' End set @ExecString = @ExecString+ ' End' set @Date = (select convert(varchar,dateadd(mm,-1,getdate()),112)) set @ExecString = @ExecString+ ' IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N''SHOLog_'+@CharSvr+'_'+@Date+''')' set @ExecString = @ExecString+ ' Begin' set @ExecString = @ExecString+ ' Insert Into @UnionLOG' set @ExecString = @ExecString+ ' Select dateREG, szCharName, nAction, nCurUnion, iCurPoint, nAfterUnion, iAfterPoint, szLocation, iLocX, iLocY' set @ExecString = @ExecString+ ' From SHOLog_'+@CharSvr+'_'+@Date+'.dbo.GS_UnionLOG' IF @Chk_num='' Begin set @ExecString = @ExecString+ ' Where szCharName ='''+@CharName+''' and (dateREG Between '''+@Sdate+''' and '''+@Edate+''')' End Else Begin set @ExecString = @ExecString+ ' Where nAction in ('+@Chk_num+') and szCharName = '''+@CharName+''' and (dateREG Between '''+@Sdate+''' and '''+@Edate+''')' End set @ExecString = @ExecString+ ' End' set @Date = (select convert(varchar, getdate(),112)) set @ExecString = @ExecString+ ' IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N''SHOLog_'+@CharSvr+'_'+@Date+''')' set @ExecString = @ExecString+ ' Begin' set @ExecString = @ExecString+ ' Insert Into @UnionLOG' set @ExecString = @ExecString+ ' Select dateREG, szCharName, nAction, nCurUnion, iCurPoint, nAfterUnion, iAfterPoint, szLocation, iLocX, iLocY' set @ExecString = @ExecString+ ' From SHOLog_'+@CharSvr+'_'+@Date+'.dbo.GS_UnionLOG' IF @Chk_num='' Begin set @ExecString = @ExecString+ ' Where szCharName ='''+@CharName+''' and (dateREG Between '''+@Sdate+''' and '''+@Edate+''')' End Else Begin set @ExecString = @ExecString+ ' Where nAction in ('+@Chk_num+') and szCharName = '''+@CharName+''' and (dateREG Between '''+@Sdate+''' and '''+@Edate+''')' End set @ExecString = @ExecString+ ' End' set @ExecString = @ExecString+ ' Select dateREG, szCharName, iCurPoint, iAfterPoint, szLocation, iLocX, iLocY,' set @ExecString = @ExecString+ ' nAction = Case nAction' set @ExecString = @ExecString+ ' When 0 Then ''Join''' set @ExecString = @ExecString+ ' When 1 Then ''Cancellation and Join''' set @ExecString = @ExecString+ ' When 2 Then ''Withdraw'

GO
/****** Object:  StoredProcedure [dbo].[UpdatePWD]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[UpdatePWD] 
@Account nvarchar(20), 
@MLName nvarchar(32), 
@MD5Password varchar(32), 
@MD5Password2 varchar(32),
@AscPassWord varchar(16), 
@AscPassWord2 varchar(16), 
@rsHost varchar(50),
@EMail varchar(32)
As

Declare @OldPass varchar(50), @OldHash varchar(50), @OldHost varchar(50) 
set @OldPass=(select top 1 AscPassword from seven_ORA..UserInfo where Account=@Account)
set @OldHash=(select top 1 MD5Password from seven_ORA..UserInfo where Account=@Account)
set @OldHost=(select top 1 Tel from seven_ORA..UserInfo where Account=@Account)

if (select count(*) from UserInfo where Account=@Account and MotherLName=@MLName and MD5Password=@MD5Password and AscPassword=@AscPassWord and Email=@EMail)=1
Begin
update UserInfo set MD5PassWord=@MD5Password2,AscPassWord=@AscPassWord2 where Account=@Account
insert into Ch_Pw (account,oldpass,oldhash,newpass,newhash,oldhost,newhost,regDate) values (@Account,@OldPass,@Oldhash,@AscPassWord2,@MD5Password2,@OldHost,@rsHost,getDate())
End
GO
/****** Object:  StoredProcedure [dbo].[UpdateStat]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[UpdateStat] 
@inChannel nvarchar(50), 
@inCount int
As

Begin
update Statistic set intCount=@inCount where txtChannel=@inChannel
End
GO
/****** Object:  StoredProcedure [dbo].[UserAuthenticate]    Script Date: 5/9/2018 9:59:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[UserAuthenticate] @Account nvarchar(20) AS Set NoCount On Select [Right], MD5Password, LastConnect, BlockStart, BlockEnd, Gender, MailIsConfirm From UserInfo Where Account = @Account 

GO
USE [master]
GO
ALTER DATABASE [seven_ORA] SET  READ_WRITE 
GO
