
# ALTERNATIVE METHODS TO print_student_list

def print_with_index
  @students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]}, hobby: #{student[:hobby]}, nationality: #{student[:nationality]} (#{student[:cohort]} cohort)"
  end
end

def print_T_villains
  @students.each do |student|
    if student[:name][0].upcase == "T"
      puts "#{student[:name]}, hobby: #{student[:hobby]}, #{student[:nationality]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_shortName_villains
  @students.each do |student|
    if student[:name].length < 12
      puts "#{student[:name]}, hobby:#{student[:hobby]}, #{student[:nationality]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_centered
  @students.each do |student| 
    puts "#{student[:name].center(student[:name].length + 8)} hobby: #{student[:hobby]}, #{student[:nationality]} (#{student[:cohort]} cohort)"
  end
end  

# RAW ESSENTIAL

@students = []

def interactive_menu
  loop do 
    print_menu 
    process(STDIN.gets.chomp)
  end
end

def print_menu 
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end
  
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit enter twice"
  name = STDIN.gets.chomp
  puts "Please enter a hobby"
  hobby = STDIN.gets.chomp
  puts "Please enter a nationality"
  nationality = STDIN.gets.chomp
  while !name.empty? do
    @students << {name: name, cohort: :november, hobby: hobby}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
  end
end

def show_students
  print_header
  print_students_list
  print_footer
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_students_list
  i = 0
  while i < @students.length do
    puts "#{@students[i][:name]}, hobby: #{@students[i][:hobby]}, nationality: #{@students[i][:nationality]} (#{@students[i][:cohort]} cohort)"
    i += 1
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end 

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort], student[:hobby], student[:nationality]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
    name, cohort, hobby = line.chomp.split(",")
    @students << {name: name, cohort: cohort.to_sym, hobby: hobby, nationality: nationality}
  end
  file.close
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit
  else
    puts "I don't know what you meant, try again."
  end
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exist?(filename)
    load_students(filename)
    puts "Loaded ``#{@students.count} from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end

# METHODS CALLED:

try_load_students
interactive_menu