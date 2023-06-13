--데이터를 조회하기위한 selecr 문
-- 사원정보 감색하기
select * 
from emp;

--사원번호, 사원이름, 직급, 금여, 검색하기
select empno, ename, job, sal
from emp;

--사원이름, 급여, 커미션(성과금), 연봉, 검색하기
select ename "이 름", sal, comm, sal*12+nvl(comm,0) as 연봉 --별칭
from emp
WHERE  sal*12+nvl(comm,0) >=5000
ORDER by 연봉 DESC ;

--문자열 합치기 ㅣㅣ 연산자
select ename || '의 직급은 ' || job ||'입니다.'
from emp;

-- 사원테이블에서 부서번호 검색하기 -중복제거 연산자 distinct
select  distinct deptno
from emp;  

--특정 조건의 데이터만 조회하는 where 절
--급여가 500이상인 사원검색하기
SELECT *
FROM emp
where sal>=500;

-- 이문세 사원검색하기
SELECT *
FROM emp
WHERE ename='이문세';

-- 입사일이 2005년 1월1일 이전 사원만 검색하기
select *
from emp
where hiredate < '05/01/01';

--부서번호가 10이고 직급이 과장인 사원 검색하기
SELECT *
FROM emp
WHERE deptno=10 and job='과장';

--부서번호가 10이거나 직급이 과장인 사원 검색하기
SELECT *
FROM emp
WHERE deptno=10 or job='과장';

-- 부서번호가 10인 사원 검색하기
SELECT *
FROM emp 
WHERE not deptno=10;

SELECT *
FROM emp 
WHERE  deptno<>10;

--급여가 400~500사이인 사원 - between A and B
SELECT *
FROM emp
WHERE sal>=400 and sal<=500;

SELECT *
FROM emp
WHERE sal BETWEEN 400 and 500;

--급여가 400미만거나 500초과인 사원 검색하기
SELECT *
FROM emp
WHERE sal<400 or sal>500;

SELECT *
FROM emp
WHERE sal NOT BETWEEN 400 and 500;

--커미션 80이거나 100이상이거나 200인사원 검색하기 -in 연산자
SELECT *
FROM emp
WHERE comm=80 or comm=100 or comm=200;

SELECT *
FROM emp
WHERE comm in(80,100,200);

SELECT *
FROM emp
WHERE comm not in(80,100,200);

SELECT *
FROM emp
WHERE comm<>80 and comm<>100 and comm<>200;

--2003년에 입사한 사원 검색하기
SELECT *
FROM emp
WHERE hiredate BETWEEN'03/01/01' and '03/12/31';

--like 연산자와 와일드카드(%,_)
--성이 '이'씨인 사원 검색하기
SELECT *
FROM emp
WHERE ename like '이%';

--성이 '성'이 포함되어 있는 사원 검색하기
SELECT *
FROM emp
WHERE ename like '%성%';

--이름 두 번째 글자가 성이고 그 뒤에 무엇이 오든 관계없는 사원 검색하기
SELECT *
FROM emp
WHERE ename like '_성%';

--성이 '성'이 포함하지 않는 있는 사원 검색하기
SELECT *
FROM emp
WHERE ename not like '%성';

--사원의 이름, 담당업무(직급), 커미션 검색하기 -커미션이 null인 사원만 검색
SELECT ename, job, comm
FROM emp
WHERE comm is null; --null을위한 연산자

--사원의 이름, 담당업무(직급), 커미션 검색하기 -커미션이 null 이 아니 사원만 검색
SELECT ename, job, comm
FROM emp
WHERE comm is not null; --null을위한 연산자

--정렬을 위한 oeder by 절
--급여를 적새 받는 사원부터 많이 받는 사원순으로 검색하기
SELECT *
FROM emp
ORDER by sal desc; --오름차순,생략이 가능

SELECT *
FROM emp
ORDER by sal desc; --내림름차순

--이름을 기준으로 사전애 먼저 실린 순서대로 검색하기
SELECT *
FROM emp
ORDER by ename;

SELECT *
FROM emp
ORDER by 2; --컬럼명 대신 컬럼의 상대적인 위치번호 사용가능

--가장최근에 입사한 사람부터 
SELECT *
FROM emp
ORDER by hiredate desc;

--급여를 많이받는순으로 검색  금여가 같으면 이름의 절차가 빠른순으로 검색하기
SELECT *
FROM emp
ORDER by sal desc,ename;
