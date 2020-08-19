require 'player'

describe Player do
  subject(:player_one) { Player.new('Player One') }
  subject(:player_two) { Player.new('Player Two') }

  describe '#name' do
    it 'returns a player name' do
      expect(player_one.name).to eq 'Player One'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player_one.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { player_one.receive_damage }.to change { player_one.hit_points }.by(-10)
    end
  end
end