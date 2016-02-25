require "rails_helper"

RSpec.describe SearchController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "renders facilities as JSON" do
      facility = FactoryGirl.create(:facility)
      get :show, id: facility
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #single_facility" do
    it "renders the single facility view" do
      get :single_facility, ID: 402
      expect(response).to render_template(:single_facility)
    end
  end
end
