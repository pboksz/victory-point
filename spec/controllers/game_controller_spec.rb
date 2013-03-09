require 'spec_helper'

describe GameController do
  let(:user) { create(:user) }
  before { sign_in user }

  describe '#index' do
    let(:games) { [stub] }

    before do
      Game.expects(:all).returns(games)
      get :index
    end

    it { assigns(:games).should == games }
    it { response.should render_template :index }
  end
end
