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
/*freqָ������x��˵��y��ĳ���۲�����������x����ֵ������
��weight����ָ��y��ĳ���۲�ֵ��Ȩ��ռ��x/sum(x)��
����ͬʱʹ��*/

/*proc means data=b;
   var y;
   weight x;
run;
proc means data=b;
   var y;
   freq x;
   weight x;
run;*/
