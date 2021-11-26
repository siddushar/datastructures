class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
end

class LinkedList

  # Push to the end of the list
  def push(value)
    curr_node = @head

    while curr_node.next_node != nil
      curr_node = curr_node.next_node
    end
    curr_node = Node.new(value, nil)
  end
  
  # Add a new node in the front
  def to_front(value)
    new_node = Node.new(value, nil)
    if @head == nil
      @head = new_node
    else
      curr_node = new_node
      curr_node.next_node = @head
      @head = curr_node
    end
  end
  
  # Remove the last element from the list
  def pop
    return if @head == nil
    
    curr_node = @head
     while curr_node.next_node.next_node != nil
       curr_node = curr_node.next_node
     end
    last_node = curr_node.next_node
    curr_node.next_node = nil
    last_node
  end
  
  # Remove the first element from the list
  def remove_first
    return if @head == nil
    
    curr_node = @head
    new_head = @head.next_node
    @head.next = nil
    @head = new_head
    curr_node
  end
  
  # Insert at specific place
  def insert_at(value, index)
    curr_node = @head
    (index-1).times do 
      raise "List not long enough" if current.nil?
      curr_node = curr_node.next_node
    end
    
    new_node = Node.new(value, nil)
    new_node.next_node = curr_node.next_node
    curr_node.next_node = new_node
  end
  
  # Delete at
  
  def delete_at(index)
    curr_node = @head
    
  end
  
  
end
