procedure power-number is
   procedure calculatePow (
         x : in  ??;
         y : in  ??_Variable;
         result : in  ??_Variable)
   is
      i : ??_Variable;
   begin
      if y=0 then 
         Put_Line("result = "+result);
      else
         if y>0 then 
            i :=0;
            loop
               i :=i+1;
               result :=result*x;
               exit when i=y;
            end loop;
            Put_Line("the result is "+result);
         else
            if y<0 then 
               i :=0;
               loop
                  i :=i+1;
                  result :=result/x;
                  exit when i=(y*-1);
               end loop;
               Put_Line("the result is "+result);
            else
               Put_Line("Error");
            end if;
         end if;
      end if;
   end calculatePow;
   raptor_prompt_variable_zzyz : Unbounded_String;
   x : ??_Variable;
   y : ??_Variable;
   result : ??_Variable;
begin
   raptor_prompt_variable_zzyz :="Input value x = ";
   Put_Line(raptor_prompt_variable_zzyz);
   Get(x);
   raptor_prompt_variable_zzyz :="Input value y = ";
   Put_Line(raptor_prompt_variable_zzyz);
   Get(y);
   result :=1;
   calculatePow(x,y,result);
end power-number;
