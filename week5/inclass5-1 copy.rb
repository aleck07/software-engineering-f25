class Player
  attr_accessor :name, :hp, :str, :dex, :con, :int, :wis, :cha

  def initialize(name)
    @name = name
    @hp = 10
    @str = 9         # stats
    @dex = 12
    @con = 8
    @int = 18
    @wis = 10
    @cha = 2
    @armor = [
      {
        :name => "iron helmet",
        :ac => 8
      },
      {
        :name => "chain mail",
        :ac => 16           # armor class
      }
    ]
    @weapon = [ "short sword", "1d6" ]  # name, damage
  end

  def damage(p)
    @hp -= p
  end

  # And more functions here to handle stats, weapons, and armor
end

class Weapon
  attr_accessor :name, :damage

  def initialize(name, damage)
    @name = name
    @damage = damage
  end
end

class Armor
  attr_accessor :name, :ac

  def initialize(name, ac)
    @name = name
    @ac = ac
  end

  def compute_damage(base)
    # Pretend this is some complex thing with AC
  end
end

p = Player.new("Alfredo")
