require "date"
class Menu
  attr_accessor :name
  attr_accessor :price
  
  def info
    # 「#{}」の中身を埋めてください
    return "#{self.name} #{self.price}$"
  end

  def get_total_price(count)
    total_price = self.price*count
    if count >= 3
      total_price -= 1
    end

    if count>=1 && Menu.is_discount_today?
      total_price -=2
    end
    return total_price 

  end

  def initialize(name:,price:)
    self.name = name
    self.price = price
    
  end

  def Menu.is_discount_today?
    today = Date.today
    return today.sunday?

  end
  
end
puts Menu.is_discount_today?


