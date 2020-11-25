sym = :jamesvongampai # a symbol never changes
name = "jamesvongampai"

p sym.length
p name.length

p sym[-1] # i
p name[-1] # i

# symbols are immutable - cannot be changed
# strings can be changed

# shortcut for writing a hash using symbols
bootcamp = [
  userid1 = {
    name: "james vongampai",
    location: "San Jose",
    title: "Student",
  },
  userid2 = {
    name: "booby frankie",
    location: "San Francisco",
    title: "Student",
  },
  userid3 = {
    name: "barbara lee",
    location: "New York",
    title: "Student",
  },
]

# how to access a key that is a symbol
p bootcamp[0][:name] # james vongampai
p bootcamp[1][:location] # San Francisco

my_bootcamp = { :name => "App Academy", :color => "red", :locations => ["NY", "SF", "ONLINE"] }

#shortcut
my_bootcamp = { name: "App Academy", color: "red", locations: ["NY", "SF", "ONLINE"] }

my_info = { name: "James Vongampai", vehicles: ["Subaru STI"], location: "Mountain View" }
p my_info[:vehicles]
