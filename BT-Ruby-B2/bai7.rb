a = (2000..3000).to_a
arr = []
0.upto a.length-1 do |i|
  if (a[i]%7 == 0 && a[i]%5 == 1)
    arr.push(a[i])
  end
end

chuoi = ""
0.upto arr.length-1 do |i|
  chuoi += arr[i].to_s + ","
end

p chuoi
