# require './superhero.rb'
# require './supervillain.rb'

class Fight

  def initialize(hero, villain)
    @hero = hero
    @villain = villain
  end

  def fight_sequence
    options = ["punch", "kick", "hadouken", "superpunch", "p", "k", "h", "s"]

    while @hero.life > 0 && @villain.life > 0
      puts "** #{@hero.name} life: #{@hero.life}, #{@villain.name} life: #{@villain.life} **"
      puts "#{@hero.name}: We must stop #{@villain.name} from terrorizing the city!"
      sleep(1)
      puts "#{@hero.name}: #{@villain.name} still doesn't know we're here. We have the advantage!"
      sleep(0.5)
      puts "#{@hero.name}: what should our first move be?"

      input = gets.chomp.downcase

      until (options.include?(input))
        puts "#{@hero.name}: I don't quite know that move yet.."
        sleep(1)
        puts "#{@hero.name}: quickly! what move should I make?!"

        input = gets.chomp
      end

      case input
      when "p" || "punch"
        puts "#{@hero.name} leaps off of a building and lands skull crushing blow to #{@villain.name}"
        @villain.life -= 100
      when "k" || "kick"
        puts "#{@hero.name} starts showing his karate moves and strikes #{@villain.name}"
        @villain.life -= 20
      when "h" || "hadouken"
        puts "#{@hero.name} makes a crazy hadouken thing to #{@villain.name}"
        @villain.life -= 50
      when "s" || "superpunch"
        puts "#{@hero.name} shows how a superpunch is done and #{@villain.name} totally collapses."
        @villain.life -= 100
      end

      case rand(4)
      when 0
        puts "#{@villain.name} leaps off of a chair and lands a blow to #{@hero.name}"
        @hero.life -= 20
      when 1
        puts "#{@villain.name} starts showing his karate moves and strikes #{@hero.name}"
        @hero.life -= 50
      when 2
        puts "#{@villain.name} makes a crazy, crazy move and strikes #{@hero.name}"
        @hero.life -= 100
      when 3
        puts "#{@villain.name} distracts #{@hero.name} and then does a sucker punch."
        @hero.life -= 50
      end

    end

    if @hero.life == 0 && @villain.life == 0
      puts "Wow, you both beat each other to the death. Great."
    elsif @hero.life <= 0
      puts "Oh well #{@hero.name}, maybe next time"
    else
      puts "Congratulations #{@hero.name}, you've beat #{@villain.name}"
    end
  end
end
