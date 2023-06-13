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
-- 4장 고정퀴즈
--7.30번 부서에 소속된 사원 중에서 커미션을 받은 사원수 
SELECT count(comm)
from emp
WHERE deptno=30;
--8.가장 최근에 입사힌 입사일과 가장 오래괸 사원의 입사일 출력
SELECT to_char(max(hiredate),'yyyy-mm-dd-hh24-:mi:ss'),
       to_char(min(hiredate),'yyyy-mm-dd-hh24-:mi:ss')
from emp;
--9.직급별로 각각의 급여 합계구하기 결과중 합계가 300 초과인 데이터 구하기
SELECT job, sum(sal)
from emp
GROUP BY job
HAVING sum(sal)>300;


























