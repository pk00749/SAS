title 'P47_eg 2.26'; 
footnote 'End';	/*��һ�ε��޸�Ӱ�쵽��һ��*/
proc means data=sashelp.class;
class sex;
var height;
run;
