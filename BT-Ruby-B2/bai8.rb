print "Nhap D:"
d = gets.chomp
arr = []
n = 0
0.upto d.length-1 do |i|
  if(d[i] == ",")
    arr.push(d[n..(i-1)])
    n = i+1
  end

end

arr.push(d[n..(d.length-1)])
p arr

0.upto arr.length-1 do |i|
  q = Math.sqrt((2*50*arr[i].to_i)/30).to_i
  p q
end
