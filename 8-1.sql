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
-- 4�� ��������
--7.30�� �μ��� �Ҽӵ� ��� �߿��� Ŀ�̼��� ���� ����� 
SELECT count(comm)
from emp
WHERE deptno=30;
--8.���� �ֱٿ� �Ի��� �Ի��ϰ� ���� ������ ����� �Ի��� ���
SELECT to_char(max(hiredate),'yyyy-mm-dd-hh24-:mi:ss'),
       to_char(min(hiredate),'yyyy-mm-dd-hh24-:mi:ss')
from emp;
--9.���޺��� ������ �޿� �հ豸�ϱ� ����� �հ谡 300 �ʰ��� ������ ���ϱ�
SELECT job, sum(sal)
from emp
GROUP BY job
HAVING sum(sal)>300;


























