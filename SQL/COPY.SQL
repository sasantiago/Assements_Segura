-- DROP SCHEMA dbo;

CREATE SCHEMA dbo;
-- master.dbo.AspNetRoles definition

-- Drop table

-- DROP TABLE master.dbo.AspNetRoles;

CREATE TABLE master.dbo.AspNetRoles (
	Id nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Name nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NormalizedName nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ConcurrencyStamp nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK_AspNetRoles PRIMARY KEY (Id)
);
 CREATE  UNIQUE NONCLUSTERED INDEX RoleNameIndex ON dbo.AspNetRoles (  NormalizedName ASC  )  
	 WHERE  ([NormalizedName] IS NOT NULL)
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- master.dbo.Departamentos definition

-- Drop table

-- DROP TABLE master.dbo.Departamentos;

CREATE TABLE master.dbo.Departamentos (
	ID_Departamento int IDENTITY(1,1) NOT NULL,
	NombreDepartamento nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK_Departamentos PRIMARY KEY (ID_Departamento)
);


-- master.dbo.Habitaciones definition

-- Drop table

-- DROP TABLE master.dbo.Habitaciones;

CREATE TABLE master.dbo.Habitaciones (
	Id_Habitaciones int IDENTITY(1,1) NOT NULL,
	Nombre nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CamasSencillas int NOT NULL,
	CamasDobles int NOT NULL,
	Bano nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Televisor nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Terraza nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Comedor nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Cocina nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	SalaConSofa nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Precio int NOT NULL,
	CONSTRAINT PK_Habitaciones PRIMARY KEY (Id_Habitaciones)
);


-- master.dbo.MSreplication_options definition

-- Drop table

-- DROP TABLE master.dbo.MSreplication_options;

CREATE TABLE master.dbo.MSreplication_options (
	optname sysname COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	value bit NOT NULL,
	major_version int NOT NULL,
	minor_version int NOT NULL,
	revision int NOT NULL,
	install_failures int NOT NULL
);


-- master.dbo.[__EFMigrationsHistory] definition

-- Drop table

-- DROP TABLE master.dbo.[__EFMigrationsHistory];

CREATE TABLE master.dbo.[__EFMigrationsHistory] (
	MigrationId nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	ProductVersion nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT PK___EFMigrationsHistory PRIMARY KEY (MigrationId)
);


-- master.dbo.spt_fallback_db definition

-- Drop table

-- DROP TABLE master.dbo.spt_fallback_db;

CREATE TABLE master.dbo.spt_fallback_db (
	xserver_name varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	xdttm_ins datetime NOT NULL,
	xdttm_last_ins_upd datetime NOT NULL,
	xfallback_dbid smallint NULL,
	name varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	dbid smallint NOT NULL,
	status smallint NOT NULL,
	version smallint NOT NULL
);


-- master.dbo.spt_fallback_dev definition

-- Drop table

-- DROP TABLE master.dbo.spt_fallback_dev;

CREATE TABLE master.dbo.spt_fallback_dev (
	xserver_name varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	xdttm_ins datetime NOT NULL,
	xdttm_last_ins_upd datetime NOT NULL,
	xfallback_low int NULL,
	xfallback_drive char(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	low int NOT NULL,
	high int NOT NULL,
	status smallint NOT NULL,
	name varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	phyname varchar(127) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
);


-- master.dbo.spt_fallback_usg definition

-- Drop table

-- DROP TABLE master.dbo.spt_fallback_usg;

CREATE TABLE master.dbo.spt_fallback_usg (
	xserver_name varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	xdttm_ins datetime NOT NULL,
	xdttm_last_ins_upd datetime NOT NULL,
	xfallback_vstart int NULL,
	dbid smallint NOT NULL,
	segmap int NOT NULL,
	lstart int NOT NULL,
	sizepg int NOT NULL,
	vstart int NOT NULL
);


-- master.dbo.spt_monitor definition

-- Drop table

-- DROP TABLE master.dbo.spt_monitor;

CREATE TABLE master.dbo.spt_monitor (
	lastrun datetime NOT NULL,
	cpu_busy int NOT NULL,
	io_busy int NOT NULL,
	idle int NOT NULL,
	pack_received int NOT NULL,
	pack_sent int NOT NULL,
	connections int NOT NULL,
	pack_errors int NOT NULL,
	total_read int NOT NULL,
	total_write int NOT NULL,
	total_errors int NOT NULL
);


-- master.dbo.AspNetRoleClaims definition

-- Drop table

-- DROP TABLE master.dbo.AspNetRoleClaims;

CREATE TABLE master.dbo.AspNetRoleClaims (
	Id int IDENTITY(1,1) NOT NULL,
	RoleId nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	ClaimType nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ClaimValue nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK_AspNetRoleClaims PRIMARY KEY (Id),
	CONSTRAINT FK_AspNetRoleClaims_AspNetRoles_RoleId FOREIGN KEY (RoleId) REFERENCES master.dbo.AspNetRoles(Id) ON DELETE CASCADE
);
 CREATE NONCLUSTERED INDEX IX_AspNetRoleClaims_RoleId ON dbo.AspNetRoleClaims (  RoleId ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- master.dbo.AspNetUsers definition

-- Drop table

-- DROP TABLE master.dbo.AspNetUsers;

CREATE TABLE master.dbo.AspNetUsers (
	Id nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	NombreCompleto nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	FechaNacimiento datetime2 NOT NULL,
	Id_Departamento nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Municipio nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Barrio nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Direccion nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	DepartamentoID_Departamento int NULL,
	UserName nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NormalizedUserName nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Email nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NormalizedEmail nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	EmailConfirmed bit NOT NULL,
	PasswordHash nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SecurityStamp nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ConcurrencyStamp nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PhoneNumber nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PhoneNumberConfirmed bit NOT NULL,
	TwoFactorEnabled bit NOT NULL,
	LockoutEnd datetimeoffset NULL,
	LockoutEnabled bit NOT NULL,
	AccessFailedCount int NOT NULL,
	Id_Habitacion int NULL,
	CONSTRAINT PK_AspNetUsers PRIMARY KEY (Id),
	CONSTRAINT FK_AspNetUsers_Departamentos_DepartamentoID_Departamento FOREIGN KEY (DepartamentoID_Departamento) REFERENCES master.dbo.Departamentos(ID_Departamento),
	CONSTRAINT FK_AspNetUsers_Habitaciones FOREIGN KEY (Id_Habitacion) REFERENCES master.dbo.Habitaciones(Id_Habitaciones)
);
 CREATE NONCLUSTERED INDEX EmailIndex ON dbo.AspNetUsers (  NormalizedEmail ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX IX_AspNetUsers_DepartamentoID_Departamento ON dbo.AspNetUsers (  DepartamentoID_Departamento ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE  UNIQUE NONCLUSTERED INDEX UserNameIndex ON dbo.AspNetUsers (  NormalizedUserName ASC  )  
	 WHERE  ([NormalizedUserName] IS NOT NULL)
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- master.dbo.Reservas definition

-- Drop table

-- DROP TABLE master.dbo.Reservas;

CREATE TABLE master.dbo.Reservas (
	ID_Reservas int IDENTITY(1,1) NOT NULL,
	FechaReserva datetime2 NOT NULL,
	FechaLlegada datetime2 NOT NULL,
	FechaSalida datetime2 NOT NULL,
	NumeroPersonas int NOT NULL,
	NumeroNoches int NOT NULL,
	Lavanderia nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	ID_Sede int NOT NULL,
	ID_Cliente int NOT NULL,
	SedeID_Sedes int NOT NULL,
	ClienteId nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT PK_Reservas PRIMARY KEY (ID_Reservas),
	CONSTRAINT FK_Reservas_AspNetUsers_ClienteId FOREIGN KEY (ClienteId) REFERENCES master.dbo.AspNetUsers(Id) ON DELETE CASCADE
);
 CREATE NONCLUSTERED INDEX IX_Reservas_ClienteId ON dbo.Reservas (  ClienteId ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX IX_Reservas_SedeID_Sedes ON dbo.Reservas (  SedeID_Sedes ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- master.dbo.Sedes definition

-- Drop table

-- DROP TABLE master.dbo.Sedes;

CREATE TABLE master.dbo.Sedes (
	ID_Sedes int IDENTITY(1,1) NOT NULL,
	Tipo nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Nombre_sede nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Ciudad nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CapacidadSede int NOT NULL,
	NumHabitaciones int NOT NULL,
	HabitacionId int NOT NULL,
	ServiciosSede nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT PK_Sedes PRIMARY KEY (ID_Sedes),
	CONSTRAINT FK_Sedes_Habitaciones_HabitacionId FOREIGN KEY (HabitacionId) REFERENCES master.dbo.Habitaciones(Id_Habitaciones) ON DELETE CASCADE
);
 CREATE NONCLUSTERED INDEX IX_Sedes_HabitacionId ON dbo.Sedes (  HabitacionId ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- master.dbo.Tarifas definition

-- Drop table

-- DROP TABLE master.dbo.Tarifas;

CREATE TABLE master.dbo.Tarifas (
	ID_Tarifa int IDENTITY(1,1) NOT NULL,
	ID_Sede int NOT NULL,
	NumeroPersonas int NOT NULL,
	NumeroHabitaciones int NOT NULL,
	TipoAlojamiento nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Tarifas int NOT NULL,
	SedeID_Sedes int NOT NULL,
	CONSTRAINT PK_Tarifas PRIMARY KEY (ID_Tarifa),
	CONSTRAINT FK_Tarifas_Sedes_SedeID_Sedes FOREIGN KEY (SedeID_Sedes) REFERENCES master.dbo.Sedes(ID_Sedes) ON DELETE CASCADE
);
 CREATE NONCLUSTERED INDEX IX_Tarifas_SedeID_Sedes ON dbo.Tarifas (  SedeID_Sedes ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- master.dbo.AspNetUserClaims definition

-- Drop table

-- DROP TABLE master.dbo.AspNetUserClaims;

CREATE TABLE master.dbo.AspNetUserClaims (
	Id int IDENTITY(1,1) NOT NULL,
	UserId nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	ClaimType nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ClaimValue nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK_AspNetUserClaims PRIMARY KEY (Id),
	CONSTRAINT FK_AspNetUserClaims_AspNetUsers_UserId FOREIGN KEY (UserId) REFERENCES master.dbo.AspNetUsers(Id) ON DELETE CASCADE
);
 CREATE NONCLUSTERED INDEX IX_AspNetUserClaims_UserId ON dbo.AspNetUserClaims (  UserId ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- master.dbo.AspNetUserLogins definition

-- Drop table

-- DROP TABLE master.dbo.AspNetUserLogins;

CREATE TABLE master.dbo.AspNetUserLogins (
	LoginProvider nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	ProviderKey nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	ProviderDisplayName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	UserId nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT PK_AspNetUserLogins PRIMARY KEY (LoginProvider,ProviderKey),
	CONSTRAINT FK_AspNetUserLogins_AspNetUsers_UserId FOREIGN KEY (UserId) REFERENCES master.dbo.AspNetUsers(Id) ON DELETE CASCADE
);
 CREATE NONCLUSTERED INDEX IX_AspNetUserLogins_UserId ON dbo.AspNetUserLogins (  UserId ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- master.dbo.AspNetUserRoles definition

-- Drop table

-- DROP TABLE master.dbo.AspNetUserRoles;

CREATE TABLE master.dbo.AspNetUserRoles (
	UserId nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	RoleId nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT PK_AspNetUserRoles PRIMARY KEY (UserId,RoleId),
	CONSTRAINT FK_AspNetUserRoles_AspNetRoles_RoleId FOREIGN KEY (RoleId) REFERENCES master.dbo.AspNetRoles(Id) ON DELETE CASCADE,
	CONSTRAINT FK_AspNetUserRoles_AspNetUsers_UserId FOREIGN KEY (UserId) REFERENCES master.dbo.AspNetUsers(Id) ON DELETE CASCADE
);
 CREATE NONCLUSTERED INDEX IX_AspNetUserRoles_RoleId ON dbo.AspNetUserRoles (  RoleId ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- master.dbo.AspNetUserTokens definition

-- Drop table

-- DROP TABLE master.dbo.AspNetUserTokens;

CREATE TABLE master.dbo.AspNetUserTokens (
	UserId nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	LoginProvider nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Name nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Value nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK_AspNetUserTokens PRIMARY KEY (UserId,LoginProvider,Name),
	CONSTRAINT FK_AspNetUserTokens_AspNetUsers_UserId FOREIGN KEY (UserId) REFERENCES master.dbo.AspNetUsers(Id) ON DELETE CASCADE
);


-- dbo.spt_values source

create view spt_values as
select name collate database_default as name,
	number,
	type collate database_default as type,
	low, high, status
from sys.spt_values;