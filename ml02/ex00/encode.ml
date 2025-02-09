let encode (data : 'a list) : (int * 'a) list =
  let rec loop acc count h t =
    match t with
    | [] -> acc @ [ (count, h) ]
    | next :: t ->
        if h = next then
          loop acc (count + 1) h t
        else
          loop (acc @ [ (count, h) ]) 1 next t
  in
  match data with [] -> [] | h :: t -> loop [] 1 h t


let () =
  let print_encoded_data data =
    Printf.printf "[ %s ]\n"
      (String.concat " "
         (List.map
            (fun (count, char) -> Printf.sprintf "(%d, %s)" count char)
            data))
  in
  let encodedData =
    encode [ "aa"; "aa"; "aa"; "bb"; "bb"; "cc"; "cc"; "ccc"; "cc"; "d" ]
  in
  let encodedEmpty = encode [] in
  print_encoded_data encodedData;
  print_encoded_data encodedEmpty
