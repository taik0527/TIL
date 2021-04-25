# 継承
=begin
class Item
  def name
    @name
  end
  def name=(text)
    @name = text
  end
end

class Drink < Item
  def size
    @size
  end
  def size=(text)
    @size = text
  end
end

item = Item.new
item.name = "マフィン"

drink = Drink.new
drink.name = "カフェオレ"
drink.size = "tall"
puts "#{drink.name} #{drink.size}サイズ"
=end
# 親クラスのメソッドを呼び出す - super -
class Item
  def name
    @name
  end
  def name=(text)
    @name = text
  end
  def full_name
    @name
  end
end

class Drink < Item
  def size
    @size
  end
  def size=(text)
    @size = text
  end
  def full_name
    super
  end
end

drink = Drink.new
drink.name = "カフェオレ"
drink.size = "tall"
puts drink.full_name
