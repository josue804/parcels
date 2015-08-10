require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_execeptions, false)

describe('using the site with valid information and employee discount', { :type => :feature }) do
  it('takes the user from login to the results page') do
    visit('/')
    fill_in('length', :with => 10)
    fill_in('height', :with => 10)
    fill_in('width',  :with => 10)
    choose('employee')
    check('wrap')
    click_button('submit')
    expect(page).to have_content("Cost to Ship: $8.00")
    expect(page).to have_content("Wrapping: $6.00")
    expect(page).to have_content("Total: $12.60")
  end
end
