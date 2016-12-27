name, account_type, bank_balance, withdraw = ARGV

# This is the function that will be used throughout the script.
def bank_transaction(name, account_type, bank_balance, withdraw)
  puts "Hello, #{name}.  This is your #{account_type} account."
  puts "You have £#{bank_balance} in your account."
  puts "Your remaining available withdrawal amount is £#{withdraw}"
  puts "Thank you.\n"
end

# Giving the numbers directly to the function
puts "Online banking intelligence:"
bank_transaction("Tim Robinson", "current", 1034, 389)

# Giving the numbers directly and using math
puts "Online banking intelligence:"
bank_transaction("Tim Robinson", "current", 1034 + 100, (389 - 100) / 2)

# Manually putting name information in.
puts "Online banking intelligence:"
puts "Let's get you logged in!  What is your name?"
my_name = gets.chomp
puts "What type of account do you have?"
my_account = gets.chomp
puts "Logging you in!  One moment please."
bank_transaction(my_name, my_account, 1275, 300)

# Manually putting all information in.
puts "Online banking intelligence:"
puts "Let's get you logged in!  What is your name?"
my_name = gets.chomp
puts "What type of account do you have?"
my_account = gets.chomp
puts "How much is in your account?"
my_balance = gets.chomp.to_i
puts "How much did you withdraw last time?"
my_withdrawals = gets.chomp.to_i
puts "Logging you in!  One moment please."
bank_transaction(my_name, my_account, my_balance, my_withdrawals)
