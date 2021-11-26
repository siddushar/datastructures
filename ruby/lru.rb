
class Node
  attr_accessor :value, :next_node, :prev_node
  
  def initialize(value, prev_node, next_node)
    @value = value
    @next_node = next_node
    @prev_node = prev_node
  end
end

class LRU
  attr_accessor :head, :tail, :max_items, :num_items
  
  def initialize(max_items)
    @max_items = max_items
    @head = nil
    @tail = nil
    @num_items = 0
    @table = {}
  end
  
  def set(key, value)
    @num_items += 1
    if @num_items > @max_items
      @head = @head.next_node
    end

    new_node = Node.new value, @tail, nil
    @head = new_node if tail == nil 
    @tail.next_node = new_node if @tail != nil
    @tail = new_node
    @table[key] = new_node 
  end
  
  def get(key)
    res = @table[key]
    return res if res.next_node == nil

    if res.prev_node != nil
      res.prev_node.next_node = res.next_node
    else
      @head = res.next_node
      @head.prev_node = nil
    end

    @tail.next_node = res
    res.next_node = nil
    res.prev_node = @tail
    @tail = res
  end
end
  
lru = LRU.new(3)
lru.set('a', 1)
lru.set('b', 2)
lru.set('c', 3)
puts lru.head.value
lru.get('a')
puts lru.head
lru.get('b')
puts lru.head
lru.get('c')
puts lru.head
lru.set('d', 8)
lru.set('e', 9)
puts lru.head

# The hash table’s keys consist of the keys for our cache and values are actually nodes within the doubly linked list.
# We always keep track of the head and tail of this list. When we want to get a value out this cache, we look for that 
# key in the hash table and return the associated node from the doubly linked list. In addition, we move that node from 
# wherever it is in the list to the very back of the list. This makes sure that the least recently used item is always 
# at the very front of the list. So, when we want to insert a new item into our cache and the cache is full, we simply 
# pop off an item from the front of the list.
