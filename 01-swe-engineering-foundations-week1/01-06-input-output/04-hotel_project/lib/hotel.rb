require_relative "room"

class Hotel
  def initialize(name, rm_hash)
    @name = name

    @rooms = {}
    rm_hash.keys.each do |key|
      @rooms[key] = Room.new(rm_hash[key])
    end
  end

  # get name to capitilize each first letter
  def name
    return @name.split(" ").map { |word| word.capitalize }.join(" ")
  end

  def rooms
    @rooms
  end

  def room_exists?(rm_name) # check to see if the room exists in hotel
    # @rooms.keys.any? { |room_names| room_names == string }
    @rooms.has_key?(rm_name)
  end

  def check_in(person, room_name)
    if room_exists?(room_name) # if the room exists
      if (@rooms[room_name].add_occupant(person)) # adding was successful
        p "check in successful"
      else # if adding was not successful
        p "sorry, room is full"
      end
    else # if the room does not exist
      p "sorry, room does not exist"
      return false
    end
  end

  def has_vacancy?
    @rooms.each do |k, v|
      if v.available_space >= 1
        return true
      else
        return false
      end
    end
  end

  def list_rooms
    @rooms.each do |key, val|
      puts "#{key} : #{val.available_space}"
    end
  end
end
