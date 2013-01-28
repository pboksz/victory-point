describe 'user login' do
  let(:user) { create(:user, :email => 'email@email.com', :password => 'password') } # FactoryGirl create

  it 'signs user in' do
    visit 'users/sign_in' # Capybara to visit URL
    fill_in 'Login', :with => user.email # Capybara fill in input field
    fill_in 'Password', :with => user.password
    click_on 'Sign In' # Capybara click on link or button
    page.should have_content 'Success' # Capybara check page HTML content
  end
end
