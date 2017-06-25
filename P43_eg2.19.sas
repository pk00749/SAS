proc means data=sashelp.shoes;
var sales;
output out=test.resultmean n=n_result min=min_result max=max_result mean=mean_result;
run;
