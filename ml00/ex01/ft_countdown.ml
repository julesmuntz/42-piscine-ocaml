let rec ft_countdown unit =
  if unit > 0 then (
    print_int unit;
    print_char '\n';
    ft_countdown (unit - 1))
  else (
    print_int 0;
    print_char '\n')


let () =
  print_newline (ft_countdown 3);
  print_newline (ft_countdown 0);
  print_newline (ft_countdown (-1))
