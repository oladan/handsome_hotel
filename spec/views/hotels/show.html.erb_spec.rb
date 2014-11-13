require 'spec_helper'

describe "hotels/show.html.erb" do
  it 'displays hotel details correctly' do
    assign(:hotel, Hotel.create(title: 'Test hotel'))
    render
    rendered.should have_selector("h1", text: 'Test hotel')
  end
end
