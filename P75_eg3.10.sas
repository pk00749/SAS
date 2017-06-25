data test;
input number math chinese english;
cards;
1001 88 78 67
1002 98 83 75
1003 87 75 78
;
run;
proc transpose data=test out=result name=course;
var math chinese english;
*id number; *ÖÆ¶¨numberÎªcolumn name;
run;
proc print data=result;
run;
