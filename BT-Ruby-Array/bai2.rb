def sumInput
  arr = Array.new
  sum = 0
  continue = true
  while continue
    print "Nhap gia tri:"
    values = gets.chomp
    if values == ""
      continue = false
    end
    0.upto values.length - 1 do |i|
      case values[i]
        when ('a'..'z') && " "
          continue = false
          break
        when (0..9)
          continue = true
      end
    end
    arr.push(values)
    p arr
  end
  0.upto arr.length - 2 do |item|
    sum +=arr[item].to_i
  end
  p sum
end

sumInput
