puts "Nhap mat khau"
matkhau = gets.chomp
arr = []
j = 0
0.upto matkhau.length-1 do |i|
  if(matkhau[i] == ",")
    arr.push(matkhau[j..(i-1)])
    j = i+1
  end
end

arr.push(matkhau[j..(matkhau.length-1)])
0.upto (arr.length-1) do |n|
  aToz = false
  num = false
  aAtoZ = false
  specialC = false
  space = true
  0.upto (arr[n].length-1) do |m|
    case arr[n][m]
    when ('a'..'z')
      aToz = true
    when ('0'..'9')
        num = true
    when ('A'..'Z')
        aAtoZ = true
    when '$','#','@'
        specialC = true
    when " "
        space = false
    end
  end
  if(aToz && num && aAtoZ && specialC && space && arr[n].length < 13)
    p "Invalid password: #{arr[n]}"
  end
end
