procedure iterative-recursive is
   procedure Iterative (
         start : in  ??_Variable;
         end : in  ??_Variable)
   is
   begin
      end :=99;
      loop
         start :=start+1;
         if start mod 5=0 and then start mod 7=0 then 
            Put_Line(start);
         else
         end if;
         exit when start=end;
      end loop;
   end Iterative;
   procedure recursive (
         start : in  ??_Variable;
         end : in  ??_Variable)
   is
   begin
      end :=99;
      if start mod 5=0 and then start mod 7=0 then 
         Put_Line(start);
      else
      end if;
      if start=end then 
      else
         recursive(start+1,end);
      end if;
   end recursive;
   raptor_prompt_variable_zzyz : Unbounded_String;
   start : ??_Variable;
   choice : ??_Variable;
   end : ??_Variable;
begin
   start :=1;
   end :=100;
   raptor_prompt_variable_zzyz :="iterative or recursivef? (i/r)";
   Put_Line(raptor_prompt_variable_zzyz);
   Get(choice);
   if choice="i" then 
      Put_Line("Iterative result : ");
      Iterative(start,end);
   else
      if choice="r" then 
         Put_Line("Recursive result :");
         recursive(start,end);
      else
      end if;
   end if;
end iterative-recursive;
