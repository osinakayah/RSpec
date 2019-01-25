require_relative '../lib/player'
describe Player do
  before(:each) do
    @player = Player.new("Osi", 1)
  end

  describe "#get_name" do
    it "give player a name" do
      expect(@player.get_name).to(eql("Osi"))
    end

    it "#get_index" do
      expect(@player.get_index).to(eql(1))
    end
  end
end