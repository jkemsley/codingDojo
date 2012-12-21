let (|Isfizz|Isbuzz|Isfb|Val|) v = 
                        if (v % 3 = 0 || v.ToString().Contains("3")) && (v % 5 = 0 || v.ToString().Contains("5")) then Isfb
                        elif v % 3 = 0 || v.ToString().Contains("3") then Isfizz
                        elif v % 5 = 0 || v.ToString().Contains("5") then Isbuzz
                        else Val

let fb = ([|1 .. 100|] |> Seq.map (fun v ->  
                                     match v with
                                     | Isfizz -> "Fizz"
                                     | Isbuzz -> "Buzz"
                                     | Isfb -> "FizzBuzz"
                                     | Val -> v.ToString()
                                   ))

fb |> Seq.iter (fun x -> printfn "%A " x)