require './tennis.rb'

describe 'how to play tennis' do
    it 'should return 1 when player 1 win' do
        expect(player1('win')).to eq(1)
    end
    it "should return 2 when player 1 win win" do
        expect(player1("win win")).to eq(2)
    end
    it "should return 1 when player 1 win loss" do
        expect(player1("win loss")).to eq(1)
    end
    it "should return 2 when player 1 win loss win" do
        expect(player1("win loss win")).to eq(2)
    end
    it 'should return 1 when player 2 win' do
        expect(player2('win')).to eq(1)
    end
    it "should return the score for two players" do
        expect(player1("win")).to eq(1)
        expect(player2("loss")).to eq(0)
    end
end