print "Nhap ten:"
name = gets.chomp
print "Nhap tuoi:"
age = gets.chomp.to_i

nam = Time.now.year - age + 100
print "Nam sinh ban tron 100 tuoi: #{nam}"
