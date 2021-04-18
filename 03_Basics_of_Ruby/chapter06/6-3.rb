# ハッシュを繰り返し処理する
menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu.each do |key, value|
  puts "#{key}は#{value}円です"
end

# キーだけを繰り返し処理する
menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu.each_key do |key|
  puts key
end
