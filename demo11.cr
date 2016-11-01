e = {} of String | Int32 => Bool | String
e["Hello"] = true
e["World"] = false
e[11] = "Fail?"
puts e.inspect
