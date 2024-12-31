```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   MyArr : My_Array := (1,2,3,4,5,6,7,8,9,10);
begin
   for I in MyArr'Range loop
      if MyArr(I) = 5 then
         exit; -- Exit the loop prematurely 
      end if;
   end loop;
   -- Accessing MyArr(I) outside the loop will cause an error
   -- Because the value of I will be undefined after loop exit.  
   Put_Line(Integer'Image(MyArr(I)));  
   --Exception raised: Constraint_Error
end Example;
```