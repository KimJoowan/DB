-- 1.1 9월에 입사한 사원 검색 --substr 사용
SELECT *
FROM emp
where hiredate like '__/09%';

SELECT *
FROM emp
WHERE substr(hiredate,4, 2) = '09';

-- 1.2 2003년 에 입사한 사원 검색 --substr 사용
SELECT *
from emp
WHERE hiredate >= '03/01/01' and hiredate <= '03/12/31';

SELECT *
from emp
WHERE hiredate between '03/01/01' and  '03/12/31';
 
SELECT *
from emp
WHERE hiredate like '03%';

SELECT *
from emp
WHERE substr(hiredate,1,2) ='03';

-- 1.3 이름이 기로 끝나는 사원검색 --substr 사용
SELECT *
from emp
where ename like '%기';

SELECT *
from emp
WHERE substr(ename,-1,1) = '기';

-- 1.4 이름이 두번째 글자애 동이 있는 사원검색 -instr() 사용
SELECT *
from emp
where ename like '_동%';

SELECT *
from emp
WHERE substr(ename,-2,1) = '동';

SELECT *
from emp
WHERE instr(ename, '동', 2,1) = 2;

-- 2.1 직급에 따라서 급여인상 부장이면 5% 과장이면 10% 대리이면 15% 사원이면 20%인상 
-- decode,case 함수
SELECT empno,ename,job,sal,decode(job, '부장', sal*1.05,
                                       	    '과장', sal*1.10,
                                                    '대리', sal*1.15,
                                                    '사원', sal*1.20,
                                                    sal)upsal
from emp;                    

SELECT empno,ename,job,sal,case when job='부장' then sal*1.05
                                           when job='과장' then sal*1.10
                                           when job='대리' then sal*1.15
                                           when job='사원' then sal*1.20
                                           else sal
                                           end upsal      
from emp;
-- 3.1 입사일을 연도2자리 월은 글자로 요일은 악어로 SELECT *
SELECT hiredate,to_char(hiredate,'yy-mon-dd dy')
from emp;