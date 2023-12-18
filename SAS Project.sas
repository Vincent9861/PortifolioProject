libname lin "C:\Users\PhotonUser\My Files\Google Drive\My Drive\Project";
data lin.employee_donations;
	infile datalines truncover;
	input Emp_ID 7-12
		  Qtr1_Donation 28-29
		  Qtr2_Donation 46-47
		  Qtr3_Donation 66-67
		  Qtr4_Donation 84-85
		  Paid_By $ 90-109;
datalines;
      120265                                                                       25    Cash or Check
      120267               15                15                  15                15    Payroll Deduction
      120269               20                20                  20                20    Payroll Deduction
      120270               20                10                   5                      Cash or Check
      120271               20                20                  20                20    Payroll Deduction
      120272               10                10                  10                10    Payroll Deduction
      120275               15                15                  15                15    Credit Card
      120660               25                25                  25                25    Credit Card
      120662               10                                     5                 5    Cash or Check
      120663                                                      5                      Cash or Check
      120668               10                10                  10                10    Credit Card
      120669               15                15                  15                15    Payroll Deduction
      120671               20                20                  20                20    Credit Card
      120677               25                25                  25                25    Credit Card
      120678               10                10                                          Payroll Deduction
      120679                                 20                   5                15    Cash or Check
      120680               15                15                  15                15    Credit Card
      120681               10                10                   5                15    Cash or Check
      120684                5                 5                   5                 5    Payroll Deduction
      120686               15                15                  15                15    Payroll Deduction
      120689               15                15                  15                15    Credit Card
      120713               15                15                  15                15    Payroll Deduction
      120715               10                10                  10                10    Payroll Deduction
      120721                5                 5                   5                 5    Payroll Deduction
      120726               10                10                  10                10    Payroll Deduction
      120734                                                     15                10    Cash or Check
      120736               25                                                      20    Cash or Check
      120740               15                15                  15                15    Credit Card
      120742                                                     10                10    Cash or Check
      120745               15                15                  15                15    Payroll Deduction
      120746               20                20                  20                20    Payroll Deduction
      120747               20                20                  20                20    Credit Card
      120748               20                20                  20                20    Payroll Deduction
      120752               10                                                            Payroll Deduction
      120753               25                25                  25                25    Payroll Deduction
      120754               10                10                  10                10    Payroll Deduction
      120757                                                     15                 5    Cash or Check
      120759               15                20                   5                      Cash or Check
      120760                                 15                  20                      Cash or Check
      120761               10                10                  10                10    Payroll Deduction
      120762                                                      5                 5    Cash or Check
      120764               15                15                  15                15    Payroll Deduction
      120766               25                25                  25                25    Payroll Deduction
      120767               15                15                  15                15    Payroll Deduction
      120768               20                20                  20                      Payroll Deduction
      120771               20                20                  20                20    Credit Card
      120773               10                10                  10                10    Payroll Deduction
      120777                5                15                   5                15    Cash or Check
      120778               15                15                  15                15    Payroll Deduction
      120783               20                20                  20                20    Payroll Deduction
      120789                5                                                            Credit Card
      120790               20                20                  20                20    Credit Card
      120791               30                30                  30                30    Payroll Deduction
      120792               20                20                  20                20    Payroll Deduction
      120793               15                15                  15                15    Credit Card
      120794                                                     20                20    Payroll Deduction
      120799                5                 5                   5                 5    Credit Card
      120801               20                20                  20                20    Payroll Deduction
      120807               20                20                  20                20    Credit Card
      120808                                                     10                      Cash or Check
      120813               20                20                  20                      Credit Card
      120814               25                25                  25                25    Payroll Deduction
      120815               15                15                  15                15    Payroll Deduction
      120994                5                 5                  10                10    Cash or Check
      120995               15                15                  15                15    Payroll Deduction
      120996               15                15                  15                15    Credit Card
      120999                5                 5                   5                 5    Credit Card
      121000               20                20                  20                20    Credit Card
      121002               10                10                  10                10    Payroll Deduction
      121008               10                10                  10                10    Payroll Deduction
      121009               15                15                  15                15    Payroll Deduction
      121010               10                10                  10                10    Credit Card
      121012                                                      5                 5    Cash or Check
      121013               10                 5                                     5    Cash or Check
      121014               15                15                  15                15    Payroll Deduction
      121018               10                                                            Credit Card
      121022               15                15                  15                15    Payroll Deduction
      121025               10                10                  10                10    Payroll Deduction
      121030               10                10                  10                10    Payroll Deduction
      121031               10                10                  10                10    Payroll Deduction
      121033               15                15                  15                15    Payroll Deduction
      121036                                                                       10    Credit Card
      121037               10                10                  10                10    Payroll Deduction
      121039               10                10                  10                10    Payroll Deduction
      121040               10                10                  10                10    Credit Card
      121044               10                10                  10                10    Payroll Deduction
      121053                5                                     5                      Cash or Check
      121054               15                15                  15                15    Credit Card
      121056                                 10                  10                10    Payroll Deduction
      121058               10                10                  10                10    Credit Card
      121061               10                10                  10                10    Payroll Deduction
      121062               15                15                  15                15    Payroll Deduction
      121063               15                15                  15                15    Payroll Deduction
      121065               10                10                  10                10    Payroll Deduction
      121069               10                10                  10                10    Credit Card
      121074               10                10                  10                10    Payroll Deduction
      121077               15                15                  15                15    Credit Card
      121078               15                15                  15                15    Credit Card
      121079               10                10                  10                10    Payroll Deduction
      121083               15                15                  15                15    Payroll Deduction
      121086                                 10                  10                      Cash or Check
      121089               15                15                  15                15    Payroll Deduction
      121093                5                                                            Cash or Check
      121097               10                10                  10                10    Credit Card
      121100                5                 5                   5                 5    Payroll Deduction
      121101                5                                    10                 5    Cash or Check
      121102                5                 5                   5                 5    Credit Card
      121103               10                10                  10                10    Payroll Deduction
      121105               15                15                  15                15    Payroll Deduction
      121125               10                                                            Credit Card
      121126               10                                                            Payroll Deduction
      121128               10                                                            Credit Card
      121129               10                                                            Cash or Check
      121131               10                                                            Payroll Deduction
      121132               10                                                            Credit Card
      121133                5                                                            Payroll Deduction
      121134                5                                                            Cash or Check
      121136                5                 5                   5                 5    Cash or Check
      121138               10                10                  10                10    Payroll Deduction
      121140               10                10                  10                10    Credit Card
      121142               35                35                  35                35    Payroll Deduction
      121143               35                35                  35                35    Payroll Deduction
      121145               35                35                  35                35    Payroll Deduction
      121147               10                10                  10                10    Payroll Deduction
;
Proc Print data=lin.employee_donations;title 'Employee_Donations';
run;


libname lin "C:\Users\PhotonUser\My Files\Google Drive\My Drive\Project";
data lin.employee_addresses;
infile 'C:\Users\PhotonUser\My Files\Google Drive\My Drive\Project\employee_addresses.txt' truncover firstobs=2;
input Employee_ID 7-12
	  Employee_Name $ 18-48
	  Street_ID 49-58
	  Street_Number 63-76
	  Street_Name $ 83-116
	  City $ 117-131
	  State $ 132-136
	  Country $ 140-143;
proc print data=lin.employee_addresses;title 'Employee_Addresses';
run;

libname lin "C:\Users\PhotonUser\My Files\Google Drive\My Drive\Project";
data lin.employee_payrolls;
infile 'C:\Users\PhotonUser\My Files\Google Drive\My Drive\Project\employeepayroll.csv' dsd missover delimiter=',' firstobs=2;
input Employee_ID Employee_Gender :$2. Salary Birth_Date :anydtdte. Employee_Hire_Date :anydtdte. Employee_Term_Date :anydtdte. 
Martial_Status :$2. Dependents;
proc print data=lin.employee_payrolls;title 'Employee_Payrolls';
run;

libname lin "C:\Users\PhotonUser\My Files\Google Drive\My Drive\Project";
data employee_donations;
set lin.employee_donations(rename=(Emp_ID=Employee_ID));
proc sort; by Employee_ID;
run;
data employee_addresses;
set lin.employee_addresses;
proc sort; by Employee_ID;
run;
data employee_payrolls;
set lin.employee_payrolls;
proc sort; by Employee_ID;
run;
data lin.merge_all_employees;
merge employee_donations(in=d) employee_addresses(in=a) employee_payrolls(in=p);
by Employee_ID;
if d and a and p;
proc print data=lin.merge_all_employees;title 'Merged_All_Employees';
run;

libname lin "C:\Users\PhotonUser\My Files\Google Drive\My Drive\Project";
data lin.drop_all_streets;
set lin.merge_all_employees(drop = Street_ID Street_Number Street_Name);
proc print data = lin.drop_all_streets;title 'drop_all_streets';
run;

libname lin "C:\Users\PhotonUser\My Files\Google Drive\My Drive\Project";
data lin.add_total_donations;
set lin.merge_all_employees;
Total_Donations = Qtr1_Donation + Qtr2_Donation + Qtr3_Donation + Qtr4_Donation;
proc print data = lin.add_total_donations;title 'ADD_Total_Donations';
run;


libname lin "C:\Users\PhotonUser\My Files\Google Drive\My Drive\Project";
data lin.only_salary_birthdate(Keep= Salary Birth_Date);
set lin.merge_all_employees;
format Salary dollar11.2;
proc print data=lin.only_salary_birthdate;title 'Only Salary & Birth Date';
run;

libname lin "C:\Users\PhotonUser\My Files\Google Drive\My Drive\Project";
data lin.frequency_donations;
set lin.add_total_donations;
proc freq data=lin.frequency_donations;Tables Total_Donations;title 'Frequency of Donations';
run;

libname lin "C:\Users\PhotonUser\My Files\Google Drive\My Drive\Project";
/*The data represents the distribution and percentages of martial statuses among 53 female and 71 males in the company, male has more single than women*/
data lin.cross_frequency;
set lin.merge_all_employees;
proc freq data=lin.cross_frequency;Tables Employee_Gender*Martial_Status;title 'Cross Frequency of Gender & MartialStatus';
run;

libname lin "C:\Users\PhotonUser\My Files\Google Drive\My Drive\Project";
/*Steiber Reginald, Favaron Louis, Lansberry, Dennis, who Donates the Most of 140 in total*/
data lin.donates_most_money;
set lin.add_total_donations;
proc sort;by Descending Total_Donations;
proc print data = lin.donates_most_money;title 'Donates_Most_Money';
run;

libname lin "C:\Users\PhotonUser\My Files\Google Drive\My Drive\Project";
/*Tucker Berether has the highest percentage of Donation on salary of 0.224% */
data lin.donation_percentage;
set lin.add_total_donations;
Donation_of_Salary_Percentage = (Total_Donations/Salary)*100;
proc sort;by Descending Donation_of_Salary_Percentage;
proc print data = lin.donation_percentage;title 'Donation_of_Salary_Percentag';
run;


libname lin "C:\Users\PhotonUser\My Files\Google Drive\My Drive\Project";
/*Magolan Julienne is the oldest person of 03/01/1944*/
data lin.oldest_person;
set lin.merge_all_employees;
format Birth_date ddmmyy10.; 
proc sort; by Birth_Date;
proc print data = lin.oldest_person;title 'Oldest_Person';
run;

libname lin "C:\Users\PhotonUser\My Files\Google Drive\My Drive\Project";
data lin.credit_card lin.cash_check lin.payroll_deduction;
set lin.merge_all_employees;
if Paid_By = 'Credit Card' then output lin.credit_card;
else if Paid_By = 'Cash or Check' then output lin.cash_check;
else if Paid_By = 'Payroll Deduction' then output lin.payroll_deduction;
proc print data = lin.credit_card;title 'Credit_Card';
proc print data = lin.cash_check;title 'Cash or Check';
proc print data = lin.payroll_deduction; title 'Payroll Deduction';
run;

libname lin "C:\Users\PhotonUser\My Files\Google Drive\My Drive\Project";
/*Those are the data from those who paid by cash or check*/
data lin.cash_check;
set lin.cash_check;
proc print data = lin.cash_check;title 'Cash or Check';
run;

libname lin "C:\Users\PhotonUser\My Files\Google Drive\My Drive\Project";
data lin.three_dependents;
set lin.merge_all_employees;
if dependents = '3';
proc print label data=lin.three_dependents;
title 'Three Dependents';
label Employee_Gender = 'Gender'
	  State = 'STATE'
	  Street_ID = 'StreetID';
	  footnote 'Date for employee who have more than 3 dependents';
	  title3 'data';
run;






