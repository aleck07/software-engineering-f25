require "minitest/autorun"
require 'bigdecimal/util'

class MathOperations
		def add(a, b)
				a+b
		end

		def divide(a, b)
				a.to_f / b
		end

		def sum_array(a)
			  sum = 0
				for num in a do
						sum += num
				end
				sum
		end
end

class TestMath < Minitest::Test
		def setup
				@math = MathOperations.new
		end

		def test_add
				assert_equal(10, @math.add(8, 2))
		end

		def test_add_negatives
				assert_equal(3, @math.add(-4, 7))
		end

		def test_add_with_decimals
				assert_equal(8, @math.add(3.5, 4.5))
		end

		def test_divide
				assert_equal(4, @math.divide(8, 2))
		end

		def test_divide_with_negatives
				assert_equal(-7, @math.divide(42, -6))
		end

		def test_divide_with_decimals
				assert_equal(5.5, @math.divide(11, 2))
		end

		def test_sum_array
				assert_equal(20, @math.sum_array([10, 1, 4, 5]))
		end

		def test_sum_array_with_negatives
				assert_equal(2 , @math.sum_array([10, 1, -4, -5]))
		end

		def test_sum_array_with_decimals
				assert_equal(11.5, @math.sum_array([4.2, 5.3, 2]))
		end
end