-- auth 테이블 레코드 INSERT

SELECT *
  FROM auth;
  
INSERT INTO auth (auth_cd, cd_nm, cd_des) VALUES ('A101', '관리자', '홈페이지 관리자 계정이 갖는 권한');
INSERT INTO auth (auth_cd, cd_nm, cd_des) VALUES ('B101', '사용자', '일반사용자 계정이 갖는 권한');

-- user_ 테이블 데모용 관리자 계정 INSERT
-- EMAIL : test@test.com
-- pass : 1

SELECT *
  FROM user_;

CREATE SEQUENCE  user_seq;

INSERT INTO user_ (user_no, user_email, user_pass, user_name, user_nick, auth_cd, user_sdt, gb_del)
		   VALUES (user_seq.nextval, 'test@test.com', '1', '관리자', '관리자닉네임', 'A101', sysdate, 'N');
