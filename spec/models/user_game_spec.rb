require 'spec_helper'

describe UserGame do
  let(:user_games) { create(:user_games) }

  describe 'validates' do
    it 'factory builds correctly' do
      build(:user_games).should be_true
    end

    describe 'game_id' do
      context 'not present' do
        it 'has error' do
          build(:user_games, :game_id => nil).should have(1).error_on(:game_id)
        end
      end
    end

    describe 'user_id' do
      context 'not present' do
        it 'has error' do
          build(:user_games, :user_id => nil).should have(1).error_on(:user_id)
        end
      end

      context 'not unique' do
        it 'has error' do
          build(:user_games, :user => user_game.user, :games => user_game.game).should have(1).error_on(:user_id)
        end
      end
    end
  end

  describe 'delegates' do
    let(:games) { user_game.game }

    it 'name' do
      user_game.name.should == game.name
    end

    it 'year_published' do
      user_game.year_published.should == game.year_published
    end

    it 'player_range' do
      user_game.player_range.should == (game.minimum_players..game.maximum_players)
    end

    it 'player_range_string' do
      user_game.player_range_string.should == "#{game.minimum_players} - #{game.maximum_players}"
    end
  end

  describe 'counter_cache' do
    describe '#play_count' do
      let!(:game_play) { create(:game_play, :user_games => user_game) }
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

  describe 'scopes' do
    describe '#order_by_played_at' do
      subject { UserGame.order_by_plays }

      context 'different play counts' do
        let!(:user_game1) { create(:user_games, :play_count => 2) }
        let!(:user_game2) { create(:user_games, :play_count => 5) }

        it { should == [user_game2, user_game1] }
      end

      context 'tied play counts' do
        let!(:user_game1) { create(:user_games, :play_count => 2, :updated_at => 1.week.ago) }
        let!(:user_game2) { create(:user_games, :play_count => 2, :updated_at => Time.now) }

        it { should == [user_game2, user_game1] }
      end
    end
  end
end
