use company;
select * from member;
update member set address='송포동 11' where id='jyjoh9702';
select * from member;
select * from board;
desc board;
desc board;
update board set author="관리자" where bno="1";
update board set author="관리자" where bno="2";
update board set author="관리자" where bno="3";
update board set author="관리자" where bno="4";
update board set author="관리자" where bno="5";
update board set author="관리자" where bno="6";
update board set author="관리자" where bno="7";
update board set author="관리자" where bno="8";
update board set author="관리자" where bno="9";
update board set author="관리자" where bno="10";
update board set author="관리자" where bno="11";
update board set author="관리자" where bno="13";
commit;
update board set b_title="게시판 샘플13" where bno="13";
update board set b_title="게시판 샘플2" where bno="2";
update board set b_title="게시판 샘플3" where bno="3";
update board set b_title="게시판 샘플4" where bno="4";
update board set b_title="게시판 샘플5" where bno="5";
update board set b_title="게시판 샘플6" where bno="6";
update board set b_title="게시판 샘플7" where bno="7";
update board set b_title="게시판 샘플8" where bno="8";
update board set b_title="게시판 샘플9" where bno="9";
update board set b_title="게시판 샘플10" where bno="10";
update board set b_title="게시판 샘플11" where bno="11";
update board set b_content="글 샘플13입니다" where bno="13";
commit;

desc board;