require 'spec_helper'

describe HomeController do
  describe 'index' do
    before do
      controller.expects(:authenticate_user!).never
      get :index
    end

    it { response.should render_template :index }
  end
end
