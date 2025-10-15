class User
  attr_accessor :profile, :zip, :city, :address
  def initialize(profile, zip, city, address)
    @profile = profile
    @zip = zip
    @city = city
    @address = address
  end
end

user = User.new("some profile object", 97701, "Bend", "123 Rim Rock Way")
puts user.zip