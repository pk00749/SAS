data test.P67_eg3_4;
input x y;
cards;
10 12
11 14
13 16
;
run;
data test.P67_eg3_4_2;
set test.P67_eg3_4;
z=x*y;
run;
proc append base=test.P67_eg3_4 data=test.P67_eg3_4_2;
run;
proc print data=test.P67_eg3_4;/*由于主数据集决定，主数据集没有z，所以最终z没有被加入最终的数据集*/
run;
data test.P67_eg3_4_3;
set test.P67_eg3_4 test.P67_eg3_4_2;
run;
proc print data=test.P67_eg3_4_3; /*最终z能出现在最终的数据集，缺失的变量已缺失值表示*/
run;
proc print data=test.P67_eg3_4_2;
run;
*将多个数据集纵向合并，增加数据集的观测对象，原始数据集间具有相同或相似的属性（变量名称及其属性）。当两个原始数据集间具有相同属性时，append的效率高于set
*Append 就是简单的将追加数据集附在主数据集末尾，用于两个数据集间的合并，合并后数据集属性由主数据集属性决定。可以使用append语句或者append 过程。Append较为重要的选项为force，若不加force将不能顺利合并;
data master;
do i = 1 to 5;
    j = 10;
    output;
 end;
data add;
do i = 15 to 20;
    j = 200;
    output;
end;
proc append base=master  data=add;
run;
proc print data=master;
run;
