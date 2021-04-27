# 9-1
# 問１
module ChocolateChip
  def chocolate_chip
    @name += "チョコレートチップ"
  end
end
# 問２
class Drink
  include ChocolateChip
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

drink = Drink.new("モカ")
puts drink.name
# 9-2
# 問３
module EspressoShot
  Price = 100
end
puts EspressoShot::Price
# 9-3
# 問４
require_relative "module_method"
puts WhippedCream.info
