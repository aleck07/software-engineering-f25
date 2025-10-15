class User
  attr_accessor :profile, :zip, :city, :address
  def initialize(profile, zip, city, address)
    @profile = profile
    @zip = zip
    @city = city
    @address = address
  end
end

# Old way
# user = User.new(Profile.new(Address.new(City.new(Zip.new("97403")))))
# puts user.profile.address.city.zip.code

# New way
user = User.new("some profile object", 97701, "Bend", "123 Rim Rock Way")
puts user.zip