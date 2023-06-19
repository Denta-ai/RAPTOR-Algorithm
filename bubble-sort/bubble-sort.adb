procedure bubble-sort is
   procedure Data is
      k : ??_Variable;
      size : ??_Variable;
      step : ??_Variable;
      arr : ??_1D_Array(1..??);
   begin
      step :=1;
      k :=1;
      arr(1) := 9;
      arr(2) := 2;
      arr(3) := 1;
      arr(4) := 4;
      arr(5) := 11;
      arr(6) := 10;
      arr(7) := 18;
      arr(8) := 6;
      Size :=8;
      Bubble_sort(step,Size,k,arr);
   end Data;
   procedure Bubble_sort (
         step : in  ??_Variable;
         Size : in  ??_Variable;
         k : in  ??;
         arr : in  ??)
   is
      temp : ??_Variable;
      size : ??_Variable;
      i : ??_Variable;
      arr : ??_1D_Array(1..??);
   begin
      while not (step>arr(Size)-1) loop
         i :=1;
         while not (i>arr(Size)-1) loop
            if arr(i)>arr(i+1) then 
               temp :=arr(i);
               arr(i) := arr(i+1);
               arr(i+1) := temp;
            else
            end if;
            i :=i+1;
         end loop;
         Size :=Size-1;
         step :=step+1;
      end loop;
      output(k,arr);
   end Bubble_sort;
   procedure output (
         k : in  ??_Variable;
         arr : in  ??)
   is
      size : ??_Variable;
      arr : ??_1D_Array(1..??);
   begin
      loop
         Size :=8;
         exit when k>Size;
         Put_Line(arr(k)+" ");
         k :=k+1;
      end loop;
   end output;
begin
   Data);
end bubble-sort;
