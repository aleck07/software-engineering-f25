# Name Mangler

@name = "Johanna Jackson"

# Mangle the name by reversing it or borgifying it
def modified_name(choose)
  # Split the name into first and last in an array
  split_name = @name.split
  #reversed_twice = split_name.reverse.reverse
  #mangled_name = reversed_twice << "Mangled"
  #return mangled_name * 2
  # Reverse the array of name components so the array is [last, first]
  reversed_name_components = split_name.reverse
  # Rejoin the array of name components
  new_name1 = reversed_name_components.join(' ')
  # Store the mangled name
  @name = new_name1
  puts new_name1
  if choose
    # Split the name into last and first in an array
    split_name2 = new_name1.split
    # Reverse the array of name components so the array is [last, first]
    reversed_name_components2 = split_name2.reverse
    # Add borg to the end of the array
    reversed_name_components2 << "Borg"
    # Rejoin the array of name components
    new_name2 = reversed_name_components2.join(' ')
    puts new_name2
    @name = new_name2
  end
  return @name
end

puts "New name: #{modified_name(false)}"
puts "New borg name: #{modified_name(true)}"