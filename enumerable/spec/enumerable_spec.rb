require_relative '../lib/enumerable'
describe Enumerable do
  let(:arr) { [1,2,3,4]}

  describe "my_each_with_index method" do
    it "list each element in enumerable with index" do
      expect{|b| arr.my_each_with_index(&b) }.to yield_successive_args([1,0], [2,1], [3,2], [4,3])
    end
  end
  
  describe "Select items greater than 1" do
    it "Create new Array value greater than 3" do
      expect(arr.my_select{|i| i > 3 }).to eq([4])
    end
  end
  
  describe "my_each method" do
  
    it "list each element in enmerable" do
      expect{|b| arr.my_each(&b) }.to yield_successive_args(1,2,3,4)
    end
  end
  
  describe '#my_all?' do
    it 'Returns true if all elements are bigger than 3' do
      expect(arr.my_all? { |i| i > 3 }).to eq(false)
    end
    it 'Returns true if all elements are less than 100' do
      expect(arr.my_all? { |i| i < 100 }).to eq(true)
    end
  end
  
  describe '#my_any?' do
    it 'Returns true if any element is bigger than 3' do
      expect(arr.my_any? { |i| i > 3 }).to eq(true)
    end
  
    it 'Returns false if all elements are bigger than 0' do
      expect(arr.my_any? { |i| i <= 0 }).to eq(false)
    end
  end
  
  describe "#my_none" do
    it "Returns true if none of the element is bigger than 3" do
      expect(["ant", "bear", "cat"].my_none? {|word| word.length == 5}).to be true
    end

    it "Returns false if none of the element is bigger than 3" do
      expect(["ant", "bear", "cat"].my_none? {|word| word.length >= 4}).to be false
    end
  end

  describe "COunt method" do
    it "Returns count of the enumerable" do
      expect(arr.my_count).to eq(4)
    end
  end

  describe "my_map" do
    it "Return a new array" do
      expect(arr.my_map{|i| i * 2}).to eq([2,4, 6, 8])
    end
    it "Returns a new array of zeros" do
      by_two = Proc.new{|i| i * 2}
      expect(arr.my_map(by_two)).to eq([2, 4, 6, 8])
    end
  end

  describe "my_inject" do
    it "Returns the sum of the array" do
      expect(arr.my_inject{|sum, n| sum + n}).to eq(10)
    end
  end



end