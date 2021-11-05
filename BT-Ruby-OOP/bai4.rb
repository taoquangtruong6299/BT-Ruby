class QuanLy
  attr_accessor :sbd, :ten, :diachi, :mucuutien
  def initialize(sbd,ten,diachi,mucuutien)
    @sbd = sbd
    @ten = ten
    @diachi = diachi
    @mucuutien = mucuutien
  end
end

$hs_array = Array.new
$hs_array = [
  QuanLy.new(1234,"truong1","quangnam","A"),
  QuanLy.new(12345,"truong21","quangnam","B")
]
$search_result_array = Array.new
class TuyenSinh
  def main
    continue = true
    while continue
      puts "----------------------------------"
      puts "Lua chon chuc nang"
      puts "[1].Them moi thi sinh"
      puts "[2].Hien thi thong tin cua thi sinh va khoi thi cua thi sinh"
      puts "[3].Tim kiem theo so bao danh"
      puts "[4].Thoat"

      case gets.chomp.to_i
        when 1
          p student_adding
        when 2
          p student_info
        when 3
          p student_search
        when 4
          exit
      end

      print "Ban co tiep tuc nhap khong (Y/N):"
      nhap = gets.chomp
      if (nhap.downcase == "y")
        continue = true
      else
        continue = false
      end
    end
    return $hs_array
  end

  def student_info
    return $hs_array
  end

  def student_adding
    print "Nhap so bao danh:"
    sbd = gets.chomp.to_i
    print "Nhap ten hoc sinh:"
    ten = gets.chomp.to_s
    print "Nhap dia chi:"
    diachi = gets.chomp.to_s
    print "Nhap muc uu tien:"
    mucuutien = gets.chomp.to_s
    $hs_array.push(QuanLy.new(sbd,ten,diachi,mucuutien))
    return $hs_array
  end

  def student_search
    print "Nhap so bao danh:"
    sobaodanh = gets.chomp.to_i
    $hs_array.each_with_index do
      |val,index|
      if (sobaodanh == val.sbd.to_i)
        $search_result_array.push(val)
      end
    end
    return $search_result_array
  end


end

tuyenSinh = TuyenSinh.new
tuyenSinh.main
# p tuyenSinh.student_info
