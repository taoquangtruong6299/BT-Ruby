
class CanBo
  attr_accessor :name,:age,:sex,:address
  def initialize(name,age,sex,address)
    @name = name
    @age = age
    @sex = sex
    @address = address
  end
end

class CongNhan < CanBo
  attr_accessor :bac
  def initialize(bac)
    @bac = bac
  end
end

class KySu
  attr_accessor :nganh_dao_tao
  def initialize(nganh_dao_tao)
    @nganh_dao_tao = nganh_dao_tao
  end
end

class NhanVien
  attr_accessor :cong_viec
  def initialize(cong_viec)
    @cong_viec = cong_viec
  end
end

$canbo_array = Array.new
$search_result_array = Array.new
$canbo_array = [
  CanBo.new("truong",22,"nam","quangnam"),
  CanBo.new("huy",22,"nam","quangnam"),
  CanBo.new("truonh2",22,"nam","quangnam"),
  CanBo.new("truong3",22,"nam","quangnam"),
]



class QLCB
  def add_new
    print "Nhap ten:"
    name = gets.chomp.to_s
    print "Nhap tuoi:"
    age = gets.chomp.to_i
    print "Nhap gioi tinh:"
    sex = gets.chomp.to_s
    print "Nhap dia chi:"
    address = gets.chomp.to_s
    $canbo_array.push(CanBo.new(name,age,sex,address))
  end

  def search
    puts "Nhap ten:"
    name = gets.chomp.to_s
    $canbo_array.each_with_index do
      |data,index|
      if(name == data.name.to_s)
        $search_result_array.push(data)
      end
    end
    return $search_result_array
  end

  def danhsach
    $canbo_array.each_with_index do
      |data,index|
      $search_result_array.push(data)
    end
    return $search_result_array
  end
end




# p $canbo_array
quanly = QLCB.new
# p quanly.search
p quanly.danhsach
# p $search_result_array
