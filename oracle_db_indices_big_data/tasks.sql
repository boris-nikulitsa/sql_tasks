-- cost 4474
select * from cust_order where cust_id > 100 and cust_id < 350;
-- cost 1
insert into cust_order (order_type, cust_id, order_cost) values (ROUND(MOD(ABS(DBMS_RANDOM.RANDOM),100),0), ROUND(MOD(ABS(DBMS_RANDOM.RANDOM),100),0), ABS(DBMS_RANDOM.RANDOM) / 1000);

-- cost 4468 without index and 3249 with index
select * from cust_order where order_type = 12;


create bitmap index cust_order_type on cust_order(order_type);