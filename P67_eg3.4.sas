data test.P67_eg3_4;
input x y;
cards;
10 12
11 14
13 16
;
run;
data test.P67_eg3_4;
set test.P67_eg3_4;
z=x*y;
run;
proc print data=test.P67_eg3_4;
run;
