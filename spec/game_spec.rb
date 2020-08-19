  require 'game'

  describe Game do
    let(:player_two) { double :player_two}

    describe '#attack' do
      it 'damages the player' do
        expect(player_two).to receive(:receive_damage)
        subject.attack(player_two)
      end
    end
end