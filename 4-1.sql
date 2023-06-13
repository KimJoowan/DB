

-- 집합 연산자
-- 그룹활동 싱글활동을 하는 가수 이름 검색하기  -- 합집합 union
select *
from group_star
union all -- 중복이 제거되지않음
select *
from single_star;

-- 그룹활동 싱글활동을 동시에 하는 가수 이름 검색하기 -- 교집합 intersect
select *
from group_star
intersect 
select *
from single_star;

--  그룹활동만 하는 가수 이름 검색하기 -- 차집합 minus
select *
from group_star
minus 
select *
from single_star;

--  싱글활동만 하는 가수 이름 검색하기 -- 차집합 minus
select *
from single_star
minus 
select *
from group_star;

-- ch SQL의 기본 - 미션
-- 1-1 사원의이름 과 급여 입사일만 출력
select ENAME,SAL,HIREDATE
from emp;
-- 1-2 deptno는 부서번호로 dname은 부서명으로 별칠을 지정해서 부서태이블 출력
select EMPNO,ENAME
from emp;
-- 1-3 사원테이블의 직급 종류 출력 단 중복되지않고 한번씩 너열
SELECT distinct job
from emp;
--2-1 급여가300 이하인 사원 사원번호 사원이름 급여 출력
select EMPNO,ENAME,SAL
from EMP
WHERE SAL<=300;
-- 2-2 이름이 오지호인 사원의 사원번호 사원명 급여 출력
select EMPNO,ENAME,SAL
from EMP
WHERE ENAME = '오지호';
-- 2-3 급여가 250 이거니 300이거니 500인 사원들 사원번호 사원명 급여 곰색
select EMPNO,ENAME,SAL
from EMP
WHERE SAL=250 OR SAL=300 OR SAL=500;
-- 2-4 급여가 250,300,500 도 아닌 사원들 사원번호 사원명 급여 검색
select EMPNO,ENAME,SAL
from EMP
WHERE SAL<>250 and SAL<>300 and SAL<>500;
-- 3-1 사원들 중 이름이 김으로 시작하는 사람중에 가를 포함하는 사원의 사원번호 사원이름 출력
select EMPNO,ENAME
from emp
WHERE ENAME like '김%';
-- 3-2 상급자가 없는 사원(사장) 검색
select *
from emp
WHERE JOB like '사장';
-- 3-3 입사일 기준으로 정렬 최근에 입사한 직원을 가장먼저출력 (사원번호 사원명 직급 입사일)
    select EMPNO,ENAME,HIREDATE
    from emp
    ORDER BY HIREDATE DESC;
-- 3-4 부서번호가 빠른 사원부터 출력  (사원번호 사원명 직급 입사일)같은 부서 내의 사원인 경우 입사한지 오래된 사람부터  
 select EMPNO,JOB,HIREDATE
from emp
ORDER BY EMPNO DESC;