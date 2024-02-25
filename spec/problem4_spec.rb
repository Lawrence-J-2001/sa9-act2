require 'problem4'

RSpec.describe BankAccount do
    let(:balance) { BankAccount.new(0) }

    describe "#deposit" do
    it "increases the balance by the deposit amount" do
        balance.deposit(250)
        expect(balance.balance).to eq(250)
    end
    end

    describe "#withdaw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
        balance.deposit(250)
        balance.withdraw(100)
        expect(balance.balance).to eq(150)
    end
    it "does not change the balance if insufficient funds" do
        balance.withdraw(20)
        expect(balance.balance).to eq(balance.balance)
    end
    end

    describe "#balance" do
    it "returns the current balance" do
        expect(balance.balance).to eq(balance.balance)
    end
    end
end