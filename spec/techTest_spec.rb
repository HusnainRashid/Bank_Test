require_relative "../lib/techTest_1"

RSpec.describe "Test the deposit, withdrawal and statement of a bank account" do
  it "returns an empty statement" do
    myAccount = BankAccount.new
    expect(myAccount.statement()).to eq "date || credit || debit || balance
"
  end

  it "returns a deposit of £2000" do
    myAccount = BankAccount.new
    expect(myAccount.deposit(2000, 21/10/1212)).to eq 2000
  end

  it "returns a withdrawal of £1000" do
    myAccount = BankAccount.new
    expect(myAccount.withdraw(1000, 21/10/1212)).to eq -1000
  end

  it "returns a withdraw statement" do
    myAccount = BankAccount.new
    myAccount.withdraw(500, "14/01/2023")
    expect(myAccount.statement()).to eq "date || credit || debit || balance
14/01/2023 || || 500 || -500
"
  end

  it "returns a deposit statement" do
    myAccount = BankAccount.new
    myAccount.deposit(1000, "20/01/2023")
    expect(myAccount.statement()).to eq "date || credit || debit || balance
20/01/2023 || 1000 || || 1000
"
  end

  it "returns multiple withdraw statements" do
    myAccount = BankAccount.new
    myAccount.withdraw(500, "14/01/2023")
    myAccount.withdraw(500, "15/01/2023")
    expect(myAccount.statement()).to eq "date || credit || debit || balance
14/01/2023 || || 500 || -500
15/01/2023 || || 500 || -1000
"
  end
  it "returns a full statement" do
    myAccount = BankAccount.new
    myAccount.deposit(1000, "10/01/2023")
    myAccount.deposit(2000, "13/01/2023")
    myAccount.withdraw(500, "14/01/2023")
    expect(myAccount.statement()).to eq "date || credit || debit || balance
10/01/2023 || 1000 || || 1000
13/01/2023 || 2000 || || 3000
14/01/2023 || || 500 || 2500
"
  end
end
