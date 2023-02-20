class BankAccount
  def initialize
    @currentBalance = 0
    @records = "
    date || credit || debit || balance"
  end

  def deposit(cash)
    @currentBalance += cash
    return @currentBalance
  end

  def withdraw(cash)
    @currentBalance -= cash
    return @currentBalance
  end

  def date(date, month, year)
    time = Time.new
    time.strftime("#{date}/%d/%Y")
  end

  def statement
    puts @records
    return options()
  end
end
