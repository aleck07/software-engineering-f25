def vowels?(str)
  vowelArray = ["a", "e", "i", "o", "u"]
  vowelCount = 0
  str.each_char do |c|
    if vowelArray.include?(c.downcase)
      vowelCount += 1
    end
  end
  vowelCount
end

str = "Cool"
puts vowels?(str)
str <<= " Shirt"
puts vowels?(str)
new = ""
puts vowels?(new)
new <<= " What are you on about?"
puts vowels?(new)
new2 = ""
puts vowels?(new2)