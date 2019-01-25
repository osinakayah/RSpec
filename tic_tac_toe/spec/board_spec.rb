require_relative '../lib/player'
require_relative '../lib/board'

describe Board do
  subject(:board) do
    player1 = Player.new("John Doe", 1)
    player2 = Player.new("Jane Doe", 2)
    Board.new(player1, player2)
  end

  describe "#switch_turn" do
    it "Test if switching position" do
      current_player = board.current_player
      board.switch_turn
      expect(board.current_player).not_to eql(current_player)
    end
  end

  describe "#is_winning_move" do

    it "if position is 1,2,3" do
      board.positions(['X','X','X',4,5,6,7,8,9])
      expect(board.is_winning_move).to be true
    end
    it "if position is 1,2,3" do
      board.positions([1,2,3,'X','X','X',7,8,9])
      expect(board.is_winning_move).to be true
    end
    it "if position is 1,2,3" do
      board.positions([1,2,3,4,5,6,'X','X','X'])
      expect(board.is_winning_move).to be true
    end
    it "if position is 1,2,3" do
      board.positions(['X',2,3,4,'X',6,7,8,'X'])
      expect(board.is_winning_move).to be true
    end
    it "if position is 1,2,3" do
      board.positions([1,2,'X',4,'X',6,'X',8,9])
      expect(board.is_winning_move).to be true
    end
    it "if position is 1,2,3" do
      board.positions(['X',2,3,'X',5,6,'X',8,9])
      expect(board.is_winning_move).to be true
    end
    it "if position is 1,2,3" do
      board.positions([1,'X',3,4,'X',6,7,'X',9])
      expect(board.is_winning_move).to be true
    end
    it "if position is 1,2,3" do
      board.positions([1,2,'X',4,5,'X',7,8,'X'])
      expect(board.is_winning_move).to be true
    end
  end
end