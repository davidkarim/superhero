class JusticeTower

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def enter_justice_tower(hero)
    if hero.is_a? SuperHero
      "Welcome #{hero.name}!, to the Justice Tower"
    else
      "Access denied."
    end
  end

end
