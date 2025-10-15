class Zip
  attr_accessor :code
  def initialize(code); @code = code; end
end

class City
  attr_accessor :zip
  def initialize(zip); @zip = zip; end
end

class Address
  attr_accessor :city
  def initialize(city); @city = city; end
end

class Profile
  attr_accessor :address
  def initialize(address); @address = address; end
end

class User
  attr_accessor :profile
  def initialize(profile); @profile = profile; end
end

user = User.new(Profile.new(Address.new(City.new(Zip.new("97403")))))
puts user.profile.address.city.zip.code