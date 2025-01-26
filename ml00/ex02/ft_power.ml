let rec ft_power base exp =
  if base < 0 || exp < 0 then
    0
  else if exp = 0 then
    1
  else
    base * ft_power base (exp - 1)


let () =
  try
    let base = int_of_string Sys.argv.(1) in
    let exp = int_of_string Sys.argv.(2) in
    ft_power base exp |> string_of_int |> print_endline
  with _ -> print_endline "Provide the base and the exponent"
