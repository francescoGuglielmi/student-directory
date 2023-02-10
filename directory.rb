
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november, hobby: "scare"},
  {name: "Darth Vader", cohort: :november, hobby: "killing"},
  {name: "Nurse Ratched", cohort: :november, hobby: "scare"},
  {name: "Michael Corleone", cohort: :november, hobby: "killing"},
  {name: "Alex DeLarge", cohort: :november, hobby: "unknown"},
  {name: "The Wicked Witch of the West", cohort: :november, hobby: "unknown"},
  {name: "Terminator", cohort: :november, hobby: "killing"},
  {name: "Freddy Krueger", cohort: :november, hobby: "scare"},
  {name: "The Joker", cohort: :november, hobby: "scare"},
  {name: "Joffrey Baratheon", cohort: :november, hobby: "killing"},
  {name: "Norman Bates", cohort: :november, hobby: "unknown"}
  ]
  
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit enter twice"
  students = []
  name = gets.chomp
  puts "Please enter a hobby"
  hobby = gets.chomp
  puts "Please enter a nationality"
  nationality = gets.chomp
  while !name.empty? {
    students << {name: name, cohort: :november, hobby: hobby}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  }
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_footer(array)
  puts "Overall, we have #{array.count} great students"
end 

def print(array)
  i = 0
  while i < array.length do
    puts "#{array[i][:name]}, hobby: #{array[i][:hobby]}, (#{array[i][:cohort]} cohort)"
    i += 1
  end
end

def print_with_index(array)
  array.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_T_villains(array)
  array.each do |student|
    if student[:name][0].upcase == "T"
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_shortName_villains(array)
  array.each do |student|
    if student[:name].length < 12
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_centered(array)
  array.each do |student| 
    puts "#{student[:name].center(student[:name].length + 8)} hobby: #{student[:hobby]} (#{student[:cohort]} cohort)"
  end
end  

students = input_students
print_header
print(students)
print_footer(students)
