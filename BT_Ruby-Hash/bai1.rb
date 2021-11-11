#arr = [{:tuvung => "eat",:loaitu => "dongtu",:nghia => "an",:vidu => "I eat foood"}]


class TuDien
  attr_accessor :tuvung, :loaitu, :nghia, :vidu

  $tudien =
      {:tuvung => "eat",:loaitu => "dongtu",:nghia => "an",:vidu => "I eat foood"},
      {:tuvung => "sleep ds",:loaitu => "dongtu",:nghia => "ngu",:vidu => "I sleep"},
      {:tuvung => "sleep",:loaitu => "dongtu",:nghia => "ngu",:vidu => "I sleep"}

  def timkiem
    #
    p $tudien[1][:tuvung]
    print "Nhap tu vung:"
    tuvung = gets.chomp
    0.upto $tudien.length - 1 do |i|
      if tuvung == $tudien[i][:tuvung]
        p  $tudien[i]
      end
    end
    p "Similar word:"
    0.upto $tudien.length - 1 do |i|
      if $tudien[i][:tuvung][tuvung]
        p  $tudien[i]
     end
    end
  end

end

a = TuDien.new
a.timkiem
#tudien = Hash.new
