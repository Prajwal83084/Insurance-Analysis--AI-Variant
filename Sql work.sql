use projectwork2;
select * from brokerageforsql;
select * from OPPORTUNITYforsql;
select * from individualforsql;
select * from feeforsql;
select * from meetingsforsql;
select * from invoiceforsql;

#new , renewal,cross sell for brokerage
select `income_class`,count(policy_number) No_of_policies,round(sum((Amount)),3)total_amount from brokerageforsql group by 1 order by 2 desc ;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#new , renewal,cross sell for bugdet ;
select `Employee Name`,sum( `New Budget`)Total_Newbuget,sum(`Cross sell bugdet`)Total_Crosssell_bugdet,sum(`Renewal Budget`)Total_Renewal_Budget from individualforsql group by 1 order by 3 desc ;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#new , renewal,cross sell for Fee
Select income_class,`Account Executive`,solution_group,sum(Amount)Total_amount from feeforsql group by 1,2,3 order by 4 desc;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#new , renewal,cross sell for invoice
select income_class,solution_group,`Account Executive`,count(policy_number)No_of_policies,sum(Amount)total_amount from invoiceforsql group by 1,2,3 order by 4 desc ;
select income_class,count(policy_number)No_of_policies,sum(Amount)total_amount from invoiceforsql group by 1 order by 2 desc ;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#KIP's
#Yearly Meeting Count
select year(meeting_date) year,count(meeting_date)Count_of_the_meetings from meetingsforsql group by 1 order by 2 desc;
select `Account Executive`,count(meeting_date)Count_of_the_meetings from meetingsforsql group by 1 order by 2 desc;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Total Revenue
select `stage`,sum(revenue_amount)Total_revenue from OPPORTUNITYforsql group by 1 order by 2 desc;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Total Count of invoice by account excutive
select `Account Executive`,count(invoice_number)No_Of_Invoice from invoiceforsql group by 1 order by 2 desc ;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# active & inactive loans
select policy_status,count(policy_number)No_of_policies from brokerageforsql group by 1 ;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#total Amount regarding brokerage   data
select solution_group,product_group,round(sum((Amount)),2)Total_Amount from brokerageforsql group by 1,2 order by 3 desc;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Total Premium and revenue Amount from OPPORTUNITY data
select specialty,product_sub_group,sum(revenue_amount)Revenue,sum(premium_amount)premium_amount from OPPORTUNITYforsql group by 1,2 ;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#total Amount regarding  fee  data
select `Account Executive`,solution_group,sum( Amount)Total_Amount from feeforsql group by 1,2 order by 3 desc;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------






