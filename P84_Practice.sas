/*DBMS Identifier��REPLACE: SAS��ͨ���ļ�����չ���������ļ�����
���� .csv��DBMS=CSV���� .txt��DBMS=TAB��
���ļ�����CSV����TXT�ļ�������Ҫ��IMPORT���������DBMS=optionѡ��
���⣬Ϊ��ֹ������OUT=data-setͬ�����ļ�������REPLACE������

options of PROC IMPORT
2 Datarows=n  *�ӵ�n�п�ʼ�������ݣ�Ĭ��ֵ��1
3 Delimiters='delimiter'  *�����ڷָ�������comma��tab��space�����Σ�Ĭ��space
4 Getnames=NO  *����SAS��Ҫ��input�ļ��еĵ�һ�ж����������������ΪVAR1��VAR2 Ĭ��ֵΪYES
5 GUESSINROWS=N  *����ǰn���������������ͣ�Ĭ��Ϊ20��ע�Ⲣ���Ƿ���PROC IMPROT���棬������ȡһ��
*/

proc import datafile="G:\Program\Projects\SAS\Session_3.csv" out=myfile dbms=csv replace;
run;
data fix;
input id name$ price number cost;
cards;
10321 . 85 . .
17882 . . 385 .
;
run;
data myfile;
modify myfile fix;
by id;
run;
proc sort data=myfile;
by id;
run;
proc transpose data=myfile out=result;
var price number cost;
id id;
run;
proc print data=result;
run;
