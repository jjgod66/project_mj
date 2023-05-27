CREATE USER project_mj IDENTIFIED BY java 
DEFAULT tablespace TS_DBSQL
TEMPORARY tablespace temp
;


GRANT CONNECT, resource TO project_mj;
GRANT CREATE SESSION TO project_mj;
GRANT CREATE ANY TABLE TO project_mj;

-----------------------------------------------------------

-- 권한코드
CREATE TABLE auth (
	auth_cd VARCHAR2(4)  NOT NULL, -- 권한코드
	cd_nm   VARCHAR2(10) NULL,     -- 코드명
	cd_des  VARCHAR2(50) NULL      -- 코드설명
);

-- 권한코드 기본키
CREATE UNIQUE INDEX PK_auth
	ON auth ( -- 권한코드
		auth_cd ASC -- 권한코드
);

-- 권한코드
ALTER TABLE auth
	ADD
		CONSTRAINT PK_auth -- 권한코드 기본키
		PRIMARY KEY (
			auth_cd -- 권한코드
);
SELECT * FROM auth;

-----------------------------------------------------------

-- 사용자
CREATE TABLE user_ (
	user_no    INTEGER       NOT NULL, -- 회원번호
	user_email VARCHAR2(50)  NULL,     -- 이메일
	user_pass  VARCHAR2(255) NULL,     -- 비밀번호
	user_name  VARCHAR2(30)  NULL,     -- 이름
	user_nick  VARCHAR2(20)  NULL,     -- 닉네임
	auth_cd    VARCHAR2(4)   NULL,     -- 권한코드
	user_sdt   DATE          NULL,     -- 가입일자
	user_mdt   DATE          NULL,     -- 수정일자
	gb_del     VARCHAR2(1)   NULL,     -- 탈퇴여부
	user_img   VARCHAR2(100) NULL      -- 프로필사진
);

-- 사용자 기본키
CREATE UNIQUE INDEX PK_user_
	ON user_ ( -- 사용자
		user_no ASC -- 회원번호
);

-- 사용자
ALTER TABLE user_
	ADD
		CONSTRAINT PK_user_ -- 사용자 기본키
		PRIMARY KEY (
			user_no -- 회원번호
);
		
-----------------------------------------------------------	
	
-- 커뮤니티게시판
CREATE TABLE bd_comm (
	bd_no      INTEGER        NOT NULL, -- 글번호
	user_no    INTEGER        NULL,     -- 회원번호
	bd_cat     VARCHAR2(20)   NULL,     -- 카테고리명
	bd_title   VARCHAR2(30)   NULL,     -- 제목
	user_nick  VARCHAR2(20)   NULL,     -- 작성자닉네임
	bd_content VARCHAR2(2000) NULL,     -- 내용
	bd_hit     INTEGER        NULL,     -- 조회수
	bd_like    INTEGER        NULL,     -- 좋아요수
	bd_wdt     DATE           NULL,     -- 작성일자
	gb_del     VARCHAR2(1)    NULL      -- 삭제여부
);

-- 커뮤니티게시판 기본키
CREATE UNIQUE INDEX PK_bd_comm
	ON bd_comm ( -- 커뮤니티게시판
		bd_no ASC -- 글번호
);

-- 커뮤니티게시판
ALTER TABLE bd_comm
	ADD
		CONSTRAINT PK_bd_comm -- 커뮤니티게시판 기본키
		PRIMARY KEY (
			bd_no -- 글번호
);
		
-----------------------------------------------------------
	
-- 커뮤니티게시글사진
CREATE TABLE img_bd_comm (
	img_no   INTEGER       NOT NULL, -- 사진번호
	bd_no    INTEGER       NULL,     -- 글번호
	img_url  VARCHAR2(200) NULL,     -- 사진
	img_updt DATE          NULL      -- 업로드날짜
);

-- 커뮤니티게시글사진 기본키
CREATE UNIQUE INDEX PK_img_bd_comm
	ON img_bd_comm ( -- 커뮤니티게시글사진
		img_no ASC -- 사진번호
);

-- 커뮤니티게시글사진
ALTER TABLE img_bd_comm
	ADD
		CONSTRAINT PK_img_bd_comm -- 커뮤니티게시글사진 기본키
		PRIMARY KEY (
			img_no -- 사진번호
);	

-----------------------------------------------------------
	
-- 게시글카테고리
CREATE TABLE cat_bd_comm (
	cat_name VARCHAR2(20) NOT NULL -- 카테고리명
);

-- 게시글카테고리 기본키
CREATE UNIQUE INDEX PK_cat_bd_comm
	ON cat_bd_comm ( -- 게시글카테고리
		cat_name ASC -- 카테고리명
);

-- 게시글카테고리
ALTER TABLE cat_bd_comm
	ADD
		CONSTRAINT PK_cat_bd_comm -- 게시글카테고리 기본키
		PRIMARY KEY (
			cat_name -- 카테고리명
);

-----------------------------------------------------------	
	
-- 커뮤니티게시판댓글
CREATE TABLE bd_comm_re (
	re_no      INTEGER       NOT NULL, -- 댓글번호
	bd_no      INTEGER       NULL,     -- 글번호
	user_no    INTEGER       NULL,     -- 회원번호
	user_nick  VARCHAR2(20)  NULL,     -- 작성자
	re_content VARCHAR2(100) NULL,     -- 댓글내용
	re_wdt     DATE          NULL,     -- 작성일자
	ge_del     VARCHAR2(1)   NULL      -- 삭제여부
);

-- 커뮤니티게시판댓글 기본키
CREATE UNIQUE INDEX PK_bd_comm_re
	ON bd_comm_re ( -- 커뮤니티게시판댓글
		re_no ASC -- 댓글번호
);

-- 커뮤니티게시판댓글
ALTER TABLE bd_comm_re
	ADD
		CONSTRAINT PK_bd_comm_re -- 커뮤니티게시판댓글 기본키
		PRIMARY KEY (
			re_no -- 댓글번호
);
		
-----------------------------------------------------------	
	
-- 공감테이블
CREATE TABLE bd_comm_like (
	bd_no    INTEGER NOT NULL, -- 글번호
	user_no  INTEGER NULL,     -- 회원번호
	like_cnt INTEGER NULL      -- 공감수
);

-- 공감테이블 기본키
CREATE UNIQUE INDEX PK_bd_comm_like
	ON bd_comm_like ( -- 공감테이블
		bd_no ASC -- 글번호
);

-- 공감테이블
ALTER TABLE bd_comm_like
	ADD
		CONSTRAINT PK_bd_comm_like -- 공감테이블 기본키
		PRIMARY KEY (
			bd_no -- 글번호
);	
		
-----------------------------------------------------------	
	
-- 점포
CREATE TABLE store (
	store_no    INTEGER        NOT NULL, -- 점포번호
	store_id    VARCHAR2(4)    NULL,     -- 업종id
	store_name  VARCHAR2(30)   NULL,     -- 상호명
	store_addr  VARCHAR2(100)  NULL,     -- 도로명주소
	store_tel   VARCHAR2(13)   NULL,     -- 전화번호
	store_hour  VARCHAR2(20)   NULL,     -- 영업시간
	store_break VARCHAR2(20)   NULL,     -- 휴식시간
	store_url   VARCHAR2(100)  NULL,     -- 점포웹주소
	store_des_s VARCHAR2(50)   NULL,     -- 점포간단설명
	store_des_d VARCHAR2(1000) NULL,     -- 점포상세설명
	store_rate  NUMBER(1,1)    NULL,     -- 평점평균
	store_views INTEGER        NULL,     -- 조회수
	store_like  INTEGER        NULL,     -- 좋아요수
	store_fav   INTEGER        NULL,     -- 즐겨찾기수
	store_rdt   DATE           NULL,     -- 등록일자
	gb_del      VARCHAR2(1)    NULL      -- 삭제여부
);

-- 점포 기본키
CREATE UNIQUE INDEX PK_store
	ON store ( -- 점포
		store_no ASC -- 점포번호
);

-- 점포
ALTER TABLE store
	ADD
		CONSTRAINT PK_store -- 점포 기본키
		PRIMARY KEY (
			store_no -- 점포번호
);	
		
-----------------------------------------------------------	

-- 점포사진
CREATE TABLE img_store (
	img_no   INTEGER       NOT NULL, -- 사진번호
	store_no INTEGER       NULL,     -- 점포번호
	img_url  VARCHAR2(200) NULL,     -- 사진
	img_updt DATE          NULL      -- 업로드날짜
);

-- 점포사진 기본키
CREATE UNIQUE INDEX PK_img_store
	ON img_store ( -- 점포사진
		img_no ASC -- 사진번호
);

-- 점포사진
ALTER TABLE img_store
	ADD
		CONSTRAINT PK_img_store -- 점포사진 기본키
		PRIMARY KEY (
			img_no -- 사진번호
);
		
-----------------------------------------------------------	
	
-- 점포태그
CREATE TABLE store_tag (
	store_no       INTEGER      NOT NULL, -- 점포번호
	store_tagid_1  VARCHAR2(50) NULL,     -- 태그id1
	store__tagid_2 VARCHAR2(50) NULL,     -- 태그id2
	store__tagid_3 VARCHAR2(50) NULL      -- 태그id3
);

-- 점포태그 기본키
CREATE UNIQUE INDEX PK_store_tag
	ON store_tag ( -- 점포태그
		store_no ASC -- 점포번호
);

-- 점포태그
ALTER TABLE store_tag
	ADD
		CONSTRAINT PK_store_tag -- 점포태그 기본키
		PRIMARY KEY (
			store_no -- 점포번호
);
		
-----------------------------------------------------------

-- 점포공감테이블
CREATE TABLE store_like (
	store_no INTEGER NOT NULL, -- 점포번호
	user_no  INTEGER NOT NULL, -- 회원번호
	like_cnt INTEGER NULL      -- 좋아요수
);

-- 점포공감테이블 기본키
CREATE UNIQUE INDEX PK_store_like
	ON store_like ( -- 점포공감테이블
		store_no ASC, -- 점포번호
		user_no  ASC  -- 회원번호
);

-- 점포공감테이블
ALTER TABLE store_like
	ADD
		CONSTRAINT PK_store_like -- 점포공감테이블 기본키
		PRIMARY KEY (
			store_no, -- 점포번호
			user_no   -- 회원번호
);	
		
-----------------------------------------------------------	
	
-- 점포즐겨찾기테이블
CREATE TABLE store_favorites (
	store_no INTEGER NOT NULL, -- 가게번호
	user_no  INTEGER NOT NULL, -- 회원번호
	fav_cnt  INTEGER NULL      -- 즐겨찾기수
);

-- 점포즐겨찾기테이블 기본키
CREATE UNIQUE INDEX PK_store_favorites
	ON store_favorites ( -- 점포즐겨찾기테이블
		store_no ASC, -- 가게번호
		user_no  ASC  -- 회원번호
);

-- 점포즐겨찾기테이블
ALTER TABLE store_favorites
	ADD
		CONSTRAINT PK_store_favorites -- 점포즐겨찾기테이블 기본키
		PRIMARY KEY (
			store_no, -- 가게번호
			user_no   -- 회원번호
);
		
-----------------------------------------------------------	

-- 업종
CREATE TABLE cat_store (
	cat_id   VARCHAR2(4)  NOT NULL, -- 업종id
	cat_name VARCHAR2(50) NULL      -- 업종명
);

-- 업종 기본키
CREATE UNIQUE INDEX PK_cat_store
	ON cat_store ( -- 업종
		cat_id ASC -- 업종id
);

-- 업종
ALTER TABLE cat_store
	ADD
		CONSTRAINT PK_cat_store -- 업종 기본키
		PRIMARY KEY (
			cat_id -- 업종id
);
		
-----------------------------------------------------------

-- 점포리뷰
CREATE TABLE store_review (
	re_no      INTEGER       NOT NULL, -- 리뷰번호
	user_no    INTEGER       NULL,     -- 회원번호
	store_no   INTEGER       NULL,     -- 점포번호
	user_nick  VARCHAR2(20)  NULL,     -- 작성자
	re_content VARCHAR2(100) NULL,     -- 리뷰내용
	rate       INTEGER       NULL,     -- 평점
	re_wdt     DATE          NULL,     -- 작성일자
	ge_del     VARCHAR2(1)   NULL      -- 삭제여부
);

-- 점포리뷰 기본키
CREATE UNIQUE INDEX PK_store_review
	ON store_review ( -- 점포리뷰
		re_no ASC -- 리뷰번호
);

-- 점포리뷰
ALTER TABLE store_review
	ADD
		CONSTRAINT PK_store_review -- 점포리뷰 기본키
		PRIMARY KEY (
			re_no -- 리뷰번호
);
	
-----------------------------------------------------------	
	
-- 점포리뷰사진
CREATE TABLE img_store_review (
	img_no   INTEGER       NOT NULL, -- 사진번호
	re_no    INTEGER       NULL,     -- 리뷰번호
	img_url  VARCHAR2(200) NULL,     -- 사진
	img_updt DATE          NULL      -- 업로드날짜
);

-- 점포리뷰사진 기본키
CREATE UNIQUE INDEX PK_img_store_review
	ON img_store_review ( -- 점포리뷰사진
		img_no ASC -- 사진번호
);

-- 점포리뷰사진
ALTER TABLE img_store_review
	ADD
		CONSTRAINT PK_img_store_review -- 점포리뷰사진 기본키
		PRIMARY KEY (
			img_no -- 사진번호
);
		
-----------------------------------------------------------	

-- 공지사항게시판
CREATE TABLE bd_announce (
	bd_no      INTEGER        NOT NULL, -- 글번호
	bd_title   VARCHAR2(30)   NULL,     -- 제목
	bd_content VARCHAR2(1000) NULL,     -- 내용
	bd_wdt     DATE           NULL,     -- 작성일자
	gb_del     VARCHAR2(1)    NULL      -- 삭제여부
);

-- 공지사항게시판 기본키
CREATE UNIQUE INDEX PK_bd_announce
	ON bd_announce ( -- 공지사항게시판
		bd_no ASC -- 글번호
);

-- 공지사항게시판
ALTER TABLE bd_announce
	ADD
		CONSTRAINT PK_bd_announce -- 공지사항게시판 기본키
		PRIMARY KEY (
			bd_no -- 글번호
);

-----------------------------------------------------------	

-- 태그
CREATE TABLE tag_info (
	tag_id VARCHAR2(4)  NOT NULL, -- 태그id
	tag_nm VARCHAR2(50) NULL      -- 태그명
);

-- 태그 기본키
CREATE UNIQUE INDEX PK_tag_info
	ON tag_info ( -- 태그
		tag_id ASC -- 태그id
);

-- 태그
ALTER TABLE tag_info
	ADD
		CONSTRAINT PK_tag_info -- 태그 기본키
		PRIMARY KEY (
			tag_id -- 태그id
);		