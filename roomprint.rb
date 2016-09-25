# Patrick Kinsella
# Silly program to take all roommate names and print them with random
# adjectives to the terminal so you can laugh with roomies.
# 
# Takes a named file with a list of current roommates
#
# Primary goal is to learn git
#
# Created Sat, 4/16/2016

def main
  roomies = Array.new
  adjectives = ["is a wily old dog", "is a witty kitty", "is a sass machine", \
              "is a goony loony", "is a boss with sauce", "is a boney crony"]
  i = 0

  ARGF.each do |line|
    roomies[i] = line.chop
    i += 1
  end

  prng = Random.new

  roomies.each do |roomie|
    puts "#{roomie} #{adjectives[prng.rand(6)]}"
  end

end

main()
