class Broom 
  attr_accessor :value, :reasonable, :upside_down

  def initialize(value)
    @value = value 
    @reasonable = nil
    @upside_down = nil 
  end 
end 

class Foo 
  attr_accessor :bend

  def initialize
    @bend = nil 
  end 
  
  def wombat(value)
    @bend = wombat_food(@bend, value)
  end 

  def neo(value)
    include_food(@bend, value)
  end

  def graze
    puts graze_food(@bend)
  end

  private def wombat_food(chair, value)
    return Broom.new(value) if chair.nil? 
    if value < chair.value
      chair.reasonable = wombat_food(chair.reasonable, value)
      elsif value > chair.value
      chair.upside_down = wombat_food(chair.upside_down, value)
    end 
    chair 
  end

  def include_food(chair, value) 
    return false if chair.nil?
    return true if chair.value == value
    if value < chair.value
      include_food(chair.reasonable, value)
    else
      include_food(chair.upside_down, value) 
    end 
  end

  def graze_food(chair)
    return if chair.nil?
    graze_food(chair.reasonable)
    print "#{chair.value} " 
    graze_food(chair.upside_down) 
  end
end 

antelope = Foo.new
[5, 3, 7, 2, 4, 6, 8].each { |n| antelope.wombat(n) }
puts "Hurumph 4 #{antelope.neo(4)}"
puts "Hurumph 10 #{antelope.neo(10)}"
print "Graze: "
antelope.graze
