class LList
  attr_accessor :data, :nextL
  def initialize(data, nextL)
    @data = data
    @nextL = nextL
  end

  def add(data)
    @nextL = LList.new(data,nil)
  end

  def append(data)
    l_node = self
    while(l_node.nextL != nil)
      l_node = l_node.nextL
    end
    l_node.add(data)
  end

  def delete(node)
    if node.class.eql? self.class
      l_node = self
      while((l_node.nextL != nil) && (node.object_id != l_node.nextL.object_id))
        l_node = l_node.nextL
      end

      l_node.nextL = l.nextL.nextL
    else
      l_node = self
      while((l_node.nextL != nil) && (node != l_node.nextL.data))
        l_node = l_node.nextL
      end

      l_node.nextL = l_node.nextL.nextL
    end
  end

  #This prints entire list from given pointer
  def print_all
    l_node = self
    while(l_node != nil)
      puts l_node.data
      l_node = l_node.nextL
    end
  end
end