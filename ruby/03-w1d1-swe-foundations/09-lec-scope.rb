# scope

food = "noodles" # global scope in the file

def say_bye
  message = "bye"
  p message
end

p message # undefined variable, because the scope is not global, it exists only in the method, a.k.a local scope
