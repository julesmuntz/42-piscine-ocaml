let ft_print_comb () =
  let rec loop a b c =
    if a <= 7 then
      if b <= 8 then
        if c <= 9 then (
          print_int a;
          print_int b;
          print_int c;
          if a != 7 || b != 8 || c != 9 then
            print_string ", ";
          loop a b (c + 1))
        else
          loop a (b + 1) (b + 2)
      else
        loop (a + 1) (a + 2) (a + 3)
  in
  loop 0 1 2;
  print_newline ()


let () = ft_print_comb ()
