-- 1

SELECT DISTINCT T1.cust_name FROM restBill T1 JOIN restStaff T2 ON T1.waiter_no = T2.staff_no WHERE T1.bill_total > 450.00 AND T2.headwaiter = 010;



-- 2

SELECT T1.first_name, T1.surname FROM restBill T2 JOIN restStaff T3 ON T2.waiter_no = T3.staff_no JOIN restStaff T1 ON T3.headwaiter = T1.staff_no WHERE T2.cust_name = 'Nerida Smith' AND T2.bill_date = 160111;



-- 3

SELECT DISTINCT cust_name FROM restBill WHERE bill_total = (SELECT MIN(bill_total) FROM restBill);


-- 4

SELECT DISTINCT T1.first_name,T1.surname FROM restStaff T1 WHERE NOT EXISTS (SELECT 1 FROM restBill T2 WHERE T2.waiter_no = T1.staff_no);


-- 5

SELECT T1.cust_name, T2.first_name,T2.surname,T3.room_name FROM restBill T1 JOIN restRest_table T3 ON T1.table_no = T3.table_no JOIN restRoom_management T4 ON T4.room_name = T3.room_name  AND T4.room_date = T1.bill_date JOIN restStaff T5 ON T1.waiter_no = T5.staff_no JOIN restStaff T2 ON T4.headwaiter = T2.staff_no WHERE T1.bill_total = (SELECT MAX(bill_total) FROM restBill);