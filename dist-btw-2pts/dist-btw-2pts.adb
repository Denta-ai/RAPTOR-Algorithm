procedure dist-btw-2pts is
   raptor_prompt_variable_zzyz : Unbounded_String;
   y1 : ??_Variable;
   a : ??_Variable;
   range : ??_Variable;
   x2 : ??_Variable;
   y2 : ??_Variable;
   b : ??_Variable;
   x1 : ??_Variable;
begin
   raptor_prompt_variable_zzyz :="Input coordinate x from A =";
   Put_Line(raptor_prompt_variable_zzyz);
   Get(x1);
   raptor_prompt_variable_zzyz :="Input coordinate y from A =";
   Put_Line(raptor_prompt_variable_zzyz);
   Get(y1);
   raptor_prompt_variable_zzyz :="Input coordinate x from B =";
   Put_Line(raptor_prompt_variable_zzyz);
   Get(x2);
   raptor_prompt_variable_zzyz :="Input coordinate y from B =";
   Put_Line(raptor_prompt_variable_zzyz);
   Get(y2);
   A :=(x2-x1) ** 2;
   B :=(y2-y1) ** 2;
   range :=sqrt(A+B);
   Put_Line("Distance between A and B = "+range);
end dist-btw-2pts;
