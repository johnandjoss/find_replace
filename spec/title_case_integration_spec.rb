require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the RPS path', {:type => :feature}) do
  it('plays rock paper scissors') do
    visit('/')
    fill_in('player1', :with => 'rock')
    fill_in('player2', :with => 'scissors')
    click_button('Send')
    expect(page).to have_content('Player 1 wins!')
  end

end
