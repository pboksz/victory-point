require 'spec_helper'

describe Game do
  let(:game) { create(:game) }

  describe 'validates' do
    it 'factory builds correctly' do
      build(:game).should be_true
    end

    describe 'name' do
      context 'not present' do
        it 'has error' do
          build(:game, :name => '').should have(1).error_on(:name)
        end
      end

      context 'not unique' do
        it 'has error' do
          build(:game, :name => game.name).should have(1).error_on(:name)
        end
      end
    end

    describe 'year_published' do
      context 'not present' do
        it 'has error' do
          build(:game, :year_published => '').should have(1).error_on(:year_published)
        end
      end
    end

    describe 'minimum players' do
      context 'not present' do
        it 'has error' do
          build(:game, :minimum_players => '').should have(1).error_on(:minimum_players)
        end
      end
    end

    describe 'maximum players' do
      context 'not present' do
        it 'has error' do
          build(:game, :maximum_players => '').should have(1).error_on(:maximum_players)
        end
      end
    end
  end

  describe '#player_range' do
    it { game.player_range.should == (game.minimum_players..game.maximum_players) }
  end

  describe '#player_range_string' do
    it { game.player_range_string.should == "#{game.minimum_players} - #{game.maximum_players}" }
  end
end
