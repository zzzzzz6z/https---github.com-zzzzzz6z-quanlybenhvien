DROP TABLE core_application CASCADE
;
DROP TABLE core_fk_usergroup2user CASCADE
;
DROP TABLE core_fk_usergroup2role CASCADE
;
DROP TABLE core_fk_usergroup2organization CASCADE
;
DROP TABLE core_fk_user2role CASCADE
;
DROP TABLE core_fk_user2organization CASCADE
;
DROP TABLE core_fk_role2action CASCADE
;
DROP TABLE core_role CASCADE
;
DROP SEQUENCE  core_role_id_seq
;
DROP TABLE core_module CASCADE
;
DROP SEQUENCE  core_module_id_seq
;
DROP TABLE core_menutype CASCADE
;
DROP SEQUENCE  core_menutype_id_seq
;
DROP TABLE core_menu CASCADE
;
DROP SEQUENCE  core_menu_id_seq
;
DROP TABLE core_action CASCADE
;
DROP SEQUENCE  core_action_id_seq
;
DROP TABLE core_organization CASCADE
;
DROP SEQUENCE  core_organization_id_seq
;
DROP TABLE core_usergroup CASCADE
;
DROP SEQUENCE  core_usergroup_id_seq
;
DROP TABLE core_user CASCADE
;
DROP SEQUENCE  core_user_id_seq
;

CREATE TABLE core_application ( 
	id bigint NOT NULL,
	name varchar(500) NOT NULL,
	code varchar(50) NOT NULL,
	status_ smallint DEFAULT 1 NOT NULL,
	isdeployed smallint DEFAULT 1 NOT NULL,
	isdeleted bigint DEFAULT 0 NOT NULL
)
;

CREATE TABLE core_fk_usergroup2user ( 
	usergroupid bigint NOT NULL,
	userid bigint NOT NULL
)
;

CREATE TABLE core_fk_usergroup2role ( 
	usergroupid bigint NOT NULL,
	roleid bigint NOT NULL
)
;

CREATE TABLE core_fk_usergroup2organization ( 
	usergroupid bigint NOT NULL,
	organizationid bigint NOT NULL
)
;

CREATE TABLE core_fk_user2role ( 
	userid bigint NOT NULL,
	roleid bigint NOT NULL
)
;

CREATE TABLE core_fk_user2organization ( 
	userid bigint NOT NULL,
	organizationid bigint NOT NULL
)
;

CREATE TABLE core_fk_role2action ( 
	roleid bigint NOT NULL,
	actionid bigint NOT NULL
)
;

CREATE SEQUENCE core_role_id_seq INCREMENT 1 START 1
;

CREATE TABLE core_role ( 
	id bigint DEFAULT nextval(('core_role_id_seq'::text)::regclass) NOT NULL,
	name varchar(250) NOT NULL,
	code varchar(50) NOT NULL,
	status_ smallint DEFAULT 1 NOT NULL,
	isdeleted bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE core_module_id_seq INCREMENT 1 START 1
;

CREATE TABLE core_module ( 
	id bigint DEFAULT nextval(('core_module_id_seq'::text)::regclass) NOT NULL,
	applicationid bigint NOT NULL,
	package varchar(250) NOT NULL,
	code varchar(50) NOT NULL,
	name varchar(250) NOT NULL,
	version integer NOT NULL,
	status_ smallint DEFAULT 1 NOT NULL,
	isdeleted bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE core_menutype_id_seq INCREMENT 1 START 1
;

CREATE TABLE core_menutype ( 
	id bigint DEFAULT nextval(('core_menutype_id_seq'::text)::regclass) NOT NULL,
	name varchar(500) NOT NULL,
	code varchar(50) NOT NULL,
	status_ smallint DEFAULT 1 NOT NULL,
	isdeleted bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE core_menu_id_seq INCREMENT 1 START 1
;

CREATE TABLE core_menu ( 
	id bigint DEFAULT nextval(('core_menu_id_seq'::text)::regclass) NOT NULL,
	parentid bigint,
	name varchar(500) NOT NULL,
	popup smallint DEFAULT 0,
	link varchar(500),
	icon varchar(500),
	params varchar(500),
	level integer,
	lft bigint,
	rgt bigint,
	menutypeid bigint,
	status_ smallint DEFAULT 1 NOT NULL,
	actionid bigint,
	access integer,
	issystem smallint DEFAULT 0,
	isdeleted smallint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE core_action_id_seq INCREMENT 1 START 1
;

CREATE TABLE core_action ( 
	id bigint DEFAULT nextval(('core_action_id_seq'::text)::regclass) NOT NULL,
	moduleid bigint NOT NULL,
	action varchar(250),
	status_ smallint DEFAULT 1 NOT NULL,
	description varchar(500),
	numberparam integer DEFAULT 0 NOT NULL,
	controller varchar(250),
	isdeleted smallint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE core_organization_id_seq INCREMENT 1 START 1
;

CREATE TABLE core_organization ( 
	id bigint DEFAULT nextval(('core_organization_id_seq'::text)::regclass) NOT NULL,
	parentid bigint,
	name varchar(500) NOT NULL,
	code varchar(50) NOT NULL,
	level integer,
	status_ smallint DEFAULT 1 NOT NULL,
	lft bigint,
	rgt bigint,
	isdeleted bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE core_usergroup_id_seq INCREMENT 1 START 1
;

CREATE TABLE core_usergroup ( 
	id bigint DEFAULT nextval(('core_usergroup_id_seq'::text)::regclass) NOT NULL,
	name varchar(250) NOT NULL,
	code varchar(50) NOT NULL,
	status_ smallint DEFAULT 1 NOT NULL,
	isdeleted bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE core_user_id_seq INCREMENT 1 START 1
;

CREATE TABLE core_user ( 
	id bigint DEFAULT nextval(('core_user_id_seq'::text)::regclass) NOT NULL,
	organizationid bigint,
	username varchar(50) NOT NULL,
	password varchar(250) NOT NULL,
	salt varchar(50) NOT NULL,
	fullname varchar(500),
	email varchar(100),
	phone varchar(30),
	islocked smallint DEFAULT 0 NOT NULL,
	status_ smallint DEFAULT 1 NOT NULL,
	isdeleted bigint DEFAULT 0 NOT NULL
)
;


ALTER TABLE core_application
	ADD CONSTRAINT UQ_code_application UNIQUE (code, isdeleted)
;
ALTER TABLE core_role
	ADD CONSTRAINT UQ_code_role UNIQUE (code, isdeleted)
;
ALTER TABLE core_module
	ADD CONSTRAINT UQ_code_module UNIQUE (code, isdeleted)
;
ALTER TABLE core_menutype
	ADD CONSTRAINT UQ_code_menutype UNIQUE (code, isdeleted)
;
ALTER TABLE core_organization
	ADD CONSTRAINT UQ_code_organization UNIQUE (code, isdeleted)
;
ALTER TABLE core_usergroup
	ADD CONSTRAINT UQ_code_usergroup UNIQUE (code, isdeleted)
;
ALTER TABLE core_user
	ADD CONSTRAINT UQ_username UNIQUE (username, isdeleted)
;
ALTER TABLE core_application ADD CONSTRAINT PK_core_application 
	PRIMARY KEY (id)
;


ALTER TABLE core_fk_usergroup2user ADD CONSTRAINT PK_core_fk_usergroup2user 
	PRIMARY KEY (usergroupid, userid)
;


ALTER TABLE core_fk_usergroup2role ADD CONSTRAINT PK_core_fk_usergroup2role 
	PRIMARY KEY (usergroupid, roleid)
;


ALTER TABLE core_fk_usergroup2organization ADD CONSTRAINT PK_core_fk_usergroup2organization 
	PRIMARY KEY (usergroupid, organizationid)
;


ALTER TABLE core_fk_user2role ADD CONSTRAINT PK_core_fk_user2role 
	PRIMARY KEY (userid, roleid)
;


ALTER TABLE core_fk_user2organization ADD CONSTRAINT PK_core_fk_user2organization 
	PRIMARY KEY (userid, organizationid)
;


ALTER TABLE core_fk_role2action ADD CONSTRAINT PK_core_fk_role2action 
	PRIMARY KEY (roleid, actionid)
;


ALTER TABLE core_role ADD CONSTRAINT PK_core_role 
	PRIMARY KEY (id)
;


ALTER TABLE core_module ADD CONSTRAINT PK_core_module 
	PRIMARY KEY (id)
;


ALTER TABLE core_menutype ADD CONSTRAINT PK_core_menutype 
	PRIMARY KEY (id)
;


ALTER TABLE core_menu ADD CONSTRAINT PK_core_menu 
	PRIMARY KEY (id)
;


ALTER TABLE core_action ADD CONSTRAINT PK_core_action 
	PRIMARY KEY (id)
;


ALTER TABLE core_organization ADD CONSTRAINT PK_core_organization 
	PRIMARY KEY (id)
;


ALTER TABLE core_usergroup ADD CONSTRAINT PK_core_usergrop 
	PRIMARY KEY (id)
;


ALTER TABLE core_user ADD CONSTRAINT PK_core_user 
	PRIMARY KEY (id)
;




ALTER TABLE core_fk_usergroup2user ADD CONSTRAINT FK_core_fk_usergroup2user_core_user 
	FOREIGN KEY (userid) REFERENCES core_user (id)
;

ALTER TABLE core_fk_usergroup2user ADD CONSTRAINT FK_core_fk_usergroup2user_core_usergroup 
	FOREIGN KEY (usergroupid) REFERENCES core_usergroup (id)
;

ALTER TABLE core_fk_usergroup2role ADD CONSTRAINT FK_core_fk_usergroup2role_core_role 
	FOREIGN KEY (roleid) REFERENCES core_role (id)
;

ALTER TABLE core_fk_usergroup2role ADD CONSTRAINT FK_core_fk_usergroup2role_core_usergroup 
	FOREIGN KEY (usergroupid) REFERENCES core_usergroup (id)
;

ALTER TABLE core_fk_usergroup2organization ADD CONSTRAINT FK_core_fk_usergroup2organization_core_organization 
	FOREIGN KEY (organizationid) REFERENCES core_organization (id)
;

ALTER TABLE core_fk_usergroup2organization ADD CONSTRAINT FK_core_fk_usergroup2organization_core_usergroup 
	FOREIGN KEY (usergroupid) REFERENCES core_usergroup (id)
;

ALTER TABLE core_fk_user2role ADD CONSTRAINT FK_core_fk_user2role_core_user 
	FOREIGN KEY (userid) REFERENCES core_user (id)
;

ALTER TABLE core_fk_user2role ADD CONSTRAINT FK_core_fk_user2role_core_role 
	FOREIGN KEY (roleid) REFERENCES core_role (id)
;

ALTER TABLE core_fk_user2organization ADD CONSTRAINT FK_core_fk_user2organization_core_organization 
	FOREIGN KEY (organizationid) REFERENCES core_organization (id)
;

ALTER TABLE core_fk_user2organization ADD CONSTRAINT FK_core_fk_user2organization_core_user 
	FOREIGN KEY (userid) REFERENCES core_user (id)
;

ALTER TABLE core_fk_role2action ADD CONSTRAINT FK_core_fk_role2action_core_role 
	FOREIGN KEY (roleid) REFERENCES core_role (id)
;

ALTER TABLE core_fk_role2action ADD CONSTRAINT FK_core_fk_role2action_core_action 
	FOREIGN KEY (actionid) REFERENCES core_action (id)
;

ALTER TABLE core_module ADD CONSTRAINT FK_core_module_core_application 
	FOREIGN KEY (applicationid) REFERENCES core_application (id)
;

ALTER TABLE core_menu ADD CONSTRAINT FK_core_menu_core_menutype 
	FOREIGN KEY (menutypeid) REFERENCES core_menutype (id)
;

ALTER TABLE core_action ADD CONSTRAINT FK_core_action_core_module 
	FOREIGN KEY (moduleid) REFERENCES core_module (id)
;
