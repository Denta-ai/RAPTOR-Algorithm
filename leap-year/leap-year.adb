procedure leap-year is
   procedure isLeapYear (
         year : in  ??_Variable)
   is
   begin
      if year mod 4=0 or else year mod 400=0 and then year mod 100=1 then 
         Put_Line("is leap year :"+year);
      else
         Put_Line("is not leap year :"+year);
      end if;
   end isLeapYear;
   raptor_prompt_variable_zzyz : Unbounded_String;
   year : ??_Variable;
begin
   raptor_prompt_variable_zzyz :="Input year = ";
   Put_Line(raptor_prompt_variable_zzyz);
   Get(year);
   isLeapYear(year);
end leap-year;
