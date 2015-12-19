
puts "Please enter your first number"

first_number = gets.chomp.to_f
puts "Please 3enterenter your second number"

second_number = gets.chomp.to_f


def multiply(first_number, second_number)
  first_number.to_f * second_number.to_f
end


puts "what do you want to do: 1) multiply 2) divide 3)subtract 4) find the rememder"

prompt = gets.chomp.to_i

if prompt == 1
  puts "you have chosen to use #{first_number} and #{second_number}"
  puts "your result is #{multiply(first_number, second_number)}"

else
  put "done"
end
