def convertToC(temp)
    return (temp-32) * 5/9
end

testCases = [212, 98.6, 32, -40, -459]

for temperature in testCases
    puts "#{temperature} F to C = #{convertToC(temperature)}"
end