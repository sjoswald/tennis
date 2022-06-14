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
end