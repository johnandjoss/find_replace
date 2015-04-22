require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the sentencer', {:type => :feature}) do
  it('finds and replaces words in a sentence') do
    visit('/')
    fill_in('sentence', :with => 'the carpet is driving the car')
    fill_in('oldword', :with => 'car')
    fill_in('newword', :with => 'monster')
    click_button('Send')
    expect(page).to have_content('the monsterpet is driving the monster')
  end
end
