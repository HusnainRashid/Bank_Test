require_relative "../lib/techTest_1"

RSpec.describe "Test the deposit, withdrawal and statement of a bank account" do
  it "returns a deposit of £2000" do
    myAccount = BankAccount.new
    expect(myAccount.deposit(2000)).to eq 2000
  end

  it "returns a withdrawal of £1000" do
    myAccount = BankAccount.new
    expect(myAccount.withdraw(1000)).to eq -1000
  end

  it "returns a full statement" do
    myAccount = BankAccount.new
    myAccount.statement().to eq
    date || credit || debit || balance
    14/01/2023 || || 500.00 || 2500.00
    13/01/2023 || 2000.00 || || 3000.00
    10/01/2023 || 1000.00 || || 1000.00
  end
end
