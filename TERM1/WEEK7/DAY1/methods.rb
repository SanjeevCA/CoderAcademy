$name = "Sanj"

def tieShoeLace
    place = "Brisbane"
    puts "Hey #{$name} from #{place}!"
    puts "wear shoes first"
    puts "cross the lace"
    puts "tie a knot"
    puts "you are good to go!"
end

def evenOrOdd(number)
    if number % 2 == 0
        return "#{number} is even."
    else
        return "#{number} is odd."
    end
end

puts "-------------------------------------------------"
puts

tieShoeLace
puts
puts evenOrOdd(7)

puts
puts "-------------------------------------------------"