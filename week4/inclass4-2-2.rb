class SidewinderJoystick
  BUTTON_UP = 2
  BUTTON_DOWN = 3

  def get_x_axis(stick_id) # returns -1.0 to 1.0
  def get_y_axis(stick_id) # returns -1.0 to 1.0
  def button(button_id)  # Returns BUTTON_UP or BUTTON_DOWN
end

class XboxGamepad
  def get_x_axis(stick_id) # returns -128 to 127
  def get_y_axis(stick_id) # returns -128 to 127
  def button_status(button_id)  # float from 0.0 (up) to 1.0 (down)
end

class WrappedSidewinderJoystick
  def initialize
    @sidewinder = SidewinderJoystick.new
  end

  def get_x_axis(button_id)
    @sidewinder.get_x_axis(button_id)
  end

  def get_y_axis(button_id)
    @sidewinder.get_y_axis(button_id)
  end

  def is_laser_pressed
    if @sidewinder.button(1) == "BUTTON_DOWN"
      return true
    else 
      return false
    end
  end
end

class WrappedXboxGamepad
  def initialize
    @xboxGamepad = XboxGamepad.new
  end
  def get_x_axis(button_id)
    value = @xboxGamepad.get_x_axis(button_id)
    if value > 0 
      return value/128
    else
      return value/127
  end
  
  def get_y_axis(button_id)
    value = @xboxGamepad.get_y_axis(button_id)
    if value > 0
      return value/128
    else
      return value/127
    end
  end

  def is_laser_pressed()
    if @xboxGamepad.button_status(1) > 0
      return true
    else
      return false
    end 
  end
end

class Player
  def initialize()
    @x = 0
    @y = 0
    @joystick

    if config.joystick == "SIDEWINDER"
      @joystick = WrappedSidewinderJoystick.new
    elsif config.joystick == "XBOX"
      @joystick = WrappedXboxGamepad.new
    end
  end

  def update()   # called every game frame
    @x += @joystick.get_x_axis
    @y += @joystick.get_y_axis

    if @joystick.is_laser_pressed
      self.fire_lasers()
    end

    self.update_graphics()
  end

  # ...

end

p = Player.new()