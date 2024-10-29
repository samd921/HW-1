-- 1

SELECT DISTINCT first_name, surname FROM restStaff T1 INNER JOIN restBill T2 ON T1.staff_no = T2.waiter_no WHERE T2.cust_name = ('Tanya Singh');


-- 2

SELECT room_date as 'Date' FROM restRoom_management T1 INNER JOIN restStaff T2 ON T1.headwaiter = T2.staff_no WHERE T2.first_name = ('Charles') AND T2.surname = ('Watson') AND T1.room_name = ('Green') AND room_date LIKE ('%1602%');


-- 3

SELECT first_name,surname FROM restStaff WHERE headwaiter = ('005');

-- 4

SELECT T1.cust_name as customer_name,T1.bill_total as amount_spent,T2.first_name,T2.surname as surname FROM restBill as T1 JOIN restStaff as T2 ON T1.waiter_no = T2.staff_no ORDER BY T1.bill_total DESC;


-- 5

SELECT DISTINCT T1.first_name,T1.surname FROM restStaff as T1 JOIN restBill as T2 ON T1.staff_no = T2.waiter_no WHERE T2.table_no IN (SELECT T2.table_no FROM restBill as T2 WHERE T2.bill_no IN (00014, 00017))


-- 6

SELECT T1.first_name,T1.surname FROM restStaff T1 INNER JOIN restRoom_management T2 ON T1.staff_no = T2.headwaiter WHERE T2.room_name = ('Blue') AND room_date LIKE ('%160312%');
