--4장 그룹 함수
--사원의 급여 검색 십의자리 에서 반올림
SELECT ename, sal, round(sal,-2)
FROM emp;

-- 사원의 총급여 평균급여  최소급여 구히기
SELECT sum(sal),round(avg(sal),1),max(sal),min(sal)
FROM emp;

-- 최근 입사한 사원과 가장 오래전 입사한 사원의 입사일 구하기
SELECT max(hiredate) "최근 입사일", min(hiredate)"최초입사일"
FROM emp;

-- 성과금의 총액 구하기
SELECT sum(comm)
FROM emp;

--최대급여 구하기
SELECT max(sal)
from emp;

--사원 수 구하기
SELECT COUNT(*), count(empno)
from emp;

-- 성과금을 받는 사원수 구하기
SELECT count(comm)
from emp;

-- 직급 수 구하기
SELECT COUNT(distinct job)
from emp;

--데이터 그룹 -group by 절
--부서별 급여 평균 급여촐액
SELECT deptno, round(avg(sal)),sum(sal)
from emp
GROUP by deptno
order by 2 desc;

--부서별 최대급여 최소급여
SELECT deptno, max(sal), min(sal)
from emp
GROUP by deptno
order by 1;

-- 부서별 사원수와 성과금을 받는 사원수 구하기
SELECT deptno, count(*), COUNT(comm)
from emp
group by deptno
order by 1;

-- 직급별 급여의 평균
SELECT job, round(avg(sal))
from emp
group by job
order by 2 desc;

--그룹 결과 재한 -- having
-- 부서별 급여 평군 500아상만 검색
SELECT deptno,round(avg(sal))
from emp
group by deptno
HAVING round(avg(sal)) >= 500;

--최대급여 500초과하는 부서에 대해서 최대급여 최소급여 
SELECT deptno, max(sal), min(sal)
from emp
group by deptno
HAVING max(sal) >500;

-- 사원을 제외하고 급여 총약 1000이상인 직급별 급여 총액 
SELECT job, sum(sal)
from emp
WHERE job  not like '%사원%'
group by job
HAVING sum(sal)>=1000
ORDER by 2 DESC;

--부서별 평균급여의 최대값 구하기
SELECT  max(round(avg(sal)))
from emp
group by deptno;

--1 모든사원의 급여 최고액 최저액 총액 평균급여 구하기
SELECT max(sal),min(sal),sum(sal), round(avg(sal))
from emp;

--2. 직급별 급여 최고액 최저액 총액 평균급여 구하기
SELECT deptno, avg(max(sal)-min(sal))
from emp
group by deptno;

SELECT job, max(sal), min(sal), sum(sal), round(avg(sal))
from emp
group by job;

--3.직급별 사원수 구하기
SELECT job,COUNT(*)
from emp
group by job;

--4.과장의 수 구하기
SELECT count(job)
FROM emp
WHERE job = '과장';

--5.급여 최고액 최저액 차액구하기
select max(sal)-min(sal)
FROM emp;

--6.직급별 사원의 최저급여 구하기 최저급여가 500미만은 제외 
-- 급여애 대한 내림차림 정렬
SELECT job,min(sal)
from emp
group by job
having not min(sal)<500
order by 2 DESC;

--7.각부서에대한 부서번호 사원 부서내의 모든사원 평균 급여 구하기 평균급여는 소수점둘째짜리 까지
SELECT deptno,count(*),round(avg(sal),2)
from emp
GROUP by deptno
order by 1;

--8.각부서에 대해 부서번로 이름,지역명,사원수,부서내모든평균급여 
--평균급여 소수점둘째짜리 까지
--10-경리부-서울, 20-인사부-인천, 30-영업부-용인, 40-전신부-수원
SELECT deptno,
        decode(deptno,  10,'경리부',
                          20,'인사부',
                          30,'영업부',
                          40,'전산부')부서명,
         decode(deptno, 10,'서울',
                          20,'인천',
                          30,'용인',
                          40,'수원') 지역명,                 
        count(*) 인원수, 
        round(avg(sal),2) 평균급여
from emp                
GROUP by deptno
ORDER by 1;

SELECT deptno,case when  deptno = 10 then '경리부'
                   when  deptno = 20 then '인사부'
                   when  deptno = 30 then '영업부'
                   when  deptno = 40 then '전산부'
              end  부서명,
              case when  deptno = 10 then '서울'
                   when  deptno = 20 then '인천'
                   when  deptno = 30 then '용인'
                   when  deptno = 40 then '수원'
              end  지역명,                 
              count(*) 인원수, 
              round(avg(sal),2) 평균급여
from emp                
GROUP by deptno
ORDER by 1;






























