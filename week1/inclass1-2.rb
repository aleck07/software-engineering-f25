# Do this "by hand" using loops and variables, not using Ruby built-in functions such as sum().

# Importantly, use the worst possible variable names you can come up with. Don't hold back. I'm talking the least descriptive, least useful, most misleading names you can conjure.

# Finally, put steps 1-4 in random order (of your choosing) in your code. They're not dependent on one another, so they can occur in any order.

#     Compute the sum of the numbers and store this aside.
#     Compute the average and store that aside.
#     Count the number of odd numbers in the sequence and store that aside.
#     Count the number of times two adjacent indices in the list both contain odd numbers and store that aside.
#     Print out the sum of the results from steps 1-4.

# Remember! Use the worst possible variable names you can come up with.

loserList = [4, 2, 16, 5, 19, 5, 6, 2, 3, 5, 15, 4, 6, 10, 13, 1, 18, 6, 9, 10, 9, 12, 6, 9, 11, 18, 16, 18, 4, 9, 15, 7, 20, 12, 1, 4, 20, 17, 6, 12, 20, 19, 13, 10, 10, 7, 8, 2, 18, 20, 1, 7, 17, 3, 8, 10, 7, 1, 15, 7, 3, 13, 14, 12, 19, 13, 7, 17, 2, 14, 3, 17, 5, 12, 16, 6, 10, 15, 8, 2, 7, 1, 18, 16, 17, 12, 7, 14, 10, 17, 12, 19, 2, 20, 16, 7, 20, 16, 5, 7]

def addNumbersThenDivideByTheLengthOfNumbersArray(long_list_of_random_numbers)
  aon = 0
  for letter in long_list_of_random_numbers
    aon += letter
  end
  return aon/long_list_of_random_numbers.length()
end

def aon(divineSubsetOfGlorifiedNumbers)
  glory = 0
  for int_divine in divineSubsetOfGlorifiedNumbers
    glory += int_divine
  end
  return glory
end

def doTheOddPeoplePairUp(goofyObject)
  int_how_many_drunks = 0
  for person in 0...goofyObject.length()-1
    if goofyObject[person] % 2 == 1 and goofyObject[person+1] % 2 == 1
      int_how_many_drunks += 1
    end
  end
  return int_how_many_drunks
end

def oddPeopleInAnIcecreamLine(icecreamFlavor)
  wackyLine = 0
  for duck in icecreamFlavor
    if duck % 2 == 1
      wackyLine += 1
    end
  end
  return wackyLine
end

a = aon(loserList)
frown = addNumbersThenDivideByTheLengthOfNumbersArray(loserList)
on = oddPeopleInAnIcecreamLine(loserList)
my = doTheOddPeoplePairUp(loserList)
face = a + frown + on + my

puts a, frown, on, my, face