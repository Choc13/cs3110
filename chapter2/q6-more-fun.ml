let cube x = x *. x *. x

let sign x = if x < 0 then -1 else if x > 0 then 1 else 0

let circle_area r = 2. *. 3.14 *. r *. r

let () = assert (cube 2. = 8.)
let () = assert (cube 3. = 27.)

let () = assert ((sign 999) = 1)
let () = assert ((sign 1) = 1)
let () = assert ((sign 0) = 0)
let () = assert ((sign (-1)) = -1)
let () = assert ((sign (-999)) = -1)

let () = assert (((circle_area 2.) -. 25.12) |> abs_float < 0.01)
