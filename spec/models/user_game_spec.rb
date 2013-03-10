require 'spec_helper'

describe UserGame do
  let(:user_game) { create(:user_game) }

  describe 'validates' do
    it 'factory builds correctly' do
      build(:user_game).should be_true
    end

    describe 'game_id' do
      context 'not present' do
        it 'has error' do
          build(:user_game, :game_id => nil).should have(1).error_on(:game_id)
        end
      end
    end

    describe 'user_id' do
      context 'not present' do
        it 'has error' do
          build(:user_game, :user_id => nil).should have(1).error_on(:user_id)
        end
      end

      context 'not unique' do
        it 'has error' do
          build(:user_game, :user => user_game.user, :game => user_game.game).should have(1).error_on(:user_id)
        end
      end
    end
  end

  describe 'delegates' do
    it 'name' do
      user_game.name.should == user_game.game.name
    end

    it 'year_published' do
      user_game.year_published.should == user_game.game.year_published
    end
  end

  describe 'counter_cache' do
    describe '#play_count' do
      let!(:game_play) { create(:game_play, :user_game => user_game) }
      before { user_game.reload }

      it 'increments the counter' do
        user_game.play_count.should == user_game.game_plays.count
      end

      it 'decrements the counter' do
        game_play.destroy
        user_game.reload
        user_game.play_count.should == user_game.game_plays.count
      end
    end
  end
end
