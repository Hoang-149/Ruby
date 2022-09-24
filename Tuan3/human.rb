class Human
    @name_263;
    @hair_263;
    @age_263;
    @height_263;
    @weight_263;
    @email_263;
    @phone_263;
    @nation_263;
 
    def initialize(name_263, hair_263, age_263, height_263, weight_263, email_263, phone_263,nation_263)
       @name_263 = name_263;
       @hair_263 = hair_263;
       @age_263 = age_263;
       @height_263 = height_263;
       @weight_263 = weight_263;
       @email_263 = email_263;
       @phone_263 = phone_263;
       @nation_263 = nation_263;
    end
 
    attr_accessor :name_263, :hair_263, :age_263, :height_263, :weight_263, :email_263, :phone_263, :nation_263;
 
    def showInformation
       puts "\nName : #{name_263}||Hair: #{hair_263}||Age: #{age_263}||Height: #{height_263}||Weight: #{weight_263}||Email: #{email_263}||Phone: #{phone_263}||Nation: #{nation_263};"
     end
 end
 
 class Student < Human
    $code_263;
    $grade_1_263;
    $grade_2_263;
    $grade_3_263;
 
    def initialize(name_263, hair_263, age_263, height_263, weight_263, email_263, phone_263,nation_263, code_263, grade_1_263, grade_2_263, grade_3_263)
       super(name_263, hair_263, age_263, height_263, weight_263, email_263, phone_263,nation_263)
       @code_263 = code_263;
       @grade_1_263 = grade_1_263;
       @grade_2_263 = grade_2_263;
       @grade_3_263 = grade_3_263;
    end
 
    def code_263
       @code_263
    end
    def grade_1_263
       @grade_1_263
    end
    def grade_2_263
       @grade_2_263
    end
    def grade_3_263
       @grade_3_263
    end
    
    def code_263=(code_263)
       @code_263 = code_263
    end
    def grade_1_263=(grade_1_263)
       @grade_1_263 = grade_1_263
    end
    def grade_2_263=(grade_2_263)
       @grade_2_263 = grade_2_263
    end
    def grade_3_263=(grade_3_263)
       @grade_3_263 = grade_3_263
    end
    
    def average_263
       (@grade_1_263 + @grade_2_263 + @grade_3_263 )*1.0/3
    end
 
    def showInformation
       super
       puts "Code : #{code_263}\nAverage score: #{average_263};
        "
    end
 end
 
 # name, hair, age, height, weight, email, phone,nation, code, grade_1, grade_2, grade_3
 listStudent_263 = Array.new
 student_1_263 = Student.new("Thang","Blue",21,170, 71, "thanghoangminh149@gmail.com","123123123","VN",1911505310259, 8,8,8)
 student_2_263 = Student.new("Thanh","Red",19,172, 60, "buichithanh@gmail.com","0905222222","VN",1911505310266, 8,10,5)
 student_3_263 = Student.new("Cong","White",18,160, 80, "buichicong@gmail.com","09052456489","VN",1911505310262, 10,10,7)
 
 listStudent_263.push(student_1_263, student_2_263,student_3_263)
 puts 'Show student list :'
 for i in 0..(listStudent_263.length-1)
     puts "- Student #{i+1}"
     puts listStudent_263[i].showInformation
  end
 
  puts 'Sorted student list :'
 
  studentSort_263 = listStudent_263.sort_by{|student| [student.average_263]}.reverse
  for i in 0..(studentSort_263.length-1)
     puts "- Student #{i+1} :"
     puts studentSort_263[i].showInformation
  end