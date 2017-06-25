data test2_24;
input number grade;
cards;
1001 95
1002 89
1003 75
;
run;
proc print data=test2_24;
id grade; *指定最左的基准列，类似数据库的primary key;
run;
