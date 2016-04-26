class EvilLair

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def enter_evil_lair(villain)
    if villain.is_a? SuperVillain
      "Eghh it's you again #{villain.name}, you're terrible."
    else
      "Access denied & trust me, you don't want to go in there anyway."
    end
  end

end
