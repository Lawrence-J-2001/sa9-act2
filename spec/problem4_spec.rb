require 'problem4'

RSpec.describe BankAccount do
    let(:funds) { BankAccount.new(0) }

    describe "#deposit" do
    it "increases the balance by the deposit amount" do
        funds.deposit(250)
        expect(funds.balance).to eq(250)
    end
    end

    describe "#withdaw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
        funds.deposit(250)
        funds.withdraw(100)
        expect(funds.balance).to eq(150)
    end
    it "does not change the balance if insufficient funds" do
        funds.withdraw(20)
        expect(funds.balance).to eq(0)
    end
    end

    describe "#balance" do
    it "returns the current balance" do
        expect(funds.balance).to eq(0)
    end
    end
end