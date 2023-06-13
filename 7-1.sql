--4�� �׷� �Լ�
--����� �޿� �˻� �����ڸ� ���� �ݿø�
SELECT ename, sal, round(sal,-2)
FROM emp;

-- ����� �ѱ޿� ��ձ޿�  �ּұ޿� ������
SELECT sum(sal),round(avg(sal),1),max(sal),min(sal)
FROM emp;

-- �ֱ� �Ի��� ����� ���� ������ �Ի��� ����� �Ի��� ���ϱ�
SELECT max(hiredate) "�ֱ� �Ի���", min(hiredate)"�����Ի���"
FROM emp;

-- �������� �Ѿ� ���ϱ�
SELECT sum(comm)
FROM emp;

--�ִ�޿� ���ϱ�
SELECT max(sal)
from emp;

--��� �� ���ϱ�
SELECT COUNT(*), count(empno)
from emp;

-- �������� �޴� ����� ���ϱ�
SELECT count(comm)
from emp;

-- ���� �� ���ϱ�
SELECT COUNT(distinct job)
from emp;

--������ �׷� -group by ��
--�μ��� �޿� ��� �޿��;�
SELECT deptno, round(avg(sal)),sum(sal)
from emp
GROUP by deptno
order by 2 desc;

--�μ��� �ִ�޿� �ּұ޿�
SELECT deptno, max(sal), min(sal)
from emp
GROUP by deptno
order by 1;

-- �μ��� ������� �������� �޴� ����� ���ϱ�
SELECT deptno, count(*), COUNT(comm)
from emp
group by deptno
order by 1;

-- ���޺� �޿��� ���
SELECT job, round(avg(sal))
from emp
group by job
order by 2 desc;

--�׷� ��� ���� -- having
-- �μ��� �޿� �� 500�ƻ� �˻�
SELECT deptno,round(avg(sal))
from emp
group by deptno
HAVING round(avg(sal)) >= 500;

--�ִ�޿� 500�ʰ��ϴ� �μ��� ���ؼ� �ִ�޿� �ּұ޿� 
SELECT deptno, max(sal), min(sal)
from emp
group by deptno
HAVING max(sal) >500;

-- ����� �����ϰ� �޿� �Ѿ� 1000�̻��� ���޺� �޿� �Ѿ� 
SELECT job, sum(sal)
from emp
WHERE job  not like '%���%'
group by job
HAVING sum(sal)>=1000
ORDER by 2 DESC;

--�μ��� ��ձ޿��� �ִ밪 ���ϱ�
SELECT  max(round(avg(sal)))
from emp
group by deptno;

--1 ������� �޿� �ְ�� ������ �Ѿ� ��ձ޿� ���ϱ�
SELECT max(sal),min(sal),sum(sal), round(avg(sal))
from emp;

--2. ���޺� �޿� �ְ�� ������ �Ѿ� ��ձ޿� ���ϱ�
SELECT deptno, avg(max(sal)-min(sal))
from emp
group by deptno;

SELECT job, max(sal), min(sal), sum(sal), round(avg(sal))
from emp
group by job;

--3.���޺� ����� ���ϱ�
SELECT job,COUNT(*)
from emp
group by job;

--4.������ �� ���ϱ�
SELECT count(job)
FROM emp
WHERE job = '����';

--5.�޿� �ְ�� ������ ���ױ��ϱ�
select max(sal)-min(sal)
FROM emp;

--6.���޺� ����� �����޿� ���ϱ� �����޿��� 500�̸��� ���� 
-- �޿��� ���� �������� ����
SELECT job,min(sal)
from emp
group by job
having not min(sal)<500
order by 2 DESC;

--7.���μ������� �μ���ȣ ��� �μ����� ����� ��� �޿� ���ϱ� ��ձ޿��� �Ҽ�����°¥�� ����
SELECT deptno,count(*),round(avg(sal),2)
from emp
GROUP by deptno
order by 1;

--8.���μ��� ���� �μ����� �̸�,������,�����,�μ��������ձ޿� 
--��ձ޿� �Ҽ�����°¥�� ����
--10-�渮��-����, 20-�λ��-��õ, 30-������-����, 40-���ź�-����
SELECT deptno,
        decode(deptno,  10,'�渮��',
                          20,'�λ��',
                          30,'������',
                          40,'�����')�μ���,
         decode(deptno, 10,'����',
                          20,'��õ',
                          30,'����',
                          40,'����') ������,                 
        count(*) �ο���, 
        round(avg(sal),2) ��ձ޿�
from emp                
GROUP by deptno
ORDER by 1;

SELECT deptno,case when  deptno = 10 then '�渮��'
                   when  deptno = 20 then '�λ��'
                   when  deptno = 30 then '������'
                   when  deptno = 40 then '�����'
              end  �μ���,
              case when  deptno = 10 then '����'
                   when  deptno = 20 then '��õ'
                   when  deptno = 30 then '����'
                   when  deptno = 40 then '����'
              end  ������,                 
              count(*) �ο���, 
              round(avg(sal),2) ��ձ޿�
from emp                
GROUP by deptno
ORDER by 1;






























