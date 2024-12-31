```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   MyArr : My_Array := (1,2,3,4,5,6,7,8,9,10);
   I : Integer := 0; --Initialize I outside the loop
begin
   for I in MyArr'Range loop
      if MyArr(I) = 5 then
         exit; -- Exit the loop prematurely 
      end if;
   end loop;
   --Handle potential undefined value of I after exit, or avoid using I after the loop
   if I > 0 then --Check if I was assigned a value before using it
     Put_Line(Integer'Image(MyArr(I)));
   else
     Put_Line("Loop exited without I having a valid value.");
   end if;
   --Alternative Solution: Avoid using I after the loop
   -- ...other code... 
end Example;
```