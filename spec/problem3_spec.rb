require 'problem3'

RSpec.describe StringWrapper do
    let(:string) { StringWrapper.new("hello World")}

    describe "#reverse" do
    it "reverses the string" do
        
        expect(string.reverse).to eq("dlroW olleh")
    end
    end

    describe "#upcase" do
    it "converts the string to uppercase" do
        expect(string.upcase).to eq("HELLO WORLD")
    end
    end

    describe "#downcase" do
    it "converts the string to lowercase" do
        expect(string.downcase).to eq("hello world")
    end
    end
end