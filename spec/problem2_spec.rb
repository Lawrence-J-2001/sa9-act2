require 'problem2'

RSpec.describe TodoList do
    let(:a_todo) { TodoList.new }

    describe "#add" do
    it "adds a todo to the list" do
        a_todo.add("Buy eggs")
        expect(a_todo.todos).to include ("Buy eggs")
    end
    end

    describe "#remove" do
    it "removes a todo from the list" do
        a_todo.add("Buy eggs")
        a_todo.remove("Buy eggs")
        expect(a_todo.todos).not_to include ("Buy eggs")
    end
    end

    describe "#todos" do
    it "returns all todos" do
        a_todo.add("Buy eggs")
        expect(a_todo.todos).to eq(["Buy eggs"])
    end
    end
end