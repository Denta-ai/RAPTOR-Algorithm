procedure Merging_Array_Subprogram is
   procedure Arr1 is
      arr : array(1..3, 1..3) of Integer;
   begin
      arr(1, 1) := 5;
      arr(1, 2) := 8;
      arr(1, 3) := 2;
      arr(2, 1) := 1;
      arr(2, 2) := 6;
      arr(2, 3) := 9;
      arr(3, 1) := 4;
      arr(3, 2) := 3;
      arr(3, 3) := 7;
      Arr2(arr);
   end Arr1;
   
   procedure Arr2 (
         arr : in  array(1..3, 1..3) of Integer)
   is
      arrs : array(1..3, 1..3) of Integer;
   begin
      arrs(1, 1) := 11;
      arrs(1, 2) := 14;
      arrs(1, 3) := 12;
      arrs(2, 1) := 10;
      arrs(2, 2) := 16;
      arrs(2, 3) := 18;
      arrs(3, 1) := 15;
      arrs(3, 2) := 13;
      arrs(3, 3) := 17;
      Process_Merging1(arr, arrs);
   end Arr2;
   
   procedure Process_Merging1 (
         arr : in  array(1..3, 1..3) of Integer;
         arrs : in  array(1..3, 1..3) of Integer)
   is
      j : Integer;
      index : Integer;
      i : Integer;
      mergedArray : array(1..18) of Integer;
   begin
      index := 1;
      i := 1;
      loop
         j := 1;
         exit when i > 3;
         while not (j > 3) loop
            mergedArray(index) := arr(i, j);
            index := index + 1;
            j := j + 1;
         end loop;
         i := i + 1;
      end loop;
      Process_Merging2(arrs, mergedArray, index);
   end Process_Merging1;
   
   procedure Process_Merging2 (
         arrs : in  array(1..3, 1..3) of Integer;
         mergedArray : in out array(1..18) of Integer;
         index : in  Integer)
   is
      j : Integer;
      i : Integer;
   begin
      i := 1;
      loop
         j := 1;
         exit when i > 3;
         while not (j > 3) loop
            mergedArray(index) := arrs(i, j);
            index := index + 1;
            j := j + 1;
         end loop;
         i := i + 1;
      end loop;
      Sorting(mergedArray, index);
   end Process_Merging2;
   
   procedure Sorting (
         mergedArray : in out array(1..18) of Integer;
         index : in  Integer)
   is
      temp : Integer;
      i : Integer;
      step : Integer;
   begin
      index := index - 1;
      step := 1;
      while not (step > index - 1) loop
         i := 1;
         while not (i > index - 1) loop
            if mergedArray(i) > mergedArray(i + 1) then 
               temp := mergedArray(i);
               mergedArray(i) := mergedArray(i + 1);
               mergedArray(i + 1) := temp;
            end if;
            i := i + 1;
         end loop;
         index := index - 1;
         step := step + 1;
      end loop;
      Output(mergedArray, 18);
   end Sorting;
   
   procedure Output (
         mergedArray : in array(1..18) of Integer;
         index : in  Integer)
   is
      k : Integer;
   begin
      k := 1;
      while not (k > index) loop
         Put_Line(Integer'Image(mergedArray(k)));
         k := k + 1;
      end loop;
   end Output;
   
begin
   Arr1;
end Merging_Array_Subprogram;
