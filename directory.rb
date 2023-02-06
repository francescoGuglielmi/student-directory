students = [
 "The students of Villains Academy",
 "Dr. Hannibal Lecter",
 "Darth Vader",
 "Nurse Ratched",
 "Michael Corleone",
 "Alex DeLarge",
 "The Wicked Witch of the West",
 "Terminator",
 "Freddy Kruger",
 "The Joker"
 "Joffrey Baratheon",
 "Norman Bates"
]
puts "The students of Villains Academy"
puts "-------------"
students.each {|student| puts student }
# and now we count the number of students present
puts "Overall, we have #{students.count} great students"