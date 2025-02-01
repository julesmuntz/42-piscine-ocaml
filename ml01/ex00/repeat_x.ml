let rec repeat_x n =
  if n < 0 then
    "Error"
  else if n > 0 then
    repeat_x (n - 1) ^ "x"
  else
    ""


let () =
  print_endline ("\"" ^ repeat_x (-1) ^ "\"");
  print_endline ("\"" ^ repeat_x 0 ^ "\"");
  print_endline ("\"" ^ repeat_x 1 ^ "\"");
  print_endline ("\"" ^ repeat_x 2 ^ "\"");
  print_endline ("\"" ^ repeat_x 5 ^ "\"")
