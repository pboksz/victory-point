require 'spec_helper'

describe UserGame do
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
      let(:user_game) { create(:user_game) }

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
    let(:user_game) { create(:user_game) }

    it 'name' do
      user_game.name.should == user_game.game.name
    end

    it 'year_published' do
      user_game.year_published.should == user_game.game.year_published
    end
  end
end
