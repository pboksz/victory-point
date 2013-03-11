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

    describe 'played_at' do
      context 'not present' do
        it 'has error' do
          build(:game_play, :played_at => '').should have(1).error_on(:played_at)
        end
      end
    end
  end

  describe 'scopes' do
    describe '#order_by_played_at' do
      let!(:game_play1) { create(:game_play, :played_at => 1.week.ago) }
      let!(:game_play2) { create(:game_play, :played_at => Time.now) }

      it 'sorts by most recently played' do
        GamePlay.order_by_played_at.should == [game_play2, game_play1]
      end
    end
  end
end
