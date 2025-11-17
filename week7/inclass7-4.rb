class GoogleWeatherAPI
    # Set the location for all subsequent queries
    #
    # Example: set_location(97701)
    def set_location(location)

    # Return the temperature on a given scale
    #
    # Example: get_temperature(GoogleWeatherAPI::CELCIUS)
    # Example: get_temperature(GoogleWeatherAPI::FAHRENHEIT)
    def get_temperature(scale)

    # Return the wind direction in degrees and speed in mph
    #
    # Example: get_wind() -> "190@8"
    def get_wind()

    # Return the sky conditions as a string
    #
    # Example: get_sky_conditions() -> "partly cloudy"
    def get_sky_conditions()
    
    end

class PirateWeatherAPI
    # Return the current temperature in Celcius for a given zipcode
    #
    # Example: current_temp(97701) -> 20
    def current_temp(location)

    # Convert a Celcius temperation to Fahrenheit
    #
    # Example c_to_f(21) -> 69.8
    def c_to_f(c)

    # Return the wind direction in degrees for a given zipcode
    #
    # Example: wind_dir(97701) -> 190
    def wind_dir(location)

    # Return the wind speed in kph for a given zipcode
    #
    # Example: wind_speed(97701) -> 8.2
    def wind_speed(location)

    # Return the sky conditions as a string for a given zipcode
    #
    # Example: sky_status(97701) -> "Partly cloudy; visibility 10 mi"
    def sky_status(location)

class UltimateWeatherAPI
  def initialize(api)
    if api == "google"
      @api = GoogleWeatherAPI.new
    elsif api == "pirate"
      @api = PirateWeatherAPI.new
    end
  end

  def set_location(location)
    if @api == GoogleWeatherAPI
      @api.set_location(location)
    elsif @api == PirateWeatherAPI
      @api.current_temp(location)
    end
  end

  def get_temperature(scale)
    if @api == GoogleWeatherAPI
      @api.get_temperature(scale)
    elsif @api == PirateWeatherAPI
      @api.c_to_f(@api.current_temp(location))
    end
  end

  def get_sky_conditions()
    if @api == GoogleWeatherAPI
      @api.get_sky_conditions()
    elsif @api == PirateWeatherAPI
      @api.sky_status(location)
    end
  end

  def get_wind()
    if @api == GoogleWeatherAPI
      @api.get_wind()
    elsif @api == PirateWeatherAPI
      dir = @api.wind_dir(location)
      speed_kph = @api.wind_speed(location)
      speed_mph = speed_kph * 0.621371
      "#{dir}@#{speed_mph.round}"
    end
  end
end
  
class Weather
  def initialize()
    @weather_api = UltimateWeatherAPI.new("google")
  end

  def weather_summary(zip)
    @weather_api.set_location(zip)
    temp = @weather_api.get_temperature(GoogleWeatherAPI::FAHRENHEIT)
    sky = @weather_api.get_sky_conditions()
    wind = @weather_api.get_wind()

    "#{zip} #{temp} #{sky} #{wind}"
  end
end

w = Weather.new

puts w.weather_summary(97701)
puts w.weather_summary(95959)
puts w.weather_summary(01772)