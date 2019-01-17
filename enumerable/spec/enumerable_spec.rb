
describe Enumerable do
  let(:arr) { [1,2,3,4]}



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