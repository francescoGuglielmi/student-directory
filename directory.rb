

def input_students
  students = []
  cohorts = []   # I initialize cohort
  puts "Please enter the name of the students."
  puts "To finish, just hit return "
  name = gets.chomp
  while !name.empty? do
    puts "what cohort is the student in? "
    cohort = gets.chomp
    if cohort == ""
      cohort = "november"
    end
    cohorts << cohort     # I shovel every cohort inside array cohorts
    puts "Please enter a hobby."
    hobby = gets.chomp
    puts "Please enter a gender identity."
    gender = gets.chomp
    puts "Please enter a nationality."
    nationality = gets.chomp
    students << {name: name, cohort: cohort.to_sym, hobby: hobby, gender: gender, nationality: nationality }
    puts "Now we have #{students.count} students"
    puts "Please enter the name of the students."
    puts "To finish, just hit return "
    name = gets.chomp
  end 
  students
   # Here I was supposed to "return cohorts" but if I do the console throws me an error 
   # "no implicit conversion from Symbol to Integer" I don't know how to fix this.
   # I was wishing to use that array to check students[:cohort] against it to print the names grouped in cohorts.
end 

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students) 
  students.each_with_index {|student, index| 
    if student[:name][0].upcase == "T" && student[:name].length < 12 
      n = 0
      count = 1
      while n <= count do
        puts "#{index + 1}. #{student[:name].center (student[:name].length + 6)} (#{student[:cohort]} cohort)" 
        n += 1
        count = 0
      end
    end   
  }
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end 

students = input_students
print_header
print(students)
print_footer(students)
