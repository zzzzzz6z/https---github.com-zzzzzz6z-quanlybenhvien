DROP TABLE bhyt_thebaohiem CASCADE
;
DROP SEQUENCE  bhyt_thebaohiem_id_seq
;
DROP TABLE kcb_dmbacsixutri CASCADE
;
DROP SEQUENCE  kcb_dmbacsixutri_id_seq
;
DROP TABLE bhyt_manoisinhsong CASCADE
;
DROP SEQUENCE  bhyt_manoisinhsong_id_seq
;
DROP TABLE bhyt_tuyenthanhtoan CASCADE
;
DROP TABLE bhyt_tuyentt2loaitt CASCADE
;
DROP TABLE bhyt_loaithanhtoan CASCADE
;
DROP SEQUENCE  bhyt_loaithanhtoan_id_seq
;
DROP TABLE bhyt_tuyendangky CASCADE
;
DROP TABLE bhyt_noichuyenden CASCADE
;
DROP SEQUENCE  bhyt_noichuyenden_id_seq
;
DROP TABLE bhyt_noicap CASCADE
;
DROP TABLE bhyt_noidangky CASCADE
;
DROP SEQUENCE  bhyt_noidangky_id_seq
;
DROP TABLE kcb_dmtrangthaikhamchuabenh CASCADE
;
DROP SEQUENCE  kcb_dmtrangthaikhamchuabenh_id_seq
;
DROP TABLE kcb_dmtrangthaikham CASCADE
;
DROP SEQUENCE  kcb_dmtrangthaikham_id_seq
;
DROP TABLE kcb_dmtrangthaidieutri CASCADE
;
DROP SEQUENCE  kcb_dmtrangthaidieutri_id_seq
;
DROP TABLE kcb_dmtainan CASCADE
;
DROP SEQUENCE  kcb_dmtainan_id_seq
;
DROP TABLE kcb_dmnhombenh CASCADE
;
DROP SEQUENCE  kcb_dmnhombenh_id_seq
;
DROP TABLE kcb_dmgombenh CASCADE
;
DROP SEQUENCE  kcb_dmgombenh_id_seq
;
DROP TABLE kcb_dmchuong CASCADE
;
DROP SEQUENCE  kcb_dmchuong_id_seq
;
DROP TABLE kcb_dmbenh CASCADE
;
DROP SEQUENCE  kcb_dmbenh_id_seq
;
DROP TABLE kcb_dmgiaytotuythan CASCADE
;
DROP SEQUENCE  kcb_dmgiaytotuythan_id_seq
;
DROP TABLE kcb_dmdvhanhchinh CASCADE
;
DROP SEQUENCE  kcb_dmdvhanhchinh_id_seq
;
DROP TABLE kcb_dmnghenghiep CASCADE
;
DROP SEQUENCE  kcb_dmnghenghiep_id_seq
;
DROP TABLE kcb_dmquoctich CASCADE
;
DROP SEQUENCE  kcb_dmquoctich_id_seq
;
DROP TABLE kcb_dmdantoc CASCADE
;
DROP SEQUENCE  kcb_dmdantoc_id_seq
;
DROP TABLE kcb_dmgioitinh CASCADE
;
DROP SEQUENCE  kcb_dmgioitinh_id_seq
;

CREATE SEQUENCE bhyt_thebaohiem_id_seq INCREMENT 1 START 1
;

CREATE TABLE bhyt_thebaohiem ( 
	id bigint DEFAULT nextval(('bhyt_thebaohiem_id_seq'::text)::regclass) NOT NULL,
	benhnhanid bigint NOT NULL,
	noidangkyhid bigint NOT NULL,
	ma varchar(100) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0
)
;

CREATE SEQUENCE kcb_dmbacsixutri_id_seq INCREMENT 1 START 1
;

CREATE TABLE kcb_dmbacsixutri ( 
	id bigint DEFAULT nextval(('kcb_dmbacsixutri_id_seq'::text)::regclass) NOT NULL,
	ma varchar(50) NOT NULL,
	ten varchar(250) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE bhyt_manoisinhsong_id_seq INCREMENT 1 START 1
;

CREATE TABLE bhyt_manoisinhsong ( 
	id bigint DEFAULT nextval(('bhyt_manoisinhsong_id_seq'::text)::regclass) NOT NULL,
	ten varchar(250),
	apdungnoitru smallint DEFAULT 0 NOT NULL,
	apdungngoaitru smallint DEFAULT 0 NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE TABLE bhyt_tuyenthanhtoan ( 
	matuyenthanhtoan varchar(100) NOT NULL,
	ten varchar(250) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE TABLE bhyt_tuyentt2loaitt ( 
	matuyendangky varchar(100) NOT NULL,
	loaithanhtoanid bigint NOT NULL
)
;

CREATE SEQUENCE bhyt_loaithanhtoan_id_seq INCREMENT 1 START 1
;

CREATE TABLE bhyt_loaithanhtoan ( 
	id bigint DEFAULT nextval(('bhyt_loaithanhtoan_id_seq'::text)::regclass) NOT NULL,
	ten varchar(100) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE TABLE bhyt_tuyendangky ( 
	ma varchar(100) NOT NULL,
	ten varchar(250) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE bhyt_noichuyenden_id_seq INCREMENT 1 START 1
;

CREATE TABLE bhyt_noichuyenden ( 
	id bigint DEFAULT nextval(('bhyt_noichuyenden_id_seq'::text)::regclass) NOT NULL,
	ma varchar(100),
	ten varchar(250) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE TABLE bhyt_noicap ( 
	manoicap varchar(100) NOT NULL,
	ten varchar(250) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE bhyt_noidangky_id_seq INCREMENT 1 START 1
;

CREATE TABLE bhyt_noidangky ( 
	id bigint DEFAULT nextval(('bhyt_noidangky_id_seq'::text)::regclass) NOT NULL,
	ten varchar(250) NOT NULL,
	ma varchar(100) NOT NULL,
	matuyendangky varchar(100) NOT NULL,
	matuyenthanhtoan varchar(100) NOT NULL,
	manoicap varchar(100) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE kcb_dmtrangthaikhamchuabenh_id_seq INCREMENT 1 START 1
;

CREATE TABLE kcb_dmtrangthaikhamchuabenh ( 
	id bigint DEFAULT nextval(('kcb_dmtrangthaikhamchuabenh_id_seq'::text)::regclass) NOT NULL,
	ma varchar(50) NOT NULL,
	ten varchar(250) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE kcb_dmtrangthaikham_id_seq INCREMENT 1 START 1
;

CREATE TABLE kcb_dmtrangthaikham ( 
	id bigint DEFAULT nextval(('kcb_dmtrangthaikham_id_seq'::text)::regclass) NOT NULL,
	ma varchar(50) NOT NULL,
	ten varchar(250) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE kcb_dmtrangthaidieutri_id_seq INCREMENT 1 START 1
;

CREATE TABLE kcb_dmtrangthaidieutri ( 
	id bigint DEFAULT nextval(('kcb_dmtrangthaidieutri_id_seq'::text)::regclass) NOT NULL,
	ma varchar(50) NOT NULL,
	ten varchar(250) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE kcb_dmtainan_id_seq INCREMENT 1 START 1
;

CREATE TABLE kcb_dmtainan ( 
	id bigint DEFAULT nextval(('kcb_dmtainan_id_seq'::text)::regclass) NOT NULL,
	ma varchar(50) NOT NULL,
	ten varchar(250) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE kcb_dmnhombenh_id_seq INCREMENT 1 START 1
;

CREATE TABLE kcb_dmnhombenh ( 
	id bigint DEFAULT nextval(('kcb_dmnhombenh_id_seq'::text)::regclass) NOT NULL,
	ten varchar(250) NOT NULL,
	ma varchar(50) NOT NULL,
	dmchuongid bigint NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE kcb_dmgombenh_id_seq INCREMENT 1 START 1
;

CREATE TABLE kcb_dmgombenh ( 
	id bigint DEFAULT nextval(('kcb_dmgombenh_id_seq'::text)::regclass) NOT NULL,
	ten varchar(250) NOT NULL,
	ma bigint NOT NULL,
	dmnhomid bigint NOT NULL,
	dmnhomma varchar(50),
	trangthai smallint DEFAULT 1,
	daxoa bigint DEFAULT 0
)
;

CREATE SEQUENCE kcb_dmchuong_id_seq INCREMENT 1 START 1
;

CREATE TABLE kcb_dmchuong ( 
	id bigint DEFAULT nextval(('kcb_dmchuong_id_seq'::text)::regclass) NOT NULL,
	ten varchar(250) NOT NULL,
	ma varchar(50) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE kcb_dmbenh_id_seq INCREMENT 1 START 1
;

CREATE TABLE kcb_dmbenh ( 
	id bigint DEFAULT nextval(('kcb_dmbenh_id_seq'::text)::regclass) NOT NULL,
	ten varchar(250) NOT NULL,
	ma varchar(50) NOT NULL,
	dmgombenhid bigint NOT NULL,
	dmgombenhma varchar(50) NOT NULL,
	dmnhombenhid bigint NOT NULL,
	dmnhombenhma varchar(50) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE kcb_dmgiaytotuythan_id_seq INCREMENT 1 START 1
;

CREATE TABLE kcb_dmgiaytotuythan ( 
	id bigint DEFAULT nextval(('kcb_dmgiaytotuythan_id_seq'::text)::regclass) NOT NULL,
	ma varchar(50) NOT NULL,
	ten varchar(250) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE kcb_dmdvhanhchinh_id_seq INCREMENT 1 START 1
;

CREATE TABLE kcb_dmdvhanhchinh ( 
	id bigint DEFAULT nextval(('kcb_dmdvhanhchinh_id_seq'::text)::regclass) NOT NULL,
	ma varchar(50) NOT NULL,
	ten varchar(250) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL,
	id_cha bigint,
	lft bigint,
	rgt bigint
)
;

CREATE SEQUENCE kcb_dmnghenghiep_id_seq INCREMENT 1 START 1
;

CREATE TABLE kcb_dmnghenghiep ( 
	id bigint DEFAULT nextval(('kcb_dmnghenghiep_id_seq'::text)::regclass) NOT NULL,
	ma varchar(50) NOT NULL,
	ten varchar(250) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE kcb_dmquoctich_id_seq INCREMENT 1 START 1
;

CREATE TABLE kcb_dmquoctich ( 
	id bigint DEFAULT nextval(('kcb_dmquoctich_id_seq'::text)::regclass) NOT NULL,
	ma varchar(50) NOT NULL,
	ten varchar(250) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE kcb_dmdantoc_id_seq INCREMENT 1 START 1
;

CREATE TABLE kcb_dmdantoc ( 
	id bigint DEFAULT nextval(('kcb_dmdantoc_id_seq'::text)::regclass) NOT NULL,
	ma varchar(50) NOT NULL,
	ten varchar(250) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;

CREATE SEQUENCE kcb_dmgioitinh_id_seq INCREMENT 1 START 1
;

CREATE TABLE kcb_dmgioitinh ( 
	id bigint DEFAULT nextval(('kcb_dmgioitinh_id_seq'::text)::regclass) NOT NULL,
	ma varchar(50) NOT NULL,
	ten varchar(250) NOT NULL,
	trangthai smallint DEFAULT 1 NOT NULL,
	daxoa bigint DEFAULT 0 NOT NULL
)
;


CREATE INDEX IXFK_bv_bhyt_bv_benhnhan
	ON bhyt_thebaohiem (benhnhanid)
;
CREATE INDEX IXFK_bv_bhyt_bv_noidangkykhamchuabenh
	ON bhyt_thebaohiem (noidangkyhid)
;
CREATE INDEX IXFK_bhyt_tuyentt2loaitt_bhyt_tuyendangky
	ON bhyt_tuyentt2loaitt (matuyendangky)
;
CREATE INDEX IXFK_bhyt_tuyentt2loaitt_bhyt_loaithanhtoan
	ON bhyt_tuyentt2loaitt (loaithanhtoanid)
;
CREATE INDEX IXFK_bhyt_noidangky_bhyt_noicap
	ON bhyt_noidangky (manoicap)
;
CREATE INDEX IXFK_bhyt_noidangky_bhyt_tuyendangky
	ON bhyt_noidangky (matuyendangky)
;
CREATE INDEX IXFK_bhyt_noidangky_bhyt_tuyenthanhtoan
	ON bhyt_noidangky (matuyenthanhtoan)
;
CREATE INDEX IXFK_bv_dmnhombenh_bv_dmchuong
	ON kcb_dmnhombenh (dmchuongid)
;
CREATE INDEX IXFK_bv_dmgombenh_bv_dmnhombenh
	ON kcb_dmgombenh (dmnhomid)
;
CREATE INDEX IXFK_bv_dmbenh_bv_dmgombenh
	ON kcb_dmbenh (dmgombenhid)
;
CREATE INDEX IXFK_bv_dmbenh_bv_dmnhombenh
	ON kcb_dmbenh (dmnhombenhid)
;
ALTER TABLE bhyt_thebaohiem ADD CONSTRAINT PK_bv_bhyt 
	PRIMARY KEY (id)
;


ALTER TABLE kcb_dmbacsixutri ADD CONSTRAINT PK_bv_dmbacsixutri 
	PRIMARY KEY (id)
;


ALTER TABLE bhyt_manoisinhsong ADD CONSTRAINT PK_bhyt_manoisinhsong 
	PRIMARY KEY (id)
;


ALTER TABLE bhyt_tuyenthanhtoan ADD CONSTRAINT PK_bhyt_tuyenthanhtoan 
	PRIMARY KEY (matuyenthanhtoan)
;


ALTER TABLE bhyt_loaithanhtoan ADD CONSTRAINT PK_bhyt_loaithanhtoan 
	PRIMARY KEY (id)
;


ALTER TABLE bhyt_tuyendangky ADD CONSTRAINT PK_bhyt_tuyendangky 
	PRIMARY KEY (ma)
;


ALTER TABLE bhyt_noichuyenden ADD CONSTRAINT PK_bhyt_noichuyenden 
	PRIMARY KEY (id)
;


ALTER TABLE bhyt_noicap ADD CONSTRAINT PK_bhyt_noicap 
	PRIMARY KEY (manoicap)
;


ALTER TABLE bhyt_noidangky ADD CONSTRAINT PK_bhyt_noidangky 
	PRIMARY KEY (id)
;


ALTER TABLE kcb_dmtrangthaikhamchuabenh ADD CONSTRAINT PK_bv_dmtrangthaikhamchuabenh 
	PRIMARY KEY (id)
;


ALTER TABLE kcb_dmtrangthaikham ADD CONSTRAINT PK_kcb_dmtrangthaikham 
	PRIMARY KEY (id)
;


ALTER TABLE kcb_dmtrangthaidieutri ADD CONSTRAINT PK_kcb_dmtrangthaidieutri 
	PRIMARY KEY (id)
;


ALTER TABLE kcb_dmtainan ADD CONSTRAINT PK_bv_dmtainan 
	PRIMARY KEY (id)
;


ALTER TABLE kcb_dmnhombenh ADD CONSTRAINT PK_bv_dmnhombenh 
	PRIMARY KEY (id)
;


ALTER TABLE kcb_dmgombenh ADD CONSTRAINT PK_bv_dmgombenh 
	PRIMARY KEY (id)
;


ALTER TABLE kcb_dmchuong ADD CONSTRAINT PK_bv_dmchuong 
	PRIMARY KEY (id)
;


ALTER TABLE kcb_dmbenh ADD CONSTRAINT PK_bv_dmbenh 
	PRIMARY KEY (id)
;


ALTER TABLE kcb_dmgiaytotuythan ADD CONSTRAINT PK_bv_dmgiaytotuythan 
	PRIMARY KEY (id)
;


ALTER TABLE kcb_dmdvhanhchinh ADD CONSTRAINT PK_bv_dmdvhanhchinh 
	PRIMARY KEY (id)
;


ALTER TABLE kcb_dmnghenghiep ADD CONSTRAINT PK_bv_dmnghenghiep 
	PRIMARY KEY (id)
;


ALTER TABLE kcb_dmquoctich ADD CONSTRAINT PK_bv_dmquoctich 
	PRIMARY KEY (id)
;


ALTER TABLE kcb_dmdantoc ADD CONSTRAINT PK_bv_dmdantoc 
	PRIMARY KEY (id)
;


ALTER TABLE kcb_dmgioitinh ADD CONSTRAINT PK_bv_dmgioitinh 
	PRIMARY KEY (id)
;




ALTER TABLE bhyt_thebaohiem ADD CONSTRAINT FK_bv_bhyt_bv_benhnhan 
	FOREIGN KEY (benhnhanid) REFERENCES kcb_benhnhan (id)
;

ALTER TABLE bhyt_thebaohiem ADD CONSTRAINT FK_bhyt_thebaohiem_bhyt_noidangky 
	FOREIGN KEY (noidangkyhid) REFERENCES bhyt_noidangky (id)
;

ALTER TABLE bhyt_tuyentt2loaitt ADD CONSTRAINT FK_bhyt_tuyentt2loaitt_bhyt_tuyendangky 
	FOREIGN KEY (matuyendangky) REFERENCES bhyt_tuyendangky (ma)
;

ALTER TABLE bhyt_tuyentt2loaitt ADD CONSTRAINT FK_bhyt_tuyentt2loaitt_bhyt_loaithanhtoan 
	FOREIGN KEY (loaithanhtoanid) REFERENCES bhyt_loaithanhtoan (id)
;

ALTER TABLE bhyt_noidangky ADD CONSTRAINT FK_bhyt_noidangky_bhyt_noicap 
	FOREIGN KEY (manoicap) REFERENCES bhyt_noicap (manoicap)
;

ALTER TABLE bhyt_noidangky ADD CONSTRAINT FK_bhyt_noidangky_bhyt_tuyendangky 
	FOREIGN KEY (matuyendangky) REFERENCES bhyt_tuyendangky (ma)
;

ALTER TABLE bhyt_noidangky ADD CONSTRAINT FK_bhyt_noidangky_bhyt_tuyenthanhtoan 
	FOREIGN KEY (matuyenthanhtoan) REFERENCES bhyt_tuyenthanhtoan (matuyenthanhtoan)
;

ALTER TABLE kcb_dmnhombenh ADD CONSTRAINT FK_bv_dmnhombenh_bv_dmchuong 
	FOREIGN KEY (dmchuongid) REFERENCES kcb_dmchuong (id)
;

ALTER TABLE kcb_dmgombenh ADD CONSTRAINT FK_bv_dmgombenh_bv_dmnhombenh 
	FOREIGN KEY (dmnhomid) REFERENCES kcb_dmnhombenh (id)
;

ALTER TABLE kcb_dmbenh ADD CONSTRAINT FK_bv_dmbenh_bv_dmgombenh 
	FOREIGN KEY (dmgombenhid) REFERENCES kcb_dmgombenh (id)
;

ALTER TABLE kcb_dmbenh ADD CONSTRAINT FK_bv_dmbenh_bv_dmnhombenh 
	FOREIGN KEY (dmnhombenhid) REFERENCES kcb_dmnhombenh (id)
;
