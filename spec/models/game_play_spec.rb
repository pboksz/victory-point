require 'spec_helper'

describe GamePlay do
  describe 'validations' do
    it 'factory builds correctly' do
      build(:game_play).should be_true
    end

    describe 'number_of_players' do
      context 'not present' do
        it 'has error' do
          build(:game_play, :number_of_players => '').should have(1).error_on(:number_of_players)
        end
      end
    end
  end
end
