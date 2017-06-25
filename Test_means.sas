data b ;
input x y;
cards;
1 3
1 4
2 5
2 7
4 67
4 66
;
run;
/*proc means data=b;
   var y;
run;*/
proc means data=b;
   var y;
   *freq x;
   weight x;
output out=result;
run;
/*freq指定变量x，说明y的某个观察在样本里有x（的值）个，
而weight仅仅指定y的某个观察值的权重占了x/sum(x)。
可以同时使用*/

/*proc means data=b;
   var y;
   weight x;
run;
proc means data=b;
   var y;
   freq x;
   weight x;
run;*/
