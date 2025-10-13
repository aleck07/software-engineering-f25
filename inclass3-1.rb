class Node
  attr_accessor :value, :left_child, :right_child

  def initialize(value)
    @value = value 
    @left_child = nil
    @right_child = nil 
  end 
end 

class BST
  attr_accessor :root

  def initialize
    @root = nil 
  end 
  
  def insert(value)
    @root = insert_recursive(@root, value)
  end 

  def search(value)
    find_value(@root , value)
  end

  def print_tree()
    puts print_recursive(@root)
  end

  private def insert_recursive(node, value)
    return Node.new(value) if node.nil? 
    if value < node.value
      node.left_child = insert_recursive(node.right_child, value)
    elsif value > node.value
      node.left_child = insert_recursive(node.right_child, value)
    end 
    node 
  end

  def find_value(node, value) 
    return false if node.nil?
    return true if node.value == value
    if value < node.value
      find_value(node.left_child, value)
    else
      find_value(node.right_child, value) 
    end 
  end

  def print_recursive(node)
    return if node.nil?
    print_recursive(node.left_child)
    print "#{node.value} " 
    print_recursive(node.right_child) 
  end
end 

antelope = BST.new
[5, 3, 7, 2, 4, 6, 8].each { |n| antelope.insert(n) }
puts "Hurumph 4 #{antelope.search(4)}"
puts "Hurumph 10 #{antelope.search(10)}"
print "Graze: "
antelope.print_tree
