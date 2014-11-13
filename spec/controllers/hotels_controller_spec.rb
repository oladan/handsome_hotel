require 'spec_helper'

describe HotelsController do
  let(:user) { create(:user) }
  before do
    sign_in user
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "POST 'create'" do
    context "with valid attributes" do 
      it "creates a new hotel" do 
        expect{ 
          post :create, hotel: FactoryGirl.attributes_for(:hotel) 
        }.to change(Hotel,:count).by(1) 
      end 
      it "redirects to the new hotel" do 
        post :create, hotel: FactoryGirl.attributes_for(:hotel) 
        response.should redirect_to Hotel.last 
      end 
    end
    context "with invalid attributes" do 
      it "does not save the new hotel" do 
        expect{ 
          post :create, hotel: FactoryGirl.attributes_for(:invalid_hotel) 
        }.to_not change(Hotel,:count) 
      end 
      it "re-renders the new method" do 
        post :create, hotel: FactoryGirl.attributes_for(:invalid_hotel) 
        response.should render_template :new 
      end 
    end 
  end

  describe "GET 'show'" do
    it "assigns the requested hotel to @hotel" do
      hotel = create(:hotel)
      get :show, id: hotel
      assigns(:hotel).should eq(hotel)
    end
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

end
