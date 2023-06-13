-- 1.1 9���� �Ի��� ��� �˻� --substr ���
SELECT *
FROM emp
where hiredate like '__/09%';

SELECT *
FROM emp
WHERE substr(hiredate,4, 2) = '09';

-- 1.2 2003�� �� �Ի��� ��� �˻� --substr ���
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

-- 1.3 �̸��� ��� ������ ����˻� --substr ���
SELECT *
from emp
where ename like '%��';

SELECT *
from emp
WHERE substr(ename,-1,1) = '��';

-- 1.4 �̸��� �ι�° ���ھ� ���� �ִ� ����˻� -instr() ���
SELECT *
from emp
where ename like '_��%';

SELECT *
from emp
WHERE substr(ename,-2,1) = '��';

SELECT *
from emp
WHERE instr(ename, '��', 2,1) = 2;

-- 2.1 ���޿� ���� �޿��λ� �����̸� 5% �����̸� 10% �븮�̸� 15% ����̸� 20%�λ� 
-- decode,case �Լ�
SELECT empno,ename,job,sal,decode(job, '����', sal*1.05,
                                       	    '����', sal*1.10,
                                                    '�븮', sal*1.15,
                                                    '���', sal*1.20,
                                                    sal)upsal
from emp;                    

SELECT empno,ename,job,sal,case when job='����' then sal*1.05
                                           when job='����' then sal*1.10
                                           when job='�븮' then sal*1.15
                                           when job='���' then sal*1.20
                                           else sal
                                           end upsal      
from emp;
-- 3.1 �Ի����� ����2�ڸ� ���� ���ڷ� ������ �Ǿ�� SELECT *
SELECT hiredate,to_char(hiredate,'yy-mon-dd dy')
from emp;