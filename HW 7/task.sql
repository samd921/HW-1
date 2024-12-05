-- 1

CREATE VIEW samsBills AS SELECT first_name, surname, bill_date, cust_name, bill_total FROM restBill, restStaff WHERE staff_no = 004;
SELECT * FROM samsBills;


-- 2

CREATE VIEW samsBills AS SELECT first_name, surname, bill_date, cust_name, bill_total FROM restBill, restStaff WHERE staff_no = 004 AND bill_total > 400.00;
SELECT * FROM samsBills;


-- 3

CREATE VIEW roomTotals AS SELECT T1.room_name,SUM(T2.bill_total) AS total_sum FROM restBill T2 JOIN restRest_table T1 ON T2.table_no = T1.table_no GROUP BY T1.room_name;
SELECT * FROM roomTotals;


-- 4

CREATE VIEW teamTotals AS SELECT CONCAT(T1.first_name,'  ',T1.surname) AS headwaiter_name, SUM(T2.bill_total) AS total_sum FROM  restBill T2 JOIN restStaff T3 ON T2.waiter_no = T3.staff_no LEFT JOIN restStaff T1 ON T3.headwaiter = T1.staff_no GROUP BY headwaiter_name;
SELECT * FROM teamTotals;

