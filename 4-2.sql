-- 3�� ����Ŭ �ֿ� �Լ�
-- dual ���̺�
-- 1�� �� ������� ���
select 24*60
from dual;

SELECT * 
from dual;

-- ���糯¥ ����ϱ�
select sysdate
FROM dual;

--�����Լ� 
-- ���밪 ���ϴ� abs �Լ�
select -10, abs(-10)
FROM dual;

-- �Ҽ��� �Ʒ��� ������ floor�Լ�
select 34.5678, floor(34.5678)
FROM dual;
-- \Ư�� �ڸ������� �߶󳻴� trunc�Լ�
select 34.5678, trunc(34.5678), trunc(34.5678,2), trunc(34.5678,-1)
FROM dual;

-- Ư�� �ڸ������� �ݿø� round�Լ�
select 34.5678, round(34.5678), round(34.5678,2), round(34.5678,-1)
FROM dual;

--�������� ���ϴ� mod�Լ�
select mod(27, 2), mod(27, 5),mod(27, 7)
FROM dual;

--����ó���Լ�
--�� �ҹ��� ��ȯ �Լ�
select 'welcom to Oracle',
         upper('welcom to Oracle'),
         lower('welcom to Oracle'),
         initcap('welcom to Oracle')
FROM dual;

-- ���ڱ��� ���ϴ� �Լ� length
select length('Oracle'), length('����Ŭ')
FROM dual;

select lengthb('Oracle'), lengthb('����Ŭ')
FROM dual;

--�������� �Լ�
--���ڿ� �Ϻθ� �����ϴ� substr �Լ�
select substr('welcom to Oracle',4,3), --���ʿ���
       substr('welcom to Oracle',-4,3) --�����ʿ���
FROM dual;

select substr('����������Ŭ',4,3),  --���ʿ���
       substr('����������Ŭ',-4,3), --�����ʿ���
       substrb('����������Ŭ',4,3), --���ʿ���
       substrb('����������Ŭ',-3,3) --�����ʿ���
FROM dual;

--Ư�������� ��ġ�� ���ϴ� instr�Լ�
select instr('WELCOM TO ORACLE', 'O'),
       instr('WELCOM TO ORACLE', 'O',6,2)
FROM dual;

select  instr('�����ͺ��̽�', '��'),
        instrb('�����ͺ��̽�', '��'),
        instrb('�����ͺ��̽�', '��',7,1)
FROM dual;

--Ư����ȣ�� ä��� iped/rpad�Լ�
select lpad('Oracle',20,'#'), --���� ä���
       rpad('Oracle',20,'#')  --������ ä���
FROM dual;