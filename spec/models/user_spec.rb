require 'spec_helper'

describe User do
  describe '#gravatar_url' do
    let(:user) { create(:user) }

    it 'returns gratar url' do
      md5 = Digest::MD5::hexdigest(user.email.strip.downcase)
      user.gravatar_url.should include md5
    end
  end
end
