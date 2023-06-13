

-- ���� ������
-- �׷�Ȱ�� �̱�Ȱ���� �ϴ� ���� �̸� �˻��ϱ�  -- ������ union
select *
from group_star
union all -- �ߺ��� ���ŵ�������
select *
from single_star;

-- �׷�Ȱ�� �̱�Ȱ���� ���ÿ� �ϴ� ���� �̸� �˻��ϱ� -- ������ intersect
select *
from group_star
intersect 
select *
from single_star;

--  �׷�Ȱ���� �ϴ� ���� �̸� �˻��ϱ� -- ������ minus
select *
from group_star
minus 
select *
from single_star;

--  �̱�Ȱ���� �ϴ� ���� �̸� �˻��ϱ� -- ������ minus
select *
from single_star
minus 
select *
from group_star;

-- ch SQL�� �⺻ - �̼�
-- 1-1 ������̸� �� �޿� �Ի��ϸ� ���
select ENAME,SAL,HIREDATE
from emp;
-- 1-2 deptno�� �μ���ȣ�� dname�� �μ������� ��ĥ�� �����ؼ� �μ����̺� ���
select EMPNO,ENAME
from emp;
-- 1-3 ������̺��� ���� ���� ��� �� �ߺ������ʰ� �ѹ��� �ʿ�
SELECT distinct job
from emp;
--2-1 �޿���300 ������ ��� �����ȣ ����̸� �޿� ���
select EMPNO,ENAME,SAL
from EMP
WHERE SAL<=300;
-- 2-2 �̸��� ����ȣ�� ����� �����ȣ ����� �޿� ���
select EMPNO,ENAME,SAL
from EMP
WHERE ENAME = '����ȣ';
-- 2-3 �޿��� 250 �̰Ŵ� 300�̰Ŵ� 500�� ����� �����ȣ ����� �޿� ����
select EMPNO,ENAME,SAL
from EMP
WHERE SAL=250 OR SAL=300 OR SAL=500;
-- 2-4 �޿��� 250,300,500 �� �ƴ� ����� �����ȣ ����� �޿� �˻�
select EMPNO,ENAME,SAL
from EMP
WHERE SAL<>250 and SAL<>300 and SAL<>500;
-- 3-1 ����� �� �̸��� ������ �����ϴ� ����߿� ���� �����ϴ� ����� �����ȣ ����̸� ���
select EMPNO,ENAME
from emp
WHERE ENAME like '��%';
-- 3-2 ����ڰ� ���� ���(����) �˻�
select *
from emp
WHERE JOB like '����';
-- 3-3 �Ի��� �������� ���� �ֱٿ� �Ի��� ������ ���������� (�����ȣ ����� ���� �Ի���)
    select EMPNO,ENAME,HIREDATE
    from emp
    ORDER BY HIREDATE DESC;
-- 3-4 �μ���ȣ�� ���� ������� ���  (�����ȣ ����� ���� �Ի���)���� �μ� ���� ����� ��� �Ի����� ������ �������  
 select EMPNO,JOB,HIREDATE
from emp
ORDER BY EMPNO DESC;