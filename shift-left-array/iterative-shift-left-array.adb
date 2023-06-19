procedure iterative-shift-left-array is
   procedure Iterative is
      j : ??_Variable;
      shift : ??_Variable;
      i : ??_Variable;
      k : ??_Variable;
      arrsize : ??_Variable;
      temp : ??_Variable;
      arr : ??_1D_Array(1..??);
   begin
      i :=0;
      j :=0;
      k :=0;
      arr(1) := 1;
      arr(2) := 2;
      arr(3) := 3;
      arr(4) := 4;
      arrSize :=4;
      shift :=1;
      if shift>=0 then 
         while not (i=shift) loop
            i :=i+1;
            temp :=arr(1);
            while not (j=arrSize-1) loop
               j :=j+1;
               arr(j) := arr(j+1);
            end loop;
            arr(arrSize) := temp;
         end loop;
         Put_Line("array setelah digeser");
         while not (k=arrSize) loop
            k :=k+1;
            Put_Line(arr(k));
         end loop;
      else
         Put_Line("Jumlah geser harus lebih dari 0");
      end if;
   end Iterative;
begin
   Iterative);
end iterative-shift-left-array;
