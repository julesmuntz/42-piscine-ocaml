let rec repeat_string ?(str = "x") n =
  if n < 0 then
    "Error"
  else if n > 0 then
    repeat_string ~str (n - 1) ^ str
  else
    ""


let () =
  print_endline ("\"" ^ repeat_string (-1) ^ "\"");
  print_endline ("\"" ^ repeat_string 0 ^ "\"");
  print_endline ("\"" ^ repeat_string ~str:"Toto" 1 ^ "\"");
  print_endline ("\"" ^ repeat_string 2 ^ "\"");
  print_endline ("\"" ^ repeat_string ~str:"a" 5 ^ "\"");
  print_endline ("\"" ^ repeat_string ~str:"what" 3 ^ "\"")
