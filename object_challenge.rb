#Parent Class
class FantasyPets

  attr_accessor :name, :color


end




#Object - dragon because why not
class Dragon < FantasyPets

#all previous bits are part of the parent class

# set a sound for the dragon to make because it seems like a fun idea
  def roar
    return "ROAAAAWR"
  end

end

#Object - pegasus because sure
class Pegasus < FantasyPets

#set a sound
  def whinny
    return "Whinny-squawk"
  end
end

#Object - gryphon
class Gryphon < FantasyPets

  def tweet
    return "Squaw-Roar"
  end
end

#create new instance of dragon, assign name and color, and apply those to new variables
my_dragon = Dragon.new
my_dragon.name = "Cinder"
my_dragon.color = "golden-red"
dragonname = my_dragon.name
dragoncolor = my_dragon.color

my_pegasus = Pegasus.new
my_pegasus.name = "Wingsy"
my_pegasus.color = "between the stars black"
pegasusname = my_pegasus.name
pegasuscolor = my_pegasus.color

my_gryphon = Gryphon.new
my_gryphon.name = "Fluffy"
my_gryphon.color = "moon pale"
gryphonname = my_gryphon.name
gryphoncolor = my_gryphon.color


#create string to show that object was created properly

puts "#{dragonname}, the #{dragoncolor} dragon, says #{my_dragon.roar}!"

puts "#{pegasusname}, the #{pegasuscolor} pegasus, says #{my_pegasus.whinny}!"

puts "#{gryphonname}, the #{gryphoncolor} gryphon, says #{my_gryphon.tweet}!"

puts my_dragon.inspect
puts my_pegasus.inspect
puts my_gryphon.inspect
