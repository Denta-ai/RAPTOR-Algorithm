procedure sorting-converting-2dArray is
   procedure array is
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
      convert2DTo1D(arr);
   end array;
   procedure convert2DTo1D (
         arr : in  ??)
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
      sorting(mergedArray,index);
   end convert2DTo1D;
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
      while not (step>mergedArray(index)) loop
         i :=1;
         while not (i>mergedArray(index)) loop
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
      convert1DTo2D(mergedArray);
   end sorting;
   procedure convert1DTo2D (
         mergedArray : in  ??)
   is
      j : ??_Variable;
      index : ??_Variable;
      i : ??_Variable;
      result : ??_2D_Array(1..??,1..??);
   begin
      index :=1;
      i :=1;
      loop
         j :=1;
         exit when i>3;
         while not (j>3) loop
            result(i,j) := mergedArray(index);
            index :=index+1;
            j :=j+1;
         end loop;
         i :=i+1;
      end loop;
      output(result);
   end convert1DTo2D;
   procedure output (
         result : in  ??)
   is
      j : ??_Variable;
      i : ??_Variable;
      result : ??_2D_Array(1..??,1..??);
   begin
      i :=1;
      loop
         j :=1;
         exit when i>3;
         while not (j>3) loop
            Put_Line(result(i,j));
            j :=j+1;
         end loop;
         Put_Line(" ");
         i :=i+1;
      end loop;
   end output;
begin
   array);
end sorting-converting-2dArray;
