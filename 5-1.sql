-- 형 변한 함수
-- 문자형으로 변화하는 to_char함수
-- 날짜형을 문자형으로 변환
-- 현재날짜 시간 표현하기
SELECT  sysdate, to_char(sysdate, 'yyyy-mm-dd day am hh:mi:ss')
from dual;

-- 숫자를 문자형으로 변환
-- 통화 기호를 붙여 출력
select 1230000, to_char(1230000, 'L999,999,999'),
                to_char(1230000, 'L000,000,000')
from dual;

--날짜형으로 변환하는 T0_DATE함수
--2007년4월2일에입사한 사원 검색
SELECT ename,hiredate
FROM emp
WHERE hiredate= to_date(20070402,'yyyymmdd');

-- 올해 며칠이 지났는지 알아보기
SELECT trunc(sysdate - to_date('2022-01-01','yyyy-mm-dd'))
from dual;

--숫자형으로 변화하는 to_number 함수
SELECT to_number('20,000','99,999') - to_number('10,000','99,999')
from dual;

--날짜 함수
--현재날찌를 변환하는 stsdate함수
SELECT sysdate-1 어제,sysdate 오늘,sysdate+1 내일
FROM dual;

--특정 조건을 기준으로 반올림 하는round 함수
--특정 조건을 기준으로 버림 하는 trunc 함수
--입사일 달을 기준으로 버리기
SELECT hiredate, trunc(hiredate, 'month')
FROM emp;

--두 날짜 사이의 간격을 구하는 months_between 함수
--사원의 근무달수 구하기
SELECT ename 이름,sysdate  오늘,hiredate 입사일,
       trunc(months_between(stsdat,hiredate))  근무달수
from emp;       

--개원 수더하눈 add_months
-- 입사일에 6개월 추가하기
SELECT ename, hiredate,add_months(hiredate,6)"입사 6개월 후"
from emp;

--해당 요일의 가장 가까운 날짜를 변환하는 next_day
select sysdate 오늘,next_day(sysdate,'수요일')"다음 수요일"
from dual;

--해달 달의 마지막날짜를 변환하는 last_day
select ename 이름,hiredate 입사일,last_day(hiredate)
from emp;

--null을 다른값으로 변화하는 nvl,
--사원의 연봉구하기 부서별 검색
select ename, sal, comm,
       sal*12+nvl(comm,0), deptno
from emp
ORDER by deptno;

select ename, sal, comm,
       nvl2(comm,sal*12+comm, sal*12),deptno
from emp
ORDER by deptno;

--선택을 위한 decode - switch case
-- 사원테이블에서 부서명 구하기
SELECT ename, deptno, decode(deptno, 10,'경리부',
                                     20,'인사부',
                                     30,'영업부',
                                     40,'전산부') 부서명
from emp;
-- 조건에 따라 서로다른처리가 가능한 case문 -if else
SELECT ename, deptno, case when deptno = 10 then'경리부'
                           when deptno = 20 then'인사부'
                           when deptno = 30 then'영업부'
                           else '전산부' 
                           end 부서명
from emp;