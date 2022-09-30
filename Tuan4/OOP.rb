class Officer 
    attr_accessor :name,:age,:gender,:address
    def initialize name,age,gender,address
        @s_name=name
        @s_age=age
        @s_gender=gender
        @s_address=address
    end
    def display
        puts " Ten : #{@s_name}"
        puts " tuoi: #{@s_age}"
        puts " gioi tinh: #{@s_gender}"
        puts "dia chi #{@s_address}"
    end
end
class Congnhan < Officer
    attr_accessor :level
    def initialize name,age,gender,address,level
        super(name,age,gender,address)
        @s_level=level
    end
    def display
        super()
        puts " bac luong : #{@s_level}"
    end
end
class Kysu < Officer
    attr_accessor :branch
    def initialize name,age,gender,address,branch
        super(name,age,gender,address)
        @s_branch=branch
    end
    def display
        super()
        puts " nganh dao tao: #{@s_branch}"
    end
end
class QLCB
    attr_accessor :ds
    def initialize 
        @ds = Array.new
    end
    def AddOfficer s_name,s_age,s_gender,s_address
        canbo = Officer.new(s_name,s_age,s_gender,s_address)
        @ds.push(canbo)
    end
    def searchByName name
        lenght = @ds.length
        for i in 0..lenght do
            # if @danhSachCanBo[i].getName == name
            #     @danhSachCanBo[i].display
            # end
            # @danhSachCanBo[i].name
            @ds[i].display
        
    end
    end
end

class Main
    dem=0
    quanlycb=QLCB.new()
    until dem==1 do
       puts "3. them"
       puts "2. tim kiem"
       puts "1. thoat"
       dem=gets
       if dem.to_i ==1
            exit
        end
        if dem.to_i == 3
            print " Nhap ten :"
            s_name=gets
            print "nhap tuoi: "
            s_age=gets
            print "gioi tinh: "
            s_gender =gets
            print "dia chi: "
            s_address=gets
            quanlycb.AddOfficer(s_name,s_age,s_gender,s_address)
        end
        if dem.to_i == 2
            print "Nhap ten: "
            ten = gets
            quanlycb.searchByName(ten)
        end
    end
end