def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    badges_array = Array.new
    array.each do |name|
        badges_array << badge_maker(name)
    end 
    badges_array
end

def assign_rooms(speakers)
    assigned_rooms = Array.new
    speakers.each_with_index do |speaker, index|
        assigned_rooms << "Hello, #{speaker}! You'll be assigned to room #{index+1}!"
    end
    assigned_rooms
end

def printer(speakers)
    batch_badge_creator(speakers).each do |speaker|
        puts speaker
    end
    assign_rooms(speakers).each do |room|
        puts room
    end
end

printer(["speaker", "and nigga"])