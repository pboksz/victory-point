require 'spec_helper'

describe User do
  let(:user) { create(:user) }

  describe '#gravatar_url' do
    it 'returns gratar url' do
      md5 = Digest::MD5::hexdigest(user.email.strip.downcase)
      user.gravatar_url.should include md5
    end
  end

  describe 'total_play_count' do
    subject { user.total_play_count }

    context 'user has no user_games' do
      it { should be_zero }
    end

    context 'user has user_games with play count' do
      let!(:user_game1) { create(:user_games, :user => user, :play_count => 2) }
      let!(:user_game2) { create(:user_games, :user => user, :play_count => 5) }

      it { should == 7 }
    end
  end
end
