# Name Mangler

@name = "Johanna Jackson"

# Mangle the name by reversing it 
def modified_name
  # Reverse the first and last name in the string
  @name.split.reverse.join(' ')
end

# Mangle the name by borgifying it
def borg_name
  # Reverse the first and last name then add Borg on the end.
  _name = @name.split.reverse << "Borg"
  _name.join(' ')
end

puts "New name: #{modified_name}"
puts "New borg name: #{borg_name}"