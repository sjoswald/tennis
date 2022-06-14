require './tennis.rb'

describe 'how to play tennis' do
    it "adds win to player 1" do
        expect(tennis_winner("player 1")).to eq(1)
    end
end