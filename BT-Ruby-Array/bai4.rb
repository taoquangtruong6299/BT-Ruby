def camelize str
  mang = Array.new
  i = 0
  kytu = ""
  0.upto str.length - 1 do |item|
    if str[item] == "-"
      mang.push(str[i..item-1])
      i = item + 1
    end
  end
  mang.push(str[i..str.length-1])
  mang.each do |value|
    kytu += value.to_s

  end
  p kytu
end

camelize "my-short-string"
