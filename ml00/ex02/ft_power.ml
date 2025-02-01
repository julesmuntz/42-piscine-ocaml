let rec ft_power base exp =
  if base < 0 || exp < 0 then
    0
  else if exp = 0 then
    1
  else
    base * ft_power base (exp - 1)


let () =
  print_endline (string_of_int (ft_power 2 4));
  print_endline (string_of_int (ft_power 3 0));
  print_endline (string_of_int (ft_power 0 5))
