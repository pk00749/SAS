data test.P67_eg3_4;
input x y;
cards;
10 12
11 14
13 16
;
run;
data test.P67_eg3_4_2;
set test.P67_eg3_4;
z=x*y;
run;
proc append base=test.P67_eg3_4 data=test.P67_eg3_4_2;
run;
proc print data=test.P67_eg3_4;/*���������ݼ������������ݼ�û��z����������zû�б��������յ����ݼ�*/
run;
data test.P67_eg3_4_3;
set test.P67_eg3_4 test.P67_eg3_4_2;
run;
proc print data=test.P67_eg3_4_3; /*����z�ܳ��������յ����ݼ���ȱʧ�ı�����ȱʧֵ��ʾ*/
run;
proc print data=test.P67_eg3_4_2;
run;
*��������ݼ�����ϲ����������ݼ��Ĺ۲����ԭʼ���ݼ��������ͬ�����Ƶ����ԣ��������Ƽ������ԣ���������ԭʼ���ݼ��������ͬ����ʱ��append��Ч�ʸ���set
*Append ���Ǽ򵥵Ľ�׷�����ݼ����������ݼ�ĩβ�������������ݼ���ĺϲ����ϲ������ݼ������������ݼ����Ծ���������ʹ��append������append ���̡�Append��Ϊ��Ҫ��ѡ��Ϊforce��������force������˳���ϲ�;
data master;
do i = 1 to 5;
    j = 10;
    output;
 end;
data add;
do i = 15 to 20;
    j = 200;
    output;
end;
proc append base=master  data=add;
run;
proc print data=master;
run;
