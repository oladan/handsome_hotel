require 'spec_helper'

describe "hotels/new.html.erb" do
  it 'displays hotel new form correctly' do
    expect(page.has_field?('Title')).to eq(true)
  end
end