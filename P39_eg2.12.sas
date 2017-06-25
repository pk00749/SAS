data test.P39_eg2_12;
file print;
do i=1 to 5 by 1;
x=i*i;
put i= x=;
end;
run;
