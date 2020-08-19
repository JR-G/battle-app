  require 'game'

  describe Game do
    let(:player_one) { double :player_one}
    let(:player_two) { double :player_two}
    subject { described_class.new(player_one, player_two) }

    it 'takes two instances of Player class' do
      expect(subject.player_one).to eq player_one
      expect(subject.player_two).to eq player_two
    end

    describe '#attack' do
      it 'damages the player' do
        expect(player_two).to receive(:receive_damage)
        subject.attack(player_two)
      end
    end
end