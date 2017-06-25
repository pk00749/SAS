data test.P58_Practice;
infile 'G:\Program\Projects\SAS\P58_Practice.txt';
file 'G:\Program\Projects\SAS\P58_Practice_output.txt';
label name='����' year='����' gender='�Ա�' height='���' weight='����';
input name$ year gender$ height weight;	/*P58.1 Input to table*/
put name= year= gender= height= weight=; /*P58.2 Output to external file */
proc print data=test.P58_Practice; /*P58.2 Print out data to result viewer*/
run;
data test.P58_Practice_2; /*P58.3 Print out student whose height exceed 150*/
set test.P58_Practice;
where height>150;
run;
title '��ߴ���150cm'; /*P58.4 Print out with new title and footer*/
footnote 'End';
proc print data=test.P58_Practice_2; /*P58.4*/
run;
proc means data=test.P58_Practice_2; /*P58.5 Calculate mean of height and weight among all student*/
var height weight;
run;
