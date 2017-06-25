title 'P47_eg 2.26'; 
footnote 'End';	/*上一次的修改影响到这一次*/
proc means data=sashelp.class;
class sex;
var height;
run;
