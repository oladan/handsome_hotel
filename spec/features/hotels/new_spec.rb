require 'spec_helper'
include Warden::Test::Helpers
Warden.test_mode!

feature "smth" do
  given(:user) { create(:user) }
  background(:each) { login_as(user) }
  after(:each) { Warden.test_reset! }
  scenario "smth" do
    visit '/hotels/new'
    expect(page.has_field?('Title')).to eq(true)
  end
end