require "pstore"
require "tty-table"

class Employee
  attr_accessor :first_name, :last_name, :salary, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end
end

employee = Employee.new(first_name: "Ryan", last_name: "Jackson", salary: "500000", active: true)

pp employee

puts "EMPLOYEES"
puts "[INSERT TABLE LATER]"
pp "[C]reate  [R]ead  [U]pdate  [D]elete  [Q]uit:"
input_selection = gets.chomp
pp input_selection
if input_selection == "C" || input_selection == "c"
  print "Enter first name: "
  input_first_name = gets.chomp
  print "Enter last name: " 
  input_last_name = gets.chomp
  print "Enter salary: "
  input_salary = gets.chomp
  print "Enter active (true or false): "
  input_active = gets.chomp
  employee = Employee.new(first_name: input_first_name, last_name: input_last_name, salary: input_salary, active: input_active)
  pp employee
# elsif input_selection == "R"

# elsif input_selection == "U"

# elsif input_selection == "D"

end
