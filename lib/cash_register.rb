class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount if discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times {@items << title}
    @total += (price * quantity)
    @price = price
  end

  def apply_discount
    return "There is no discount to apply." if discount == nil
    discount = @discount.to_f/100
    @total = (@total - (@total * discount)).to_i
    "After the discount, the total comes to $#{@total}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @price
  end

end
