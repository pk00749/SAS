data test2_24;
input number grade;
cards;
1001 95
1002 89
1003 75
;
run;
proc print data=test2_24;
id grade; *ָ������Ļ�׼�У��������ݿ��primary key;
run;
