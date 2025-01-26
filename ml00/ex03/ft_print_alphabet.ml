let rec ft_print_alphabet unit =
  if unit < 26 then (
    print_char (Char.chr (unit + 97));
    ft_print_alphabet (unit + 1))
  else
    print_char '\n'


let () = ft_print_alphabet 0
