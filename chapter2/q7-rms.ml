let rms x y = 
  let sq a = 
    a *. a
  in 
  (((sq x) +. (sq y)) /. 2.) |> sqrt

let () = assert (rms 1. 1. = 1.)
let () = assert (rms 2. 2. = 2.)
let () = assert (((rms 2. 1.) -. 1.58) |> abs_float < 0.01)
