1.  INSERT INTO tbl_stock VALUES (1,'Mouse','10','500','1');  
    INSERT INTO tbl_stock VALUES (2,'Keyboard','5','450','3');
    INSERT INTO tbl_stock VALUES (3,'Modem','10','1200','2');
    INSERT INTO tbl_stock VALUES (4,'Memory','100','1500','5');
    INSERT INTO tbl_stock VALUES (5,'Headphone','50','750','4');
    INSERT INTO tbl_stock VALUES (6,'Memory','2','3500','4');

    select * from tbl_stock; 


2.  UPDATE tbl_stock SET int_price = 501.5 WHERE pk_int_stock_id = 1; 
    UPDATE tbl_stock SET int_price = 451.5 WHERE pk_int_stock_id = 2;
    UPDATE tbl_stock SET int_price = 1201.5 WHERE pk_int_stock_id = 3; 
    UPDATE tbl_stock SET int_price = 1501.5 WHERE pk_int_stock_id = 4; 
    UPDATE tbl_stock SET int_price = 751.5 WHERE pk_int_stock_id = 5; 
    UPDATE tbl_stock SET int_price = 3501.5 WHERE pk_int_stock_id = 6; 

     select * from tbl_stock;  

3.  SELECT * FROM tbl_stock WHERE int_price > 1000;

4.  SELECT * FROM tbl_stock ORDER BY vchr_name ASC;

5.  SELECT * FROM tbl_stock ORDER BY vchr_name ASC limit 3;

6.  SELECT * FROM tbl_stock ORDER BY vchr_name desc limit 3;

7.  SELECT *,(int_Quantity*int_price) AS extended_price FROM tbl_stock;

8.  DELETE FROM tbl_stock WHERE fk_int_supplier = 5;

    SELECT * FROM tbl_stock;

9.  INSERT INTO tbl_dept VALUES(1,'Computer Science','CS');  
    INSERT INTO tbl_dept VALUES(2,'Electronics','EC');
    INSERT INTO tbl_dept VALUES(3,'Commerce','CC');  
    INSERT INTO tbl_dept VALUES(4,'Arts','AR'); 

    SELECT * FROM tbl_dept;  
   
   
   
     
   
   
   
   
   
   
