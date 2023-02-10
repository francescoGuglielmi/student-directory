@students = []
  
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit enter twice"
  @students
  name = gets.chomp
  puts "Please enter a hobby"
  hobby = gets.chomp
  puts "Please enter a nationality"
  nationality = gets.chomp
  while !name.empty? do
    @students << {name: name, cohort: :november, hobby: hobby}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end 

def print_students_list
  i = 0
  while i < array.length do
    puts "#{@students[i][:name]}, hobby: #{@students[i][:hobby]}, (#{@students[i][:cohort]} cohort)"
    i += 1
  end
end

def print_with_index
  @students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_T_villains
  @students.each do |student|
    if student[:name][0].upcase == "T"
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_shortName_villains
  @students.each do |student|
    if student[:name].length < 12
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_centered
  @students.each do |student| 
    puts "#{student[:name].center(student[:name].length + 8)} hobby: #{student[:hobby]} (#{student[:cohort]} cohort)"
  end
end  

def print_menu 
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit
  else
    puts "I don't know what you meant, try again."
  end
end

def interactive_menu
  @students
  loop do 
    print_menu 
    process(gets.chomp)
  end
end


interactive_menu