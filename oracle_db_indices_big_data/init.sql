create table cust_order (
  order_id NUMBER(26,0) primary key,
  order_type NUMBER(3,0),
  cust_id NUMBER(3,0),
  order_cost NUMBER
);

CREATE SEQUENCE order_id_seq START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;

create or replace trigger order_trg
before insert on cust_order
for each row
begin
  select order_id_seq.nextval into :new.order_id from dual;
end;

declare
begin
for i in 1 .. 10000000 loop 
 insert into cust_order (order_type, cust_id, order_cost) values (ROUND(MOD(ABS(DBMS_RANDOM.RANDOM),100),0), ROUND(MOD(ABS(DBMS_RANDOM.RANDOM),100),0), ABS(DBMS_RANDOM.RANDOM) / 1000);
 if MOD(i,100) = 0 then commit; end if;
end loop;
end;