# Patrick Kinsella
# Print names and print them with random
# adjectives to the terminal so you can laugh with friends.
# 
# Primary goal is to learn git
#
# Created Sat, 4/16/2016

class SassMachine
  def initialize
    @sass_targets = ["Dennis", "Annie", "Alli", "Theresa", "Darby", "Allison", \
                  "Ilana", "Patrick"]
    @choice
    @adjectives = ["is a wily old dog", "is a witty kitty", "is a sass machine", \
              "is a goony loony", "is a boss with sauce", "is a boney crony"]
    @prng = Random.new
  end
  
  def choose_sass_targets()
    puts "please select the person you wish to describe."
 
    i = 0
 
    @sass_targets.each do |person, index|
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
    puts "#{@sass_targets[@choice]} #{@adjectives[@prng.rand(6)]}"
  end
end


def main
  beacon = SassMachine.new()
  beacon.choose_sass_targets 
  beacon.sass
end

main()
