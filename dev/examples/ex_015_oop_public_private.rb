class Order
  def initialize(items)
    @items = items  # Array of hashes like: { name: "Item", price: 8.00 }
  end

  def total
    apply_tax(subtotal)
  end

  private

  def subtotal
    @items.sum { |item| item[:price] }
  end

  def apply_tax(amount)
    (amount * 1.1).round(2)  # 10% tax
  end
end

order = Order.new([{ name: "Notebook", price: 8.00 }, { name: "Pen", price: 2.00 }])
puts order.total         # => 11.0
# puts order.subtotal      # => Error: private method `subtotal' called
# puts order.apply_tax(10) # => Error: private method `apply_tax' called