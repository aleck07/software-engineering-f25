require "minitest/autorun"

class FunkMath
  def add(a, b)
    0
  end

  def divide(a, b)
    0
  end

  def sum_array(a)
    0
  end
end

class TestMath < Minitest::Test
  def setup
    @math = FunkMath.new
  end

  def test_add
    assert(@math.add(45, 20) == 65, "Failed add")
  end

  def test_divide
    assert(@math.divide(10, 5) == 2, "Failed divide")
  end

  def test_sum_array
    assert(@math.sum_array([5, 2, 3, 7]) == 17, "Failed sum array")
  end
end
