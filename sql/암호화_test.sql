-- 암호화 ver
-- MEMBER INSERT
insert into MEMBER values('김진오', '7777', 'jinokim', sys.FUNC_ENCRYPT('jino'));

select * from member;
commit;