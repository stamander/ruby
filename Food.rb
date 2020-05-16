require "./Menu"

class Food < Menu
  # calorieというインスタンス変数を追加してください
  attr_accessor :calorie

  def info
    return "#{self.name},#{self.price}$,#{self.calorie}kal"
  end

  def initialize(name:,price:,calorie:)
    super(name: name, price: price)

    self.calorie = calorie
  end

end
