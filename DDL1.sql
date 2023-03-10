CREATE DATABASE store;
\c store

1.  CREATE TABLE tbl_stock(pk_int_stock_id SERIAL PRIMARY KEY,vchr_name VARCHAR(50), int_Quantity INT,int_price INT);
    select * from tbl_stock;

2.  ALTER TABLE tbl_stock ALTER column int_price TYPE FLOAT;

3.  CREATE TABLE tbl_supplier(pk_int_supplier_id SERIAL PRIMARY KEY, vchr_supplier_name VARCHAR(50));
    \d tbl_supplier;

4.  ALTER TABLE tbl_stock ADD COLUMN fk_int_supplier INT; 
    \d tbl_stock

5.  ALTER TABLE tbl_stock ADD CONSTRAINT fk_supplier FOREIGN KEY (fk_int_supplier)REFERENCES tbl_supplier(pk_int_supplier_id) ON DELETE CASCADE ON UPDATE CASCADE;
    \d tbl_stock

6.  CREATE TABLE tbl_dept(pk_int_dept_id SERIAL PRIMARY KEY,vchr_dept_name VARCHAR(50));    
    \d tbl_dept

7.  CREATE TABLE tbl_classes(pk_int_class_id SERIAL PRIMARY KEY,vchr_class_name VARCHAR(50),fk_int_dept_id INT,FOREIGN KEY(fk_int_dept_id)REFERENCES tbl_dept(pk_int_dept_id)ON DELETE CASCADE ON UPDATE CASCADE); 
    \d tbl_classes

8.  CREATE TABLE tbl_enrollment(pk_int_enrollment_id SERIAL PRIMARY KEY,int_count INT,fk_int_class_id INT,FOREIGN KEY(fk_int_class_id) REFERENCES tbl_classes(pk_int_class_id) ON DELETE CASCADE ON UPDATE CASCADE);
    \d tbl_enrollment

9.  ALTER TABLE tbl_classes ADD CONSTRAINT class_unique UNIQUE (vchr_class_name);      
    \d tbl_classes

10.  ALTER TABLE tbl_dept ADD  vchr_dept_description VARCHAR(100);
     \d tbl_dept


11.   INSERT INTO tbl_supplier values(1,'Logitech');     
      INSERT INTO tbl_supplier values(2,'Samsung');
      INSERT INTO tbl_supplier values(3,'Iball');
      INSERT INTO tbl_supplier values(4,'LG');
      INSERT INTO tbl_supplier values(5,'Creative');

      select * from tbl_supplier;