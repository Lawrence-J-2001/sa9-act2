require 'problem3'

RSpec.describe StringWrapper do
    let(:string) { StringWrapper.new("hello World")}

    describe "#reverse" do
    it "reverses the string" do
        string.reverse
        expect(string.reverse).to eq(string.reverse)
    end
    end

    describe "#upcase" do
    it "converts the string to uppercase" do
        string.upcase
        expect(string.upcase).to eq(string.upcase)
    end
    end

    describe "#downcase" do
    it "converts the string to lowercase" do
        string.upcase
        string.downcase
        expect(string.downcase).to eq(string.downcase)
    end
    end
end