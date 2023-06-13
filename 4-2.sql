-- 3장 오라클 주요 함수
-- dual 테이블
-- 1일 이 몇분인지 계산
select 24*60
from dual;

SELECT * 
from dual;

-- 현재날짜 출력하기
select sysdate
FROM dual;

--숫자함수 
-- 절대값 구하는 abs 함수
select -10, abs(-10)
FROM dual;

-- 소숫점 아래를 버리는 floor함수
select 34.5678, floor(34.5678)
FROM dual;
-- \특정 자리수에서 잘라내는 trunc함수
select 34.5678, trunc(34.5678), trunc(34.5678,2), trunc(34.5678,-1)
FROM dual;

-- 특정 자리수에서 반올림 round함수
select 34.5678, round(34.5678), round(34.5678,2), round(34.5678,-1)
FROM dual;

--나머지를 구하는 mod함수
select mod(27, 2), mod(27, 5),mod(27, 7)
FROM dual;

--문자처리함수
--대 소문자 변환 함수
select 'welcom to Oracle',
         upper('welcom to Oracle'),
         lower('welcom to Oracle'),
         initcap('welcom to Oracle')
FROM dual;

-- 문자길이 구하는 함수 length
select length('Oracle'), length('오라클')
FROM dual;

select lengthb('Oracle'), lengthb('오라클')
FROM dual;

--문자조작 함수
--문자열 일부만 추출하는 substr 함수
select substr('welcom to Oracle',4,3), --왼쪽에서
       substr('welcom to Oracle',-4,3) --오른쪽에서
FROM dual;

select substr('웰컴투오라클',4,3),  --왼쪽에서
       substr('웰컴투오라클',-4,3), --오른쪽에서
       substrb('웰컴투오라클',4,3), --왼쪽에서
       substrb('웰컴투오라클',-3,3) --오른쪽에서
FROM dual;

--특정문자의 위치를 구하는 instr함수
select instr('WELCOM TO ORACLE', 'O'),
       instr('WELCOM TO ORACLE', 'O',6,2)
FROM dual;

select  instr('데이터베이스', '이'),
        instrb('데이터베이스', '이'),
        instrb('데이터베이스', '이',7,1)
FROM dual;

--특정기호로 채우는 iped/rpad함수
select lpad('Oracle',20,'#'), --왼쪽 채우기
       rpad('Oracle',20,'#')  --오른쪽 채우기
FROM dual;