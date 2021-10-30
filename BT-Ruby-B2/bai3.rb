print "nhap Up:"
up  = gets.chomp.to_i
print "nhap Down:"
down = gets.chomp.to_i
print "nhap left:"
left = gets.chomp.to_i
print "nhap right:"
right = gets.chomp.to_i

y = (down-up).abs
x = (left -right).abs
khoangcach = Math.sqrt(y**y + x**x).to_i
p "Dau ra la:#{khoangcach}"
