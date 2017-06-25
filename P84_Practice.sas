/*DBMS Identifier和REPLACE: SAS会通过文件的扩展名来决定文件类型
例如 .csv（DBMS=CSV）和 .txt（DBMS=TAB）
若文件不是CSV或者TXT文件，则需要在IMPORT语句后面加上DBMS=option选项
另外，为防止已有与OUT=data-set同名的文件，加上REPLACE来覆盖

options of PROC IMPORT
2 Datarows=n  *从第n行开始读入数据，默认值是1
3 Delimiters='delimiter'  *适用于分隔符不是comma、tab、space的情形，默认space
4 Getnames=NO  *命令SAS不要从input文件中的第一行读入变量名，变量名为VAR1、VAR2 默认值为YES
5 GUESSINROWS=N  *利用前n行来决定变量类型，默认为20；注意并不是放在PROC IMPROT后面，而是另取一行
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
