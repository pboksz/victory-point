require 'spec_helper'

describe Game do
  describe 'validates' do
    it 'factory builds correctly' do
      build(:game).should be_true
    end

    describe 'name' do
      let(:game) { create(:game) }

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
  end
end
