require 'problem1'

RSpec.describe User do
    let(:username) { User.new("Jones") }
    
    describe "#log_in" do
    it "logs the user in" do
        username.log_in
        expect(username.log_in).to be true
    end
    end

    describe "#log_out" do
    it "logs the user out" do
        username.log_in
        username.log_out
        expect(username.log_out).to be false
    end
    end

    describe "#username" do
    it "returns the correct username" do
        username.username
        expect(username.username).to eq("Jones")
    end
    end
end
    