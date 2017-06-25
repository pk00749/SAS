PROC IMPORT OUT= WORK.MY 
            DATAFILE= "G:\Program\Projects\SAS\Session_3.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
