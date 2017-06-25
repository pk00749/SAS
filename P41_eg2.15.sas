data test.P41_eg2_15;

length city$ 10;
label city='城市' zip='邮政编码';
input city$ zip;
/*input city$ 1-5 zip 12-17;限制到5位*/
cards;
Birmingham 35201
Montgmery  36101
Huntsville 35801
Tuscaloosa 35401
Mobile     36601
;

run;
