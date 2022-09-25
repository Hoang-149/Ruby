class Human
    @name_259;
    @hair_259;
    @age_259;
    @height_259;
    @weight_259;
    @email_259;
    @phone_259;
    @nation_259;
 
    def initialize(name_259, hair_259, age_259, height_259, weight_259, email_259, phone_259,nation_259)
       @name_259 = name_259;
       @hair_259 = hair_259;
       @age_259 = age_259;
       @height_259 = height_259;
       @weight_259 = weight_259;
       @email_259 = email_259;
       @phone_259 = phone_259;
       @nation_259 = nation_259;
    end
 
    attr_accessor :name_259, :hair_259, :age_259, :height_259, :weight_259, :email_259, :phone_259, :nation_259;
 
    def showInformation
       puts "\nName : #{name_259}||Hair: #{hair_259}||Age: #{age_259}||Height: #{height_259}||Weight: #{weight_259}||Email: #{email_259}||Phone: #{phone_259}||Nation: #{nation_259};"
     end
 end
 
 class Student < Human
    $code_259;
    $grade_1_259;
    $grade_2_259;
    $grade_3_259;
 
    def initialize(name_259, hair_259, age_259, height_259, weight_259, email_259, phone_259,nation_259, code_259, grade_1_259, grade_2_259, grade_3_259)
       super(name_259, hair_259, age_259, height_259, weight_259, email_259, phone_259,nation_259)
       @code_259 = code_259;
       @grade_1_259 = grade_1_259;
       @grade_2_259 = grade_2_259;
       @grade_3_259 = grade_3_259;
    end
 
    def code_259
       @code_259
    end
    def grade_1_259
       @grade_1_259
    end
    def grade_2_259
       @grade_2_259
    end
    def grade_3_259
       @grade_3_259
    end
    
    def code_259=(code_259)
       @code_259 = code_259
    end
    def grade_1_259=(grade_1_259)
       @grade_1_259 = grade_1_259
    end
    def grade_2_259=(grade_2_259)
       @grade_2_259 = grade_2_259
    end
    def grade_3_259=(grade_3_259)
       @grade_3_259 = grade_3_259
    end
    
    def average_259
       (@grade_1_259 + @grade_2_259 + @grade_3_259 )*1.0/3
    end
 
    def showInformation
       super
       puts "Code : #{code_259}\nAverage score: #{average_259};
        "
    end
 end
 
 # name, hair, age, height, weight, email, phone,nation, code, grade_1, grade_2, grade_3
 listStudent_259 = Array.new
 student_1_259 = Student.new("Thang","Blue",21,170, 71, "thanghoangminh149@gmail.com","123123123","VN",1911505310259, 8,8,8)
 student_2_259 = Student.new("Thanh","Red",19,172, 60, "buichithanh@gmail.com","0905222222","VN",1911505310266, 8,10,5)
 student_3_259 = Student.new("Cong","White",18,160, 80, "buichicong@gmail.com","09052456489","VN",1911505310262, 10,10,7)
 
 listStudent_259.push(student_1_259, student_2_259,student_3_259)
 puts 'Show student list :'
 for i in 0..(listStudent_259.length-1)
     puts "- Student #{i+1}"
     puts listStudent_259[i].showInformation
  end
 
  puts 'Sorted student list :'
 
  studentSort_259 = listStudent_259.sort_by{|student| [student.average_259]}.reverse
  for i in 0..(studentSort_259.length-1)
     puts "- Student #{i+1} :"
     puts studentSort_259[i].showInformation
  end