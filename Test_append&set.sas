data test.a;
input x y;
cards;
10 12
11 14
13 16
;
run;
data test.b;
input x$ y;
cards;
a 12
b 14
c 16
;
run;
/*������force���ܺϲ������յ����ݼ���a��ͬ������force����ͬ�ı���y�ϲ�������b�е�x��a�е�x�������Ͳ�ͬ����a��x��������Ϊ׼��b��x��ֵ�����յ����ݼ�
��ȱʧֵ����*/
proc append base=test.a data=test.b force;
run; 
proc print data=test.a;
run;
data test.c;
set test.a test.b;
run;
/*����x��a��b���������Ͳ�ͬ���ϲ�����*/
proc print data=test.c;
run;
