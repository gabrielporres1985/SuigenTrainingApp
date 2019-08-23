-- SQL for Schema MODEL --

-- if NeedsCreateSequence

create sequence QName(MODEL, PERSON_SEQ)
	start with SequenceStartValue(1) increment by 1 SequenceCache;;

-- end

create table QName(MODEL, PERSON) (
	ID                                Serial(1,PERSON_SEQ)                      not null,
	PERSON_NAME                       nvarchar(255)    default EmptyString      not null,
	PERSON_LAST_NAME                  nvarchar(255)    default EmptyString      not null,
	PERSON_AGE                        int              default 0                not null,
	PERSON_DATE_OF_BIRTH              date             default CurrentDate      not null,
	PERSON_GENRE                      nvarchar(50)     default 'FEMALE'         not null,
	UPDATE_TIME                       datetime(3)      default CurrentTime      not null,

	constraint PK_PERSON              primary key (ID)
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

-- if NeedsSerialComment
comment on column QName(MODEL,PERSON).ID                   is 'Serial(1,PERSON_SEQ)';;
-- end

