-- �� ���� �Լ�
-- ���������� ��ȭ�ϴ� to_char�Լ�
-- ��¥���� ���������� ��ȯ
-- ���糯¥ �ð� ǥ���ϱ�
SELECT  sysdate, to_char(sysdate, 'yyyy-mm-dd day am hh:mi:ss')
from dual;

-- ���ڸ� ���������� ��ȯ
-- ��ȭ ��ȣ�� �ٿ� ���
select 1230000, to_char(1230000, 'L999,999,999'),
                to_char(1230000, 'L000,000,000')
from dual;

--��¥������ ��ȯ�ϴ� T0_DATE�Լ�
--2007��4��2�Ͽ��Ի��� ��� �˻�
SELECT ename,hiredate
FROM emp
WHERE hiredate= to_date(20070402,'yyyymmdd');

-- ���� ��ĥ�� �������� �˾ƺ���
SELECT trunc(sysdate - to_date('2022-01-01','yyyy-mm-dd'))
from dual;

--���������� ��ȭ�ϴ� to_number �Լ�
SELECT to_number('20,000','99,999') - to_number('10,000','99,999')
from dual;

--��¥ �Լ�
--���糯� ��ȯ�ϴ� stsdate�Լ�
SELECT sysdate-1 ����,sysdate ����,sysdate+1 ����
FROM dual;

--Ư�� ������ �������� �ݿø� �ϴ�round �Լ�
--Ư�� ������ �������� ���� �ϴ� trunc �Լ�
--�Ի��� ���� �������� ������
SELECT hiredate, trunc(hiredate, 'month')
FROM emp;

--�� ��¥ ������ ������ ���ϴ� months_between �Լ�
--����� �ٹ��޼� ���ϱ�
SELECT ename �̸�,sysdate  ����,hiredate �Ի���,
       trunc(months_between(stsdat,hiredate))  �ٹ��޼�
from emp;       

--���� �����ϴ� add_months
-- �Ի��Ͽ� 6���� �߰��ϱ�
SELECT ename, hiredate,add_months(hiredate,6)"�Ի� 6���� ��"
from emp;

--�ش� ������ ���� ����� ��¥�� ��ȯ�ϴ� next_day
select sysdate ����,next_day(sysdate,'������')"���� ������"
from dual;

--�ش� ���� ��������¥�� ��ȯ�ϴ� last_day
select ename �̸�,hiredate �Ի���,last_day(hiredate)
from emp;

--null�� �ٸ������� ��ȭ�ϴ� nvl,
--����� �������ϱ� �μ��� �˻�
select ename, sal, comm,
       sal*12+nvl(comm,0), deptno
from emp
ORDER by deptno;

select ename, sal, comm,
       nvl2(comm,sal*12+comm, sal*12),deptno
from emp
ORDER by deptno;

--������ ���� decode - switch case
-- ������̺��� �μ��� ���ϱ�
SELECT ename, deptno, decode(deptno, 10,'�渮��',
                                     20,'�λ��',
                                     30,'������',
                                     40,'�����') �μ���
from emp;
-- ���ǿ� ���� ���δٸ�ó���� ������ case�� -if else
SELECT ename, deptno, case when deptno = 10 then'�渮��'
                           when deptno = 20 then'�λ��'
                           when deptno = 30 then'������'
                           else '�����' 
                           end �μ���
from emp;