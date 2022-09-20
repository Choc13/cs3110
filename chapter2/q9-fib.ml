let rec fib n = 
  match n with
  | 0 -> 0
  | 1 -> 1
  | n when n > 1 -> fib (n - 1) + fib (n - 2)
  | _ -> failwith "n cannot be negative"

let () = assert (fib 2 = 1)
let () = assert (fib 7 = 13)
