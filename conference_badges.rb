def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  message_array = []
  attendees.each{|name|
  message_array <<badge_maker(name)
}
  message_array
end

def assign_rooms(attendees)
  room_assign = []
  attendees.each_with_index {|name, index|
    room = index+1
    room_assign << "Hello, #{name}! You'll be assigned to room #{room}!"
  }
  room_assign
end

def printer(attendees)
  puts batch_badge_creator(attendees)
  puts assign_rooms(attendees)
end