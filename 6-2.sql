-- 1. �����ȣ�� Ȧ���� ����˻�
SELECT *
from emp
WHERE mod(empno,2) =1;

-- 2. ����� �Ի��Ͽ� ���� �⵵ �� ���� ���������� ���
SELECT hiredate,to_char(hihiredate,'yyyy/mm/dd')�Ի���,
                substr(to_char(hiredate,'yyyy/mm/dd'),1,4)�⵵,
                substr(to_char(hiredate,'yyyy/mm/dd'),6,2)��,
                substr(to_char(hiredate,'yyyy/mm/dd'),9,2)��
from emp;

-- 3. �� ������� ������� �ٹ��ϼ� 
SELECT  round(sysdate - hiredate)�ٹ��ϼ�
from emp;

-- 4. ���ӻ���̾��� ��� �˻�,null ���� ceo�� ���
SELECT empno, ename, nvl(to_char(mgr,'9999'),'ceo')���ӻ��
from emp
WHERE mgr is null;

--5. dual

-- 6. ���ó� �� �������� 100�� �� ��¥ �ͫr
SELECT (sysdate +100)��
from dual;

-- 7.������ ���� ���� ������ �����
SELECT last_day(sysdate)
FROM dual;

-- 8.mvl(comm,sal+comm,sal)�� �ǹ�
-- comm ���� ������� �޿� ���������� �»��ϰ�
-- comm ���� ������� �޿��� ���

--9. case

-- 10.���� ������ ��¥ ���� �ڵ����� �ԷµǴ� ��ɾ��
-- sysdate