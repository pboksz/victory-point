require 'spec_helper'

describe UserGameExpansion do
  let(:user_game_expansion) { create(:user_game_expansion) }

  describe 'validates' do
    it 'factory builds correctly' do
      build(:user_game_expansion).should be_true
    end

    describe 'game_expansion_id' do
      context 'not present' do
        it 'has error' do
          build(:user_game_expansion, :game_expansion_id => nil).should have(1).error_on(:game_expansion_id)
        end
      end
    end

    describe 'user_game_id' do
      context 'not present' do
        it 'has error' do
          build(:user_game_expansion, :user_game_id => nil).should have(1).error_on(:user_game_id)
        end
      end

      context 'not unique' do
        it 'has error' do
          build(:user_game_expansion, :user_game => user_game_expansion.user_game, :game_expansion => user_game_expansion.game_expansion).should have(1).error_on(:user_game_id)
        end
      end
    end
  end

  describe 'delegates' do
    let(:game_expansion) { user_game_expansion.game_expansion }

    it 'name' do
      user_game_expansion.name.should == game_expansion.name
    end

    it 'year_published' do
      user_game_expansion.year_published.should == game_expansion.year_published
    end
  end
end
