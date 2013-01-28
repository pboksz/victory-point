require 'spec_helper'

feature 'jasmine is running' do
  it 'checks jasmine' do
    visit '/jasmine' # Capybara to visit URL
    page.html.should have_content 'Jasmine' # Capybara check page HTML content
  end
end
