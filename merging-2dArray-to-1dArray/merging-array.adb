procedure merging-array is
   step : ??_Variable;
   j : ??_Variable;
   k : ??_Variable;
   i : ??_Variable;
   index : ??_Variable;
   temp : ??_Variable;
   mergedarray : ??_1D_Array(1..??);
   arrs : ??_2D_Array(1..??,1..??);
   arr : ??_2D_Array(1..??,1..??);
begin
   arr(1,1) := 5;
   arr(1,2) := 8;
   arr(1,3) := 2;
   arr(2,1) := 1;
   arr(2,2) := 6;
   arr(2,3) := 9;
   arr(3,1) := 4;
   arr(3,2) := 3;
   arr(3,3) := 7;
   arrs(1,1) := 11;
   arrs(1,2) := 14;
   arrs(1,3) := 12;
   arrs(2,1) := 10;
   arrs(2,2) := 16;
   arrs(2,3) := 18;
   arrs(3,1) := 15;
   arrs(3,2) := 13;
   arrs(3,3) := 17;
   index :=1;
   i :=1;
   loop
      j :=1;
      exit when i>3;
      while not (j>3) loop
         mergedArray(index) := arr(i,j);
         index :=index+1;
         j :=j+1;
      end loop;
      i :=i+1;
   end loop;
   i :=1;
   loop
      j :=1;
      exit when i>3;
      while not (j>3) loop
         mergedArray(index) := arrs(i,j);
         index :=index+1;
         j :=j+1;
      end loop;
      i :=i+1;
   end loop;
   index :=18;
   step :=1;
   while not (step>mergedArray(index)-1) loop
      i :=1;
      while not (i>mergedArray(index)-1) loop
         if mergedArray(i)>mergedArray(i+1) then 
            temp :=mergedArray(i);
            mergedArray(i) := mergedArray(i+1);
            mergedArray(i+1) := temp;
         else
         end if;
         i :=i+1;
      end loop;
      index :=index-1;
      step :=step+1;
   end loop;
   k :=1;
   loop
      index :=18;
      exit when k>index;
      Put_Line(mergedArray(k)+" ");
      k :=k+1;
   end loop;
end merging-array;
