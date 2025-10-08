# 17

string = "Hello World!"

vowels = ["a", "e", "i", "o", "u"]
vowelCount = 0

string.each_char do |char|
  if vowels.any? {|element| element == char.downcase}
    vowelCount += 1
  end
end
puts vowelCount

=begin
string <<= " Maybe if you liked functions it would be easier to read."
vowelCount = 0

string.each_char do |char|
  if vowels.any? {|element| element == char.downcase}
    vowelCount += 1
  end
end
puts vowelCount

string = ""
vowelCount = 0

string.each_char do |char|
  if vowels.any? {|element| element == char.downcase}
    vowelCount += 1
  end
end
puts vowelCount

string <<= "Hi I'm a string :)"

string.each_char do |char|
  if vowels.any? {|element| element == char.downcase}
    vowelCount += 1
  end
end
puts vowelCount

string = "bcdfghjklmnpqrstvwx"
vowelCount = 0

string.each_char do |char|
  if vowels.any? {|element| element == char.downcase}
    vowelCount += 1
  end
end
puts vowelCount
=end