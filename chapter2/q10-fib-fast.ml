let fib_fast x = 
  let rec h n pp p = 
    match n with 
    | 1 -> p
    | _ -> h (n - 1) p (pp + p)
  in
  h x 0 1
