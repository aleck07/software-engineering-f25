numArray = [4, 2, 16, 5, 19, 5, 6, 2, 3, 5, 15, 4, 6, 10, 13, 1, 18, 6, 9, 10, 9,
12, 6, 9, 11, 18, 16, 18, 4, 9, 15, 7, 20, 12, 1, 4, 20, 17, 6, 12, 20,
19, 13, 10, 10, 7, 8, 2, 18, 20, 1, 7, 17, 3, 8, 10, 7, 1, 15, 7, 3, 13,
14, 12, 19, 13, 7, 17, 2, 14, 3, 17, 5, 12, 16, 6, 10, 15, 8, 2, 7, 1,
18, 16, 17, 12, 7, 14, 10, 17, 12, 19, 2, 20, 16, 7, 20, 16, 5, 7]


def getSum(array)
  sum = 0
  array.each do |num| 
    num += sum 
  end
  return sum 
end

def getAverage(array)
  sum = 0
  for num in array
    sum += num
  end
  average = sum / array.length()
  return average
end

def getOddsInSequence(array)
  count = 0
  array.each do |num|
    if num % 2 == 1
      count += 1
    end
  end
  return count 
end

def getAdjacentOdds(array)
  count = 0
  for num in array
    if array[num] % 2 == 1 and array[num - 1] % 2 == 1
      count += 1
    end
  end
  return count 
end

def testSum(array)
  return getSum(array) + getAverage(array) + getAdjacentOdds(array) + getOddsInSequence(array)
end


puts testSum(numArray)