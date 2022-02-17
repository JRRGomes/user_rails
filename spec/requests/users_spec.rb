require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/users#index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/users#show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/users#new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "returns http success" do
      post "/users#create", :params => { :user => {:name => "someone"} }
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "POST /edit" do
    it "returns http success" do
      post "/users/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /update" do
    it "returns http success" do
      post "/users/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /destroy" do
    it "returns http success" do
      delete "/users/destroy"
      expect(response).to have_http_status(:success)
    end
  end
end
