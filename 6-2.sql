-- 1. 사원번호가 홀수인 사원검색
SELECT *
from emp
WHERE mod(empno,2) =1;

-- 2. 사원의 입사일에 대해 년도 월 일을 개별적으로 출력
SELECT hiredate,to_char(hihiredate,'yyyy/mm/dd')입사일,
                substr(to_char(hiredate,'yyyy/mm/dd'),1,4)년도,
                substr(to_char(hiredate,'yyyy/mm/dd'),6,2)월,
                substr(to_char(hiredate,'yyyy/mm/dd'),9,2)일
from emp;

-- 3. 각 사원들의 현재까지 근무일수 
SELECT  round(sysdate - hiredate)근무일수
from emp;

-- 4. 직속상관이없는 사원 검색,null 값을 ceo로 출력
SELECT empno, ename, nvl(to_char(mgr,'9999'),'ceo')직속상관
from emp
WHERE mgr is null;

--5. dual

-- 6. 오늘날 을 디준으로 100일 후 날짜 촐쳑
SELECT (sysdate +100)일
from dual;

-- 7.오늘이 속한 달의 마지막 날출력
SELECT last_day(sysdate)
FROM dual;

-- 8.mvl(comm,sal+comm,sal)의 의미
-- comm 값이 있을경우 급여 성과금으로 걔산하고
-- comm 값이 없을경우 급여만 출력

--9. case

-- 10.현재 지점의 날짜 값이 자동으로 입력되는 명령어는
-- sysdate