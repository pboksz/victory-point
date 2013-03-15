require 'spec_helper'

describe GameExpansion do
  let(:game_expansion) { create(:game_expansion) }

  describe 'validates' do
    it 'factory builds correctly' do
      build(:game_expansion).should be_true
    end

    describe 'name' do
      context 'not present' do
        it 'has error' do
          build(:game_expansion, :name => '').should have(1).error_on(:name)
        end
      end

      context 'not unique' do
        it 'has error' do
          build(:game_expansion, :name => game.expansion.name).should have(1).error_on(:name)
        end
      end
    end

    describe 'year_published' do
      context 'not present' do
        it 'has error' do
          build(:game_expansion, :year_published => '').should have(1).error_on(:year_published)
        end
      end
    end

    describe 'minimum players' do
      context 'not present' do
        it 'has error' do
          build(:game_expansion, :minimum_players => '').should have(1).error_on(:minimum_players)
        end
      end
    end

    describe 'maximum players' do
      context 'not present' do
        it 'has error' do
          build(:game_expansion, :maximum_players => '').should have(1).error_on(:maximum_players)
        end
      end
    end
  end
end
