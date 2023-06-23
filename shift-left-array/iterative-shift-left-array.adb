procedure Iterative_Shift_Left_Array is
   procedure Iterative is
      j : Integer;
      shift : Integer;
      i : Integer;
      k : Integer;
      arrSize : Integer;
      temp : Integer;
      arr : array(1..100) of Integer;
   begin
      i := 0;
      j := 0;
      k := 0;
      arr(1) := 1;
      arr(2) := 2;
      arr(3) := 3;
      arr(4) := 4;
      arrSize := 4;
      shift := 1;
      if shift >= 0 then
         while not (i = shift) loop
            i := i + 1;
            temp := arr(1);
            while not (j = arrSize - 1) loop
               j := j + 1;
               arr(j) := arr(j + 1);
            end loop;
            arr(arrSize) := temp;
         end loop;
         Put_Line("Array after shifted:");
         while not (k = arrSize) loop
            k := k + 1;
            Put_Line(Integer'Image(arr(k)));
         end loop;
      else
         Put_Line("Shifted must be above 0");
      end if;
   end Iterative;
begin
   Iterative;
end Iterative_Shift_Left_Array;
