class Item
  attr_accessor :name, :price

  def initialize(name,price)
    @name = name
    @price = price
    binding.pry
    Application.all_items << self
  end
end
