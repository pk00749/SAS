title 'P47_eg 2.25'; /*��һ�ε��޸�Ӱ�쵽��һ��*/
footnote 'End';
proc sort data=sashelp.class out=test.P47_eg2_25;
by sex;
run;
proc print data=test.P47_eg2_25;
by sex;
run;
