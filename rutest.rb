def get_numeric_input(prompt)
    loop do
      print prompt
      input = gets.chomp
      if input.match?(/^\d+$/)
        return input.to_i
      else
        puts "Invalid input. Please enter a numeric value."
      end
    end
  end
  
  def get_operation_input(prompt)
    loop do
      print prompt
      input = gets.chomp.downcase
      if %w[plus times].include?(input)
        return input
      else
        puts "Invalid input. Please enter 'plus' or 'times'."
      end
    end
  end
  
  num1 = get_numeric_input("Enter the first number: ")
  num2 = get_numeric_input("Enter the second number: ")
  operation = get_operation_input("Enter the operation ('plus' or 'times'): ")
  
  result = case operation
           when 'plus'
             num1 + num2
           when 'times'
             num1 * num2
           end
  
  puts "The result is: #{result}"  