libname bs851h9 "C:\Users\Bobie\Desktop\SPH Fall 2023\BS 851\Class9";


proc print data=bs851h9.dig_data2023v2 ;
run;



*Question a;
proc lifetest data=bs851h9.dig_data2023v2 plots=survival;
time DWHFDAYS*DWHF(0);
strata TRTMT;
run;



proc print data=bs851h9.dig_data2023v2;
run;


*Question e;
proc lifetest data=bs851h9.dig_data2023v2 plots=(loglogs);
time DWHFDAYS*DWHF(0);
strata TRTMT;
run;

*Question f;
proc lifetest data=bs851h9.dig_data2023v2;
time DEATHDAY*DEATH(0);
strata TRTMT;
run;

*Question g;
proc phreg data=bs851h9.dig_data2023v2;
class TRTMT (param=ref ref='0');
model DWHFDAYS*DWHF(0) =TRTMT /risklimits;
run;

proc phreg data=bs851h9.dig_data2023v2;
class TRTMT (param=ref ref='0');
model DEATHDAY*DEATH(0) =TRTMT /risklimits;
run;
