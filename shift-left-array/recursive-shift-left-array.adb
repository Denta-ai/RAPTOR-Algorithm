procedure recursive-shift-left-array is
   procedure recursive (
         arr : in  ??;
         arrSize : in  ??_Variable;
         shift : in  ??_Variable;
         i : in  ??_Variable)
   is
      j : ??_Variable;
      k : ??_Variable;
      arrsize : ??_Variable;
      temp : ??_Variable;
      arr : ??_1D_Array(1..??);
   begin
      j :=0;
      k :=0;
      if shift>=0 then 
         if i=shift then 
            while not (k=arrSize) loop
               k :=k+1;
               Put_Line(arr(k));
            end loop;
         else
            i :=i+1;
            temp :=arr(1);
            while not (j=arrSize-1) loop
               j :=j+1;
               arr(j) := arr(j+1);
            end loop;
            arr(arrSize) := temp;
            recursive(arr,arrSize,shift,i);
         end if;
      else
         Put_Line("Jumlah geser harus lebih dari 0");
      end if;
   end recursive;
   shift : ??_Variable;
   i : ??_Variable;
   arrsize : ??_Variable;
   arr : ??_1D_Array(1..??);
begin
   arr(1) := 1;
   arr(2) := 2;
   arr(3) := 3;
   arr(4) := 4;
   arrSize :=4;
   shift :=1;
   i :=0;
   recursive(arr,arrSize,shift,i);
end recursive-shift-left-array;
