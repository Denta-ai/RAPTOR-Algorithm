procedure merging-array-subprogram is
   procedure arr1 is
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
      arr2(arr);
   end arr1;
   procedure arr2 (
         arr : in  ??)
   is
      arrs : ??_2D_Array(1..??,1..??);
   begin
      arrs(1,1) := 11;
      arrs(1,2) := 14;
      arrs(1,3) := 12;
      arrs(2,1) := 10;
      arrs(2,2) := 16;
      arrs(2,3) := 18;
      arrs(3,1) := 15;
      arrs(3,2) := 13;
      arrs(3,3) := 17;
      processMerging1(arr,arrs);
   end arr2;
   procedure processMerging1 (
         arr : in  ??;
         arrs : in  ??)
   is
      j : ??_Variable;
      index : ??_Variable;
      i : ??_Variable;
      mergedarray : ??_1D_Array(1..??);
   begin
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
      processMerging2(arrs,mergedArray,index);
   end processMerging1;
   procedure processMerging2 (
         arrs : in  ??;
         mergedArray : in  ??;
         index : in  ??_Variable)
   is
      j : ??_Variable;
      i : ??_Variable;
      mergedarray : ??_1D_Array(1..??);
   begin
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
      sorting(mergedArray,index);
   end processMerging2;
   procedure sorting (
         mergedArray : in  ??;
         index : in  ??_Variable)
   is
      temp : ??_Variable;
      i : ??_Variable;
      step : ??_Variable;
      mergedarray : ??_1D_Array(1..??);
   begin
      index :=index-1;
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
      output(mergedArray,18);
   end sorting;
   procedure output (
         mergedArray : in  ??;
         index : in  ??_Variable)
   is
      k : ??_Variable;
      mergedarray : ??_1D_Array(1..??);
   begin
      k :=1;
      while not (k>index) loop
         Put_Line(mergedArray(k)+" ");
         k :=k+1;
      end loop;
   end output;
begin
   arr1);
end merging-array-subprogram;
