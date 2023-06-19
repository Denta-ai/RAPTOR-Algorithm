procedure fraction-numb is
   procedure fractionSeries (
         numb : in  ??_Variable;
         numb1 : in  ??_Variable;
         numb2 : in  ??_Variable;
         result : in  ??_Variable)
   is
   begin
      if numb=1 then 
         Put_Line(result);
      else
         numb :=numb-1;
         if numb mod 2=0 then 
            numb1 :=numb1-1/numb;
         else
            numb2 :=numb2+1/numb;
         end if;
         result :=numb1+numb2;
         fractionSeries(numb,numb1,numb2,result);
      end if;
   end fractionSeries;
   raptor_prompt_variable_zzyz : Unbounded_String;
   numb : ??_Variable;
   numb2 : ??_Variable;
   numb1 : ??_Variable;
   result : ??_Variable;
begin
   numb :=0;
   numb1 :=0;
   numb2 :=0;
   result :=0;
   raptor_prompt_variable_zzyz :="Input number : ";
   Put_Line(raptor_prompt_variable_zzyz);
   Get(numb);
   fractionSeries(numb+1,numb1,numb2,result);
end fraction-numb;
