let x = 42 * 10;;

let y = 3.14 /. 2.0;;

let pow a x = 
  let rec go a res =
    if a > 0 then go (a - 1) (res *. x) else res 
  in
  go a 1.

let z = 4.2 |> pow 7;;