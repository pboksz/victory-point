require 'spec_helper'

describe UserGameController do
  let(:user) { create(:user) }
  let!(:user_games) { create(:user_games, :user => user) }
  before { sign_in user }

  describe '#index' do
    before { get :index }

    it { assigns(:current_games).should == [user_game] }
    it { response.should render_template :index }
  end

  describe '#new' do
    let!(:other_game) { create(:games) }
    before { get :new }

    it 'all_games does not have games the player already added' do
      assigns(:all_games).should include other_game
      assigns(:all_games).should_not include user_game.game
    end

    it { assigns(:games).should be_a_new UserGame }
    it { response.should render_template :new }
  end

  describe '#create' do
    let(:params) { { :id => user_game.id, :user_games => user_game_params } }

    context 'valid params' do
      let(:games) { create(:games) }
      let(:user_game_params) { { :game_id => game.id } }

      it { expect{ post :create, params }.to change{ UserGame.count }.by(1) }

      it 'redirects' do
        post :create, params
        response.should redirect_to user_game_index_path
      end
    end

    context 'invalid params' do
      let(:user_game_params) { { :game_id => nil } }

      it { expect{ post :create, params }.to change{ UserGame.count }.by(0) }

      it 'renders' do
        post :create, params
        response.should render_template :new
      end
    end
  end

  describe '#destory' do
    let(:params) { { :id => user_game.id } }

    it { expect{ delete :destroy, params }.to change{ UserGame.count }.by(-1) }

    it 'redirects' do
      delete :destroy, params
      response.should redirect_to user_game_index_path
    end
  end
end
