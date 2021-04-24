# 7-1
# 問１
=begin
def order
  puts "カフェラテをください"
end
order
# 7-2
# 問２
def area(x)
  x * x
end
puts area(3)
# 問３
def dice
  [1,2,3,4,5,6].sample
end
dice
# 7-3
# 問４
def order(drink)
  puts "#{drink}をください"
end
order("カフェラテ")
order("モカ")
# 問５
def dice
  x = [1,2,3,4,5,6].sample
  if x = 1
    puts "もう一回"
    x = [1,2,3,4,5,6].sample
  end
end
dice
# 7-4
# 問６
def price(item:)
  if item == "コーヒー"
    puts 300
  else item == "カフェラテ"
    puts 400
  end
end
price("コーヒー")
# 問７
def price(item:, size:)
  items = {"コーヒー" => 300, "カフェラテ" => 400}
  sizes = {"ショート" => 0, "トール" => 50, "ベンティ" => 100}
  items[item] + sizes[size]
end
puts price(item: "コーヒー", size: "トール")
=end
# 問８
def price(item:, size: "ショート")
  items = {"コーヒー" => 300, "カフェラテ" => 400}
  sizes = {"ショート" => 0, "トール" => 50, "ベンティ" => 100}
  items[item] + sizes[size]
end
puts price(item: "コーヒー")
# 7-5
# 問９
def order(drink:)
  puts "#{drink}をください"
end

order(drink: "コーヒー")
