data test.input_external;
infile 'G:\Program\Projects\SAS\external.txt';
input no name$ city$;		
put no= name= city=;
run;
