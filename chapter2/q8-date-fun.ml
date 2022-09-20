exception InvalidMonth of string

let days_in_month = 
  function 
  | "january" | "march" | "may" | "july" | "august" | "october" | "december" -> 31
  | "april" | "june" | "september" | "november" -> 30
  | "february" -> 28
  | m -> (InvalidMonth m) |> raise

let is_valid_date d m =
    d <= (m |> days_in_month)

let () = assert (is_valid_date 30 "april")
let () = assert (is_valid_date 30 "february" |> not)
