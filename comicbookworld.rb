require './superhero.rb'
require './supervillain.rb'
require './justicetower.rb'
require './evillair.rb'
require './fight.rb'

class ComicBookWorld

  attr_reader :name, :heroes, :villains

  def initialize(name)
    @name = name

    @heroes = []
    @villains = []
  end

end

the_world = ComicBookWorld.new("The World")
superman = SuperHero.new("Super Man")
the_flash = SuperHero.new("The Flash")
the_world.heroes << superman
the_world.heroes << the_flash

p the_world.heroes
the_joker = SuperVillain.new("Joker")
the_penguin = SuperVillain.new("Penguin")
the_world.villains << the_joker
the_world.villains << the_penguin

justicetower = JusticeTower.new("Justice Tower")
evil_layer = EvilLair.new("Joker's Place")

p justicetower.enter_justice_tower(superman)
p justicetower.enter_justice_tower(the_joker)
p evil_layer.enter_evil_lair(superman)
p evil_layer.enter_evil_lair(the_penguin)

# Let's have a fight!
first_fight = Fight.new(superman, the_joker)
first_fight.fight_sequence
