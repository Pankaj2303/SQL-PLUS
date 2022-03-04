BEGIN
  select quantity into qty from inven
  where product_id=pid;
 if qty>0 then 
   update inven set quantity=quantity-1
 where product_id=pid;
   insert into purchase_record values
   (pid,'PURCHASED',sysdate);
 else
   insert into purchase_record values
   (pid,'Out Of Stock',sysdate);
end if;
END;
