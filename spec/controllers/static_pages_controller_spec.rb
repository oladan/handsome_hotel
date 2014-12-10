require 'spec_helper'

describe StaticPagesController do
  before do
    @user = FactoryGirl.create :user
    sign_in @user
  end

  # testing static page access for signed user
  describe "GET 'help'" do
    it "returns http success" do
      get 'help'
      response.should be_success
    end
  end

end
