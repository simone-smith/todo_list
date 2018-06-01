require 'list'

describe List do
  subject(:list) { described_class.new }

  describe '#intialize' do
    it 'has an empty array of items' do
      expect(list.todo_list).to eq []
    end
  end

  describe '#add_item' do
    it 'adds an item to the todo_list array' do
      expect(list.add("groceries")).to eq ["groceries"]
    end
  end

  describe '#todo_list' do
    it 'shows the list of todo items' do
      list.add("groceries")
      list.add("clean flat")
      expect(list.todo_list).to eq ["groceries", "clean flat"]
    end
  end
end
