require 'spec_helper'

describe Game do
  describe 'validations' do
    it 'factory builds correctly' do
      build(:game).should be_true
    end

    describe 'name' do
      let(:game) { create(:game) }

      it 'is present' do
        build(:game, :name => '').should have(1).error_on(:name)
      end

      it 'is unique' do
        build(:game, :name => game.name).should have(1).error_on(:name)
      end
    end

    describe 'year_published' do
      it 'is present' do
        build(:game, :year_published => '').should have(1).error_on(:year_published)
      end
    end
  end
end
