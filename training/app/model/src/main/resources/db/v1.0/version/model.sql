-- @Generated at 2019-08-28 23:54:36

-- SQL for Schema MODEL --

-- if NeedsCreateSequence

create sequence QName(MODEL, COMPANY_SEQ)
	start with SequenceStartValue(1) increment by 1 SequenceCache;;

create sequence QName(MODEL, PERSON_SEQ)
	start with SequenceStartValue(1) increment by 1 SequenceCache;;

create sequence QName(MODEL, PRODUCT_SEQ)
	start with SequenceStartValue(1) increment by 1 SequenceCache;;

create sequence QName(MODEL, SALE_OPORTUNITY_SEQ)
	start with SequenceStartValue(1) increment by 1 SequenceCache;;

-- end

create table QName(MODEL, COMPANY) (
	ID                                Serial(1,COMPANY_SEQ)                     not null,
	COMPANY_NAME                      nvarchar(255)    default EmptyString      not null,
	COMPANY_LOGO                      nvarchar(128),
	COMPANY_TELEPHONE                 nvarchar(255)    default EmptyString      not null,
	COMPANY_EXTRA_DATA                nvarchar(255)    default EmptyString      not null,
	UPDATE_TIME                       datetime(3)      default CurrentTime      not null,

	constraint PK_COMPANY             primary key (ID)
);;

create table QName(MODEL, COMPANY_ADDRESS) (
	COMPANY_ID                        int                                       not null,
	SEQ_ID                            int              default 0                not null,
	STREET_NAME                       nvarchar(255)    default EmptyString      not null,
	STREET_NUMBER                     int              default 0                not null,
	STORAGE_ID                        int              default 0                not null,
	ZIP_CODE                          int              default 0                not null,
	UPDATE_TIME                       datetime(3)      default CurrentTime      not null,

	constraint PK_COMPANY_ADDRESS     primary key (COMPANY_ID,SEQ_ID)
);;

create table QName(MODEL, PERSON) (
	ID                                Serial(1,PERSON_SEQ)                      not null,
	PERSON_NAME                       nvarchar(255)    default EmptyString      not null,
	PERSON_LAST_NAME                  nvarchar(255)    default EmptyString      not null,
	PERSON_AGE                        int,
	PERSON_DATE_OF_BIRTH              date,
	PERSON_GENRE                      nvarchar(50)     default 'FEMALE'         not null,
	PERSON_ID                         nvarchar(255)    default EmptyString      not null,
	PERSON_TELEPHONE                  nvarchar(255)    default EmptyString      not null,
	PERSON_COMPANY_ID                 int,
	PERSON_PICTURE                    nvarchar(128),
	UPDATE_TIME                       datetime(3)      default CurrentTime      not null,

	constraint PK_PERSON              primary key (ID)
);;

create table QName(MODEL, PRODUCT) (
	ID                                Serial(1,PRODUCT_SEQ)                     not null,
	PRODUCT_NAME                      nvarchar(255)    default EmptyString      not null,
	PRODUCT_DESCRIPTION               nvarchar(255)    default EmptyString      not null,
	PRODUCT_AMOUNT                    decimal(10,2)    default 0                not null,
	UPDATE_TIME                       datetime(3)      default CurrentTime      not null,

	constraint PK_PRODUCT             primary key (ID)
);;

create table QName(MODEL, SALE_OPORTUNITY) (
	ID                                Serial(1,SALE_OPORTUNITY_SEQ)             not null,
	COMPANY_ID                        int                                       not null,
	INITIAL_DATE                      date             default CurrentDate      not null,
	STATUS                            nvarchar(50)     default 'STARTED'        not null,
	PERSON_ID                         int                                       not null,
	UPDATE_TIME                       datetime(3)      default CurrentTime      not null,

	constraint PK_SALE_OPORTUNITY     primary key (ID)
);;

create table QName(MODEL, SALE_OPORTUNITY_PRODUCTS) (
	SALE_OPORTUNITY_ID                int                                       not null,
	SEQ_ID                            int              default 0                not null,
	PRODUCT_ID                        int                                       not null,
	QUANTITY                          int              default 0                not null,
	UPDATE_TIME                       datetime(3)      default CurrentTime      not null,

	constraint PK_SALE_OPORTUNITY_PRODUCTS primary key (SALE_OPORTUNITY_ID,SEQ_ID)
);;

create table QName(MODEL, _METADATA) (
	VERSION                           nvarchar(24)                              not null,
	SHA                               nvarchar(128)                             not null,
	SHA_OVL                           nvarchar(128),
	UPDATE_TIME                       datetime(0),
	SCHEMA                            clob,
	OVERLAY                           clob,

	constraint PK_METADATA            primary key (VERSION)
);;

alter table QName(MODEL, COMPANY_ADDRESS) add constraint COMPANY_COMPANY_ADDRESS_FK
	foreign key (COMPANY_ID)
	references QName(MODEL, COMPANY) (ID);;

alter table QName(MODEL, PERSON) add constraint PERSON_COMPANY_PERSON_FK
	foreign key (PERSON_COMPANY_ID)
	references QName(MODEL, COMPANY) (ID);;

alter table QName(MODEL, SALE_OPORTUNITY) add constraint COMPANY_SALE_OPORTUNITY_FK
	foreign key (COMPANY_ID)
	references QName(MODEL, COMPANY) (ID);;

alter table QName(MODEL, SALE_OPORTUNITY) add constraint PERSON_SALE_OPORTUNITY_FK
	foreign key (PERSON_ID)
	references QName(MODEL, PERSON) (ID);;

alter table QName(MODEL, SALE_OPORTUNITY_PRODUCTS) add constraint SALE_OPORTUNITY_SALE_ADCFE4_FK
	foreign key (SALE_OPORTUNITY_ID)
	references QName(MODEL, SALE_OPORTUNITY) (ID);;

alter table QName(MODEL, SALE_OPORTUNITY_PRODUCTS) add constraint PRODUCT_SALE_OPORTUN_314F7A_FK
	foreign key (PRODUCT_ID)
	references QName(MODEL, PRODUCT) (ID);;

-- if NeedsSerialComment
comment on column QName(MODEL,COMPANY).ID                  is 'Serial(1,COMPANY_SEQ)';;
comment on column QName(MODEL,PERSON).ID                   is 'Serial(1,PERSON_SEQ)';;
comment on column QName(MODEL,PRODUCT).ID                  is 'Serial(1,PRODUCT_SEQ)';;
comment on column QName(MODEL,SALE_OPORTUNITY).ID          is 'Serial(1,SALE_OPORTUNITY_SEQ)';;
-- end

