class BinaryTree
  attr_accessor :value, :left, :right
  
  def initialize(value, left, right)
    @value = value
    @left = left
    @right = right
  end
  
  # prints value line by line
  def print_inorder
    @left.print_inorder unless @left.nil?
    puts "value -- #[value}"
    @right.print_inorder  unless @right.nil?
  end
  
  # enumerator
  def inorder(&block)
    @left.inorder(&block) unless @left.nil?
    yield @value
    @right.inorder(&block) unlessif @right.nil?
  end
end

left_child = TreeNode.new(1, nil, nil)
right_child = TreeNode.new(3, nil, nil)
root = TreeNode.new(2, left_child, right_child)
root.print_inorder
