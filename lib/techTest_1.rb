class BankAccount
  def initialize
    @currentBalance = 0
    @records = ""
  end

  def deposit(cash, date)
    @currentBalance += cash
    full_record = "#{date} || #{cash} || || #{@currentBalance}
"
    @records << full_record
    return @currentBalance
  end

  def withdraw(cash, date)
    @currentBalance -= cash
    full_record = "#{date} || || #{cash} || #{@currentBalance}
"
    @records << full_record
    return @currentBalance
  end

  def statement()
    return "date || credit || debit || balance
" + @records
  end
end

myAccount = BankAccount.new
myAccount.withdraw(500, "14/01/2023")
myAccount.deposit(2000, "13/01/2023")
myAccount.deposit(1000, "10/01/2023")

puts myAccount.statement
