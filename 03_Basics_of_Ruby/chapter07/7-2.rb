# 引数を使ってオブジェクトを渡せるメソッドを定義する
def area(x)
  x * x
end

puts area(2)

# ２つ以上の引数を持つメソッドを定義する
def area(x, y)
  x * y
end

puts area(2, 3)

# メソッドを途中で終わらせる
def thanks_and_receipt
  puts "ありがとうございました。"
  return
  puts "こちら、レシートになります。" # この行は実行されない
end

thanks_and_receipt

def thanks_and_receipt(receipt)
  greeting = "ありがとうございました。"
  unless receipt
    return greeting
  end
  greeting +  "こちら、レシートになります。"
end

puts thanks_and_receipt(true)
puts thanks_and_receipt(false)
