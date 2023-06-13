--�����͸� ��ȸ�ϱ����� selecr ��
-- ������� �����ϱ�
select * 
from emp;

--�����ȣ, ����̸�, ����, �ݿ�, �˻��ϱ�
select empno, ename, job, sal
from emp;

--����̸�, �޿�, Ŀ�̼�(������), ����, �˻��ϱ�
select ename "�� ��", sal, comm, sal*12+nvl(comm,0) as ���� --��Ī
from emp
WHERE  sal*12+nvl(comm,0) >=5000
ORDER by ���� DESC ;

--���ڿ� ��ġ�� �Ӥ� ������
select ename || '�� ������ ' || job ||'�Դϴ�.'
from emp;

-- ������̺��� �μ���ȣ �˻��ϱ� -�ߺ����� ������ distinct
select  distinct deptno
from emp;  

--Ư�� ������ �����͸� ��ȸ�ϴ� where ��
--�޿��� 500�̻��� ����˻��ϱ�
SELECT *
FROM emp
where sal>=500;

-- �̹��� ����˻��ϱ�
SELECT *
FROM emp
WHERE ename='�̹���';

-- �Ի����� 2005�� 1��1�� ���� ����� �˻��ϱ�
select *
from emp
where hiredate < '05/01/01';

--�μ���ȣ�� 10�̰� ������ ������ ��� �˻��ϱ�
SELECT *
FROM emp
WHERE deptno=10 and job='����';

--�μ���ȣ�� 10�̰ų� ������ ������ ��� �˻��ϱ�
SELECT *
FROM emp
WHERE deptno=10 or job='����';

-- �μ���ȣ�� 10�� ��� �˻��ϱ�
SELECT *
FROM emp 
WHERE not deptno=10;

SELECT *
FROM emp 
WHERE  deptno<>10;

--�޿��� 400~500������ ��� - between A and B
SELECT *
FROM emp
WHERE sal>=400 and sal<=500;

SELECT *
FROM emp
WHERE sal BETWEEN 400 and 500;

--�޿��� 400�̸��ų� 500�ʰ��� ��� �˻��ϱ�
SELECT *
FROM emp
WHERE sal<400 or sal>500;

SELECT *
FROM emp
WHERE sal NOT BETWEEN 400 and 500;

--Ŀ�̼� 80�̰ų� 100�̻��̰ų� 200�λ�� �˻��ϱ� -in ������
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

--2003�⿡ �Ի��� ��� �˻��ϱ�
SELECT *
FROM emp
WHERE hiredate BETWEEN'03/01/01' and '03/12/31';

--like �����ڿ� ���ϵ�ī��(%,_)
--���� '��'���� ��� �˻��ϱ�
SELECT *
FROM emp
WHERE ename like '��%';

--���� '��'�� ���ԵǾ� �ִ� ��� �˻��ϱ�
SELECT *
FROM emp
WHERE ename like '%��%';

--�̸� �� ��° ���ڰ� ���̰� �� �ڿ� ������ ���� ������� ��� �˻��ϱ�
SELECT *
FROM emp
WHERE ename like '_��%';

--���� '��'�� �������� �ʴ� �ִ� ��� �˻��ϱ�
SELECT *
FROM emp
WHERE ename not like '%��';

--����� �̸�, ������(����), Ŀ�̼� �˻��ϱ� -Ŀ�̼��� null�� ����� �˻�
SELECT ename, job, comm
FROM emp
WHERE comm is null; --null������ ������

--����� �̸�, ������(����), Ŀ�̼� �˻��ϱ� -Ŀ�̼��� null �� �ƴ� ����� �˻�
SELECT ename, job, comm
FROM emp
WHERE comm is not null; --null������ ������

--������ ���� oeder by ��
--�޿��� ���� �޴� ������� ���� �޴� ��������� �˻��ϱ�
SELECT *
FROM emp
ORDER by sal desc; --��������,������ ����

SELECT *
FROM emp
ORDER by sal desc; --����������

--�̸��� �������� ������ ���� �Ǹ� ������� �˻��ϱ�
SELECT *
FROM emp
ORDER by ename;

SELECT *
FROM emp
ORDER by 2; --�÷��� ��� �÷��� ������� ��ġ��ȣ ��밡��

--�����ֱٿ� �Ի��� ������� 
SELECT *
FROM emp
ORDER by hiredate desc;

--�޿��� ���̹޴¼����� �˻�  �ݿ��� ������ �̸��� ������ ���������� �˻��ϱ�
SELECT *
FROM emp
ORDER by sal desc,ename;
