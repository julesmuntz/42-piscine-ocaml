let rec ft_print_alphabet () =
  let letter = int_of_char 'a' in
  let rec print_letter letter =
    if letter < int_of_char 'z' then (
      print_char (char_of_int letter);
      print_letter (letter + 1))
    else
      print_char '\n'
  in
  print_letter letter


let () = ft_print_alphabet ()
