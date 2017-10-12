class Item
  attr_accessor :name, :price

  def initialize(name,price)
    @name = name
    @price = price
    Application.all_items << self.name

  end
end
