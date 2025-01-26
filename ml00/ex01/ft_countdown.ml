let rec ft_countdown unit =
  if unit > 0 then (
    print_int unit;
    ft_countdown (unit - 1))
  else
    print_int 0


let () =
  try
    let unit = int_of_string Sys.argv.(1) in
    ft_countdown unit
  with _ -> print_endline "Provide a number"
