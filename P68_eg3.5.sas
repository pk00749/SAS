data test.student1 test.student2;
set sashelp.class;
if sex='��' then output test.student1;
if sex='Ů' then output test.student2;
run;
proc print data=test.student1;
run;
proc print data=test.student2;
run;
