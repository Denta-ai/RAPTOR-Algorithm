procedure Power_Number is
   procedure Calculate_Pow (
         x : in  Float;
         y : in  Integer;
         result : out Float)
   is
      i : Integer;
   begin
      if y = 0 then 
         Put_Line("Result = " & Float'Image(result));
      else
         if y > 0 then 
            i := 0;
            loop
               i := i + 1;
               result := result * x;
               exit when i = y;
            end loop;
            Put_Line("The result is " & Float'Image(result));
         else
            if y < 0 then 
               i := 0;
               loop
                  i := i + 1;
                  result := result / x;
                  exit when i = (y * -1);
               end loop;
               Put_Line("The result is " & Float'Image(result));
            else
               Put_Line("Error");
            end if;
         end if;
      end if;
   end Calculate_Pow;
   
   x : Float;
   y : Integer;
   result : Float;
begin
   Put("Input value x = ");
   Get(x);
   
   Put("Input value y = ");
   Get(y);
   
   result := 1.0;
   Calculate_Pow(x, y, result);
end Power_Number;
