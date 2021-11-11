def filterRangeInPlace arr,a,b
  mang1 = Array.new
  mang2 = Array.new
  0.upto a-2 do |item|
    mang1.push(arr[item])
  end
  p mang1
  b.upto arr.length - 1 do |item|
    mang2.push(arr[item])
  end
  p mang2
  p arr- mang1 - mang2
end
arr = [1,2,3,4,5,6,7,8,9,10]
filterRangeInPlace arr,4,8
