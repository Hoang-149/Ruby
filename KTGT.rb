class PTGT
    attr_accessor :id259, :hangSX259, :namSX259, :dongXe259, :giaBan259, :bienSo259, :mauXe259
    def initialize(id259, hangSX259, namSX259, dongXe259, giaBan259, bienSo259, mauXe259)
        @id259 = id259
        @hangSX259 = hangSX259
        @namSX259 = namSX259
        @dongXe259 = dongXe259
        @giaBan259 = giaBan259
        @bienSo259 = bienSo259
        @mauXe259 = mauXe259
    end
    def show
        puts "id: #{@id259}"
        puts "Hang SX: #{@hangSX259}"
        puts "Nam SX: #{@namSX259}"
        puts "Dong Xe: #{@dongXe259}"
        puts "Gia Ban: #{@giaBan259}"
        puts "Bien So: #{@bienSo259}"
        puts "Mau Xe: #{@mauXe259}"
    end
end

class Oto < PTGT
    attr_accessor :soChoNgoi259, :kieuDongCo259, :nhienLieu259, :soTuiKhi259, :ngayDangKiem259
    def initialize(id259, hangSX259, namSX259, dongXe259, giaBan259, bienSo259, mauXe259, soChoNgoi259, kieuDongCo259, nhienLieu259, soTuiKhi259, ngayDangKiem259)
        super(id259, hangSX259, namSX259, dongXe259, giaBan259, bienSo259, mauXe259)
        @soChoNgoi259 = soChoNgoi259
        @kieuDongCo259 = kieuDongCo259
        @nhienLieu259 = nhienLieu259
        @soTuiKhi259 = soTuiKhi259
        @ngayDangKiem259 = ngayDangKiem259
    end
    def show
        super
        puts "So Cho Ngoi: #{@soChoNgoi259}"
        puts "Kieu Dong Co: #{@kieuDongCo259}"
        puts "Nhien Lieu: #{@nhienLieu259}"
        puts "So Tui Khi: #{@soTuiKhi259}"
        puts "Ngay Dang Kiem: #{@ngayDangKiem259}"
    end
end

class XeMay < PTGT
    attr_accessor :congSuat259, :dungTichBinhXang259
    def initialize(id259, hangSX259, namSX259, dongXe259, giaBan259, bienSo259, mauXe259, congSuat259, dungTichBinhXang259)
        super(id259, hangSX259, namSX259, dongXe259, giaBan259, bienSo259, mauXe259)
        @congSuat259 = congSuat259
        @dungTichBinhXang259 = dungTichBinhXang259
    end
    def show
        super
        puts "Cong Suat: #{@congSuat259}"
        puts "Dung Tich Binh Xang: #{@dungTichBinhXang259}"
    end
end

class XeTai < PTGT
    attr_accessor :trongTai259
    def initialize(id259, hangSX259, namSX259, dongXe259, giaBan259, bienSo259, mauXe259, trongTai259)
        super(id259, hangSX259, namSX259, dongXe259, giaBan259, bienSo259, mauXe259)
        @trongTai259 = trongTai259
    end
    def show 
        super
        puts "Trong Tai: #{@trongTai259}"
    end
end

class QLPTGT
    attr_accessor :dsptgt259

    def initialize()
        @dsptgt259 = []
    end
    
    def themPTGT(ptgt259)
        @dsptgt259 << ptgt259
    end

    def timKiemByHangSX(keyword259)
        rs259 = @dsptgt259.select{|ptgt259| ptgt259 if ptgt259.hangSX259.upcase.include? keyword259.upcase}
        return rs259
    end

    def timKiemByMau(keyword259)
        rs259 = @dsptgt259.select{|ptgt259| ptgt259 if ptgt259.mauXe259.upcase.include? keyword259.upcase}
        return rs259
    end

    def timKiemByBienSo(keyword259)
        rs259 = @dsptgt259.select{|ptgt259| ptgt259 if ptgt259.bienSo259.upcase.include? keyword259.upcase}
        return rs259
    end

    def delete(id259)
        @dsptgt259.each do |pt|
            if pt.id259 == id259
                @dsptgt259.delete(pt)
                return true
            end
        end
        return false
    end

    def show_list
        @dsptgt259.each {|ptgt259| ptgt259.show}
    end
end

qlptgt259 = QLPTGT.new

while true
    puts "1. Them moi phuong tien giao thong."
    puts "2. Tim kiem theo hang san xuat."
    puts "3. Tim kiem theo mau xe."
    puts "4. Tim kiem theo bien so."
    puts "5. Hien thi danh sach phuong tien."
    puts "6. Xoa phuong tien giao thong."
    puts "7. Thoat."
    print "Xin moi chon: "
    option259 = gets.to_i
    case option259
    when 1
        puts "Nhap thong tin phuong tien:"
        print "Nhap id: "
        id259 = gets.to_i
        print "Nhap hang san xuat: "
        hangSX259 = gets
        print "Nhap nam san xuat: "
        namSX259 = gets.to_i
        print "Nhap dong xe: "
        dongXe259 = gets
        print "Nhap gia ban: "
        giaBan259 = gets
        print "Nhap mau xe: "
        mauXe259 = gets
        print "Nhap bien so: "
        bienSo259 = gets
        option_pt259 = 0
        while option_pt259<1 || option_pt259>4
            puts "1. O to."
            puts "2. Xe may."
            puts "3. Xe tai."
            print "Chon loai phuong tien: "
            option_pt259 = gets.to_i
            case option_pt259
            when 1
                print "Nhap so cho ngoi: "
                soChoNgoi259 = gets.to_i
                print "Nhap kieu dong co: "
                kieuDongCo259 = gets
                option_nhienLieu259 = 0
                while option_nhienLieu259 <1 || option_nhienLieu259 >2
                    puts "1. Xang."
                    puts "2. Dau."
                    print "Chon nhien lieu: "
                    option_nhienLieu259 = gets.to_i
                    case option_nhienLieu259
                    when 1
                        nhienLieu259 = "Xang"
                    when 2
                        nhienLieu259 = "Dau"
                    end    
                end
                print "Nhap so tui khi: "
                soTuiKhi259 = gets.to_i
                print "Nhap ngay dang kiem: "
                ngayDangKiem259 = gets
                qlptgt259.themPTGT(Oto.new(id259, hangSX259, namSX259, dongXe259, giaBan259, bienSo259, mauXe259, soChoNgoi259, kieuDongCo259, nhienLieu259, soTuiKhi259, ngayDangKiem259))
            when 2
                print "Nhap dung tich binh xang: "
                dungTichBinhXang259 = gets
                print "Nhap cong suat: "
                congSuat259 = gets
                qlptgt259.themPTGT(XeMay.new(id259, hangSX259, namSX259, dongXe259, giaBan259, bienSo259, mauXe259, congSuat259, dungTichBinhXang259))
            when 3
                print "Nhap trong tai: "
                trongTai259 = gets
                qlptgt259.themPTGT(XeTai.new(id259, hangSX259, namSX259, dongXe259, giaBan259, bienSo259, mauXe259, trongTai259))
            end
        end              
        when 2
            print "Nhap hang san xuat can tim: "
            keyword259 = gets
            rs259 = qlptgt259.timKiemByHangSX(keyword259)
            rs259.each {|pt259| pt259.show}
        when 3
            print "Nhap mau can tim: "
            keyword259 = gets
            rs259 = qlptgt259.timKiemByMau(keyword259)
            rs259.each {|pt259| pt259.show}
        when 4
            print "Nhap bien so can tim: "
            keyword259 = gets
            rs259 = qlptgt259.timKiemByBienSo(keyword259)
            rs259.each {|pt259| pt259.show}
        when 5
            puts "Danh sach phuong tien giao thong: "
            qlptgt259.show_list
        when 6
            print "Nhan id phuong tien can xoa: "
            delete259 = gets.to_i
            isDeleted259 = qlptgt259.delete(delete259)
            if (isDeleted259 == true)
                puts "Da xoa"
            else
                puts "Co loi. Xoa khong thanh cong"
            end
            # qlptgt259.show_list
        when 7
            break
    end
end