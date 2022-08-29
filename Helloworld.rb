print "Hello Hoàng Minh Thắng 1911505310259 \n"
print

puts "Nhập một số tùy ý: " 
number = gets
puts "Số vừa nhập là #{number}"

puts("Nhập 2 số: ")
b,c = gets.split

puts("Số lớn hơn là: #{b.to_f > c.to_f ? b : c }")