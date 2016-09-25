# Patrick Kinsella
# Silly program to take all roommate names and print them with random
# adjectives to the terminal so you can laugh with roomies.
# 
# Takes a named file with a list of current roommates
#
# Primary goal is to learn git
#
# Created Sat, 4/16/2016

class SassMachine
  def initialize
    @roommates = ["Dennis", "Annie", "Alli", "Theresa", "Darby", "Allison", \
                  "Ilana", "Patrick"]
    @choice
    @adjectives = ["is a wily old dog", "is a witty kitty", "is a sass machine", \
              "is a goony loony", "is a boss with sauce", "is a boney crony"]
    @prng = Random.new
  end
  
  def choose_roommate()
    puts "please select the roommate you wish to describe."
 
    i = 0
 
    @roommates.each do |person, index|
      i += 1
      print "#{i}. "
      puts "#{person}"
    end
  
    puts
    @choice = $stdin.gets.chomp.to_i
    @choice -= 1
  end

  def sass
    puts
    puts "#{@roommates[@choice]} #{@adjectives[@prng.rand(6)]}"
  end
end


def main
  beacon = SassMachine.new()
  beacon.choose_roommate  
  beacon.sass
end

main()
