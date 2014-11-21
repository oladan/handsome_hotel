require 'spec_helper'
include Warden::Test::Helpers
Warden.test_mode!

feature "Hotel pages" do
  given(:user) { create(:user) }
  background(:each) { login_as(user) }
  after(:each) { Warden.test_reset! }
  
  scenario "Displays new hotel form" do
    visit '/hotels/new'
    expect(page.has_field?('Title')).to eq(true)
    expect(page.has_field?('Photo')).to eq(true)
    expect(page.has_field?('Address')).to eq(true)
  end
end

