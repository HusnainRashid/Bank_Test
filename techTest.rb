class BankAccount
  def initialize
    @currentBalance = 0
    @records = "
    date || credit || debit || balance"
  end

  def deposit(cash)
    puts "How much would you like to deposit?"
    cash = gets.chomp.to_f
    puts "
    When do you want to deposit £#{cash}?
    Year: "
    year = gets.chomp
    puts "Month: "
    month = gets.chomp
    puts "Date: "
    date = gets.chomp
    full_date = date + "/" + month + "/" + year
    puts "
    Are you sure you want to deposit £#{cash} on the #{full_date}?
    Press 1 to confirm"
    choice = gets.chomp.to_i
    if choice == 1
      @currentBalance += cash
      record = "
    #{full_date} || #{cash} || || #{@currentBalance}"
      @records << record
      puts "Your new balance is £#{@currentBalance}. Would you like anything else?"
      puts "1 - Return to menu. Anything else to exit"
      choice_2 = gets.chomp.to_i
      if choice_2 == 1
        options()
      else
        exit()
      end
    else
      return options()
    end
  end

  def withdraw(cash)
    puts "How much would you like to withdraw?"
    cash = gets.chomp.to_f
    puts "
    When do you want to withdraw £#{cash}?
    Year: "
    year = gets.chomp
    puts "Month: "
    month = gets.chomp
    puts "Date: "
    date = gets.chomp
    full_date = date + "/" + month + "/" + year
    puts "
    Are you sure you want to withdraw £#{cash} on the #{full_date}?
    Press 1 to confirm"
    choice = gets.chomp.to_i
    if choice == 1
      @currentBalance -= cash
      record = "
    #{full_date} || || #{cash} || #{@currentBalance}"
      @records << record
      puts "Your new balance is £#{@currentBalance}. Would you like anything else?
      1 - Return to menu. Anything else to exit"
      choice_2 = gets.chomp.to_i
      if choice_2 == 1
        options()
      else
        exit()
      end
    else
      return options()
    end
  end

  def statement
    puts @records
    return options()
  end

  def options
    puts "
    Choose an option:
    1 - Deposit
    2 - Withdraw
    3 - Get balance
    4 - Exit
    "
    choice = gets.chomp.to_i
    case choice
    when 1
      deposit()
    when 2
      withdraw()
    when 3
      statement()
    when 4
      exit()
    else
      puts "Sorry, not a valid option"
      options()
    end
  end
end
