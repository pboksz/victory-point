require 'spec_helper'

describe GamePlayController do
  let(:user) { create(:user) }
  let(:user_games) { create(:user_games, :user => user) }
  let(:game_play) { create(:game_play, :user_games => user_game) }
  before { sign_in user }

  describe '#index' do
    before { get :index, :user_game_id => user_game.id }

    it { assigns(:game_plays).should == [game_play] }
    it { response.should render_template :index }
  end

  describe '#new' do
    before { get :new, :user_game_id => user_game.id }

    it { assigns(:game_play).should be_a_new GamePlay }
    it { response.should render_template :new }
  end

  describe '#create' do
    let(:game_play_params) { { :number_of_players => number_of_players, :played_at => played_at } }
    let(:params) { { :user_game_id => user_game.id, :game_play => game_play_params } }

    context 'valid params' do
      let(:number_of_players) { 4 }
      let(:played_at) { Time.now }

      it { expect{ post :create, params }.to change{ GamePlay.count }.by(1) }

      it 'redirects' do
        post :create, params
        response.should redirect_to user_game_index_path
      end
    end

    context 'invalid params' do
      let(:number_of_players) { nil }
      let(:played_at) { nil }

      it { expect{ post :create, params }.to change{ GamePlay.count }.by(0) }

      it 'renders' do
        post :create, params
        response.should render_template :new
      end
    end
  end
end
