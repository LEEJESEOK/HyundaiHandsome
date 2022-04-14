-- 암호화 test
-- MEMBER INSERT
insert into MEMBER values('김한섬', '8888', 'kimhs', sys.FUNC_ENCRYPT('kimhs'));

select * from member;
commit;

-- synonym test
delete from MEMBER where name = '김한섬';
insert into MEMBER values('김한섬', '8888', 'kimhs', ENCRYPT('kimhs'));