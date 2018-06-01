class List
  attr_reader :todo_list

  def initialize
    @todo_list = []
  end

  def add(item)
    @todo_list << item
  end
end
