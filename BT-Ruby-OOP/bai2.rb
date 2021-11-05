$thue_phong = Array.new
$person = Array.new
$search_result_array = Array.new


class Person
  attr_accessor :name, :age, :code
  def initialize name,age,code
    @name = name
    @age = age
    @code = code
  end
end


class Hotel < Person
  attr_accessor :date, :type_room
  def initialize(date, type_room)
    @date = date
    @type_room = type_room
  end
end

$person = [
  Person.new("truong",23,"12345"),
  Person.new("truong1",22,"123451")
]

$thue_phong = [
  Hotel.new(20,"A"),
  Hotel.new(30,"B"),
]

def add_new
  continue = true
  while continue
    print "Nhap so ngay muon thue:"
    date = gets.chomp.to_i
    print "Nhap loai phong:"
    type_room = gets.chomp.to_s
    print "Nhap ten:"
    name = gets.chomp
    print "Nhap tuoi:"
    age = gets.chomp.to_i
    print "Nhap cmnd:"
    code = gets.chomp
    new_thue = Hotel.new(date,type_room)
    new_person = Person.new(name,age,code)
    $thue_phong.push(new_thue)
    $person.push(new_person)
    print "Ban co tiep tuc nhap khong (Y/N):"
    nhap = gets.chomp
    if (nhap.downcase == "y")
      continue = true
    else
      continue = false
    end
  end

end

$person
def remove_old
  puts "Nhap chung minh"
  code = gets.chomp.to_s
  $person.each_with_index do
    |val, index|
    if (code == val.code.to_s)
      # puts "index: #{index} for #{val.code}"
      #$search_result_array.push(val)
      $person.delete(val)
      $thue_phong.delete($thue_phong[index])
    end
  end
  puts "Bam ENTER de tiep tuc"
  gets.chomp
end

# remove_old
# p $person
# p $thue_phong

def total
  total_price = 0
  puts "Nhap chung minh"
  code = gets.chomp.to_s
  $person.each_with_index do
    |val, index|
    if (code == val.code.to_s)
      if $thue_phong[index].type_room == "A"
        return total_price = $thue_phong[index].date * 500
      end
      if $thue_phong[index].type_room == "B"
        return total_price = $thue_phong[index].date * 400
      end
      if $thue_phong[index].type_room == "C"
        return total_price = $thue_phong[index].date * 200
      end
    end
  end
  puts "Bam ENTER de tiep tuc"
  gets.chomp
end

# p total
# p $person
# $person.each_with_index do
#   |val, index|
#   p val.code.to_s
#   p val
# end
