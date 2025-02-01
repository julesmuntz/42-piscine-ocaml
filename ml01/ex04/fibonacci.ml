let rec fibonacci n =
  let rec loop n =
    if n < 0 then
      -1
    else if n = 0 then
      0
    else if n = 1 then
      1
    else
      loop (n - 1) + loop (n - 2)
  in
  loop n


let () =
  print_endline (string_of_int (fibonacci (-42)));
  print_endline (string_of_int (fibonacci 1));
  print_endline (string_of_int (fibonacci 3));
  print_endline (string_of_int (fibonacci 6))
