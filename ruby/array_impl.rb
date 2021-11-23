
class MyArray

  def initialize()
    @length = 0
    @data = {}
  end

  def get(index)
    @data[index]
  end

  def push(item)
    @data[@length]= item
    @length +=1
  end

  def pop
    last_item = get(@length - 1)
    puts "sssss #{last_item}"
    @data.delete(last_item)
    @length -= 1
    last_item
  end

  def delete_index(index)
    item = @data[index]
    shift_items(index)
  end

  def shift_items(index)
    for i in index..@length-1
      @data[i] = @data[i+1]
    end
    @data.delete(@data[@length-1])
    @length -= 1
  end

end

class MyArray {
  constructor(){
    this.length= 0
    this.data={}
  }

  get(index) {

  }
}


new_arry = new MyArray()
puts new_arry
new_arry.push("hf")
new_arry.push("pi")
new_arry.push("pids")
new_arry.push("poopp")
puts new_arry.inspect

new_arry.pop()
puts new_arry.inspect

new_arry.delete_index(0)
puts new_arry.inspect
