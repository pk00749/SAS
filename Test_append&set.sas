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
/*若不用force不能合并，最终的数据集与a相同。若用force，相同的变量y合并，由于b中的x与a中的x数据类型不同，以a的x数据类型为准，b的x的值在最终的数据集
以缺失值代替*/
proc append base=test.a data=test.b force;
run; 
proc print data=test.a;
run;
data test.c;
set test.a test.b;
run;
/*由于x在a和b中数据类型不同，合并出错*/
proc print data=test.c;
run;
