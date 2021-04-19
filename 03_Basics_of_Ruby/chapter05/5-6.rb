# 配列の各要素を変換した配列を作る
result = [1, 2, 3].map do |x|
  x * 2
end
p result

# mapでオブジェクトの種類を変える
result = [100, 200, 300].map do |x|
  "#{x}円"
end
p result
