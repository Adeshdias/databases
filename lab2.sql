1.	/*DDL commands: CREATE, DROP, RENAME, ALTER
  	       DML commands: UPDATE, INSERT, MERGE, DELETE */

  	        2.	Create table customers(
                                    	  id int UNIQUE not null,
                                      PRIMARY KEY (id),
                                full_name varchar(50) not null ,
                                      timestamp timestamp not null,
                                      delivery_address text not null
                                  )
Create table orders(
                             code int UNIQUE not null,
                             PRIMARY KEY (code),
                             customer_id int,
                             FOREIGN KEY (customer_id) REFERENCES customers(id),
                             total_sum double precision not null ,
                             CHECK ( total_sum > 0 ),
                             is_paid boolean not null
                                                   )
CREATE table products(
                     id varchar unique not null,
                     PRIMARY KEY (id),
                     name varchar unique not null,
                     description text,
                     price double precision not null,
                     CHECK ( price > 0 )
                 )
CREATE table order_items (
                     order_code int not null unique ,
                     FOREIGN KEY (order_code) REFERENCES orders(code),
                     product_id varchar unique not null,
                     FOREIGN KEY (product_id) REFERENCES products(id),
                     quantity int not null ,
                     check ( quantity > 0 )
                 )

3.	CREATE table students(
                     full_name varchar not null,
                     age int not null,
                     birth_date date not null,
                     gender char(1) not null,
                     avg_grade float not null,
                     info_abt_you varchar,
                     dormitory boolean not null ,
                     add_info varchar,
	      Primary key (full_name)

                 )

CREATE table instructors(
                     full_name varchar not null,
                     primary key (full_name),
                     lang varchar,
                     work_exp float4,
                     remote boolean not null

                 )

CREATE table lesson_part(
                     lesson_title varchar not null,
                     teach_instructor varchar,
                     FOREIGN KEY (teach_instructor) REFERENCES instructors(full_name),
                     studying_students varchar,
                     room_number int not null,
	foreign key (studying_students) references
                         students(full_name)

                 )

 4.	/* Insert into Customers (id, full_name, timestamp, delivery_address)
VALUES (125, 13:23, Tole bi str);

UPDATE orders
SET customer_id = 1, is_paid = 'yes',
WHERE total_sum > 100;

DELETE FROM Customers WHERE full_name ='Adesh Dias';
*/