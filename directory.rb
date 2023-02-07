

def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name.capitalize!, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end 
  students
end 

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students) 
  students.each_with_index {|student, index| 
  if student[:name][0] == "T" 
    if student[:name].length < 12
      n = 0
      count = 1
      while n <= count do
        puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)" 
        n += 1
        count = 0
      end
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