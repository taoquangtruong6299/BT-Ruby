so_ngau_nhien = rand(1000..9999).to_s
p so_ngau_nhien

correct = true
so_luot = 0
while correct
  cow = 0
  bull = 0
  print "Nhap so ban doan:"
  num = gets.chomp
  0.upto 3 do |i|
    if (so_ngau_nhien[i] == num[i])
        cow += 1
    else
        bull += 1
    end
  end
    p "Cow: #{cow}"
    p "Bull: #{bull}"
    so_luot += 1
    if (cow == 4)
      p "Correct in #{so_luot} luot"
      correct = true
      p so_ngau_nhien
    end
end
