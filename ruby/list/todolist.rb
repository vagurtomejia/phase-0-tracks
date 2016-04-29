class TodoList
  def initialize(list)
    @list = list
  end
  def get_items
    @list
  end
  def add_item(item)
    @list << item
  end
  def delete_item(item)
    @list.delete(item)
  end
  def get_item(index)
    @list[index]
  end
end