procedure Sorting_Converting_2DArray is
   type 1D_Array is array (Integer range <>) of Integer;
   type 2D_Array is array (Integer range <>, Integer range <>) of Integer;

   procedure Array is
      arr : 2D_Array(1..3, 1..3);
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
      Convert2DTo1D(arr);
   end Array;

   procedure Convert2DTo1D(arr : in 2D_Array) is
      j : Integer;
      index : Integer;
      i : Integer;
      mergedArray : 1D_Array(1..9);
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
      Sorting(mergedArray, index);
   end Convert2DTo1D;

   procedure Sorting(mergedArray : in out 1D_Array; index : in Integer) is
      temp : Integer;
      i : Integer;
      step : Integer;
   begin
      index := index - 1;
      step := 1;
      while not (step > mergedArray(index)) loop
         i := 1;
         while not (i > mergedArray(index)) loop
            if mergedArray(i) > mergedArray(i + 1) then
               temp := mergedArray(i);
               mergedArray(i) := mergedArray(i + 1);
               mergedArray(i + 1) := temp;
            else
               null;
            end if;
            i := i + 1;
         end loop;
         index := index - 1;
         step := step + 1;
      end loop;
      Convert1DTo2D(mergedArray);
   end Sorting;

   procedure Convert1DTo2D(mergedArray : in 1D_Array) is
      j : Integer;
      index : Integer;
      i : Integer;
      result : 2D_Array(1..3, 1..3);
   begin
      index := 1;
      i := 1;
      loop
         j := 1;
         exit when i > 3;
         while not (j > 3) loop
            result(i, j) := mergedArray(index);
            index := index + 1;
            j := j + 1;
         end loop;
         i := i + 1;
      end loop;
      Output(result);
   end Convert1DTo2D;

   procedure Output(result : in 2D_Array) is
      j : Integer;
      i : Integer;
   begin
      i := 1;
      loop
         j := 1;
         exit when i > 3;
         while not (j > 3) loop
            Put_Line(Integer'Image(result(i, j)));
            j := j + 1;
         end loop;
         Put_Line(" ");
         i := i + 1;
      end loop;
   end Output;

begin
   Array;
end Sorting_Converting_2DArray;
