data test.student1 test.student2;
set sashelp.class;
if sex='ÄĞ' then output test.student1;
if sex='Å®' then output test.student2;
run;
proc print data=test.student1;
run;
proc print data=test.student2;
run;
