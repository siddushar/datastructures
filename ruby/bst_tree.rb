class Tree
  attr_accessor :value, :left, :right
  
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end


class BST
  attr_accessor :root, :size
  def initialize()
    @root = nil
    @size = 0;
  end
  
  def insert(value)
    if @root == nil
      @root = Tree.new(value)
    else
      current_node = @root
      prev_node = @root
      
      while(current_node != nil)
        prev_node = current_node
        
        if value < current_node.value
          current_node = current_node.left
        else
          current_node = current_node.right
        end
      end #end while
      if value < prev_node.value
        prev_node.left = Tree.new(value)
      else
        prev_node.right = Tree.new(value)
      end
    end
    
    @size +=1
  end
  
  def find_max(node= @root)
    if node == nil
        return nil
    elsif node.right == nil
        return node
    end
    find_max(node.right)
  end
  
  def find_min(node= @root)
    if node == nil
        return nil
    elsif node.left == nil
        return node
    end
    find_min(node.left)
  end
  
 def contains?(value, node = @root)
   if node == nil
     return false
   elsif value < node.value
     return contains?(value, node.left)
   elsif value > node.value
     return contains?(value, node.right)
   else
     return true
   end
 end
  
  def print_in_order(node = @root)
    if node != nil
        print "("
        print_in_order(node.left)
        print ", #{node.value}, "
        print_in_order(node.right)
        print ")"
    end
  end
  
  def remove(value, node = self.root)
    removeHelper(value, node = self.root)
    @size -= 1
    node
  end

  private


  def removeHelper(value, node = self.root)
    if node == nil
      return nil
    end
    if node.value > value
        node.left = removeHelper(value, node.left)
    elsif node.value < value
        node.right = removeHelper(value, node.right)
    else
      if node.left != nil && node.right != nil
            temp = node
            min_of_right_subtree = find_min(node.right)
            node.value = min_of_right_subtree.value
            node.right = removeHelper(min_of_right_subtree.value, node.right)
        elsif node.left != nil
            node = node.left
        elsif node.right != nil
            node = node.right
        else
            node = nil
        end
    end
    return node
end

  
end
