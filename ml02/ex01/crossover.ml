let crossover (a : 'a list) (b : 'a list) : 'a list =
  let rec loop acc a =
    match a with
    | [] -> acc
    | ha :: ta ->
        let rec nested acc b =
          match b with
          | [] -> acc
          | hb :: tb ->
              if ha = hb then nested (acc @ [ ha ]) tb else nested acc tb
        in
        loop (nested acc b) ta
  in
  loop [] a


let () =
  let lists = crossover [ 1; 2; 3; 5 ] [ 4; 5; 2; 7 ] in
  let emptyLists = crossover [] [] in
  print_endline (String.concat ", " (List.map string_of_int lists));
  print_endline (String.concat ", " (List.map string_of_int emptyLists))
