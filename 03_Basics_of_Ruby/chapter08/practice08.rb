# 8-1
# 問１
=begin
p ({:coffee => 300, :caffe_latte => 400}).class
# 問２
p Hash.new
# 8-2
# 問３
class CaffeLatte
end
drink = CaffeLatte.new
p drink.class
# 8-3
# 問４
class Item
  def name
    "チーズケーキ"
  end
end

item = Item.new
p item.name
# 8-4
# 問５
class Item
  def name=(text)
    @name = text
  end
  def name
    @name
  end
end

item = Item.new
item.name = "チーズケーキ"
puts item.name

# 8-5
# 問６
class Item
  def initialize
    puts "商品を扱うオブジェクト"
  end
end
item = Item.new

# 問７
class Item
  def initialize(text)
    @name = text
  end
  def name
    @name
  end
end
item1 = Item.new("マフィン")
item2 = Item.new("スコーン")
puts item1.name
puts item2.name
# 8-6
# 問８
class Drink
  def self.todays_special
    "ホワイトモカ"
  end
end
puts Drink.todays_special
=end
# 8-7
# 問９
class Item
  def name
    @name
  end
  def name=(text)
    @name = text
  end
end
class Food < Item
end

food = Food.new
food.name = "チーズケーキ"
puts food.name
