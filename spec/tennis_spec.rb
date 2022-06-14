require './tennis.rb'

describe 'how to play tennis' do
    it "returns win for player 1 and loss for player 2" do
        expect(tennis_winner("player_1")).to eq("1, 0") 
    end
    it "returns win for player 2 and loss for player 1" do
        expect(tennis_winner("player_2")).to eq("0, 1") 
    end
    it "returns two wins for player one and two losses for player two" do
        expect(tennis_winner('player_1 player_1')).to eq("2, 0")
    end
    it "returns four wins for player one and one win for player two" do
        expect(tennis_winner("player_1 player_2 player_1 player_1 player_1")).to eq("4, 1")
    end
end

describe 'how to score tennis' do
    it "wins when player 1 scores 4 points" do
        expect(match_outcome(4, 0)).to eq("Player 1 wins")
    end
    it "wins when player 2 scores 4 points" do
        expect(match_outcome(0, 4)).to eq("Player 2 wins")
    end
    it "wins when player 1 scores 5 points and player 2 scores 3 points" do
        expect(match_outcome(5, 3)).to eq("Player 1 wins")
    end
    it "wins when player 1 scores 4 points and player 2 scores 6 points" do
        expect(match_outcome(4, 6)).to eq("Player 2 wins")
    end
    it "returns deuce when both players score 3" do
        expect(match_outcome(3, 3)).to eq("Deuce")
    end
    it "returns deuce when both players score 6" do
        expect(match_outcome(6, 6)).to eq("Deuce")
    end
    it "returns advantage when player 1 has 4 and player 2 has 3 points" do
        expect(match_outcome(4, 3)).to eq("Advantage player 1")
    end
    it "returns advantage when player 1 has 6 and player 2 has 5 points" do
        expect(match_outcome(6, 5)).to eq("Advantage player 1")
    end
    it "returns advantage when player 2 has 4 and player 1 has 3 points" do
        expect(match_outcome(3, 4)).to eq("Advantage player 2")
    end
    it "returns advantage when player 2 has 7 and player 1 has 6 points" do
        expect(match_outcome(6, 7)).to eq("Advantage player 2")
    end
end