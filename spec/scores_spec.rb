require './lib/scores'

describe Scores do
  context '#score' do
    it 'add 1 to player 1 score' do
      score = Scores.new
      score.score(1, 'win')
      expect(score.player1).to eq 1
    end

    it 'add 1 to player 2 score' do
      score = Scores.new
      score.score(2, 'win')
      expect(score.player2).to eq 1
    end

    it 'add 1 to number of draws matches' do
      score = Scores.new
      score.score(1, '')
      expect(score.draw).to eq 1
    end
  end
end
