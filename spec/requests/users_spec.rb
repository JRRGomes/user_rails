require 'rails_helper' 

RSpec.describe "Users", type: :request do
  describe "GET /index" do
    context 'when requesting /users' do
      it "returns http success" do
        get user_path
        expect(response).to have_http_status(:success)
      end
    end
  end

  describe "GET /show" do
    let(:user) { create(:user) }
    it "returns http success" do
      get user_path(user.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get users_new_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    context 'when requesting users#create' do
      it "returns http success" do
        post "/users#create", :params => { :user => {:name => "someone"} } #users_path
        expect(response).to have_http_status(:redirect)
      end

      context 'when creating user with valid atributes' do
        it 'should create new user' do
          expect { post '/users', params: { user: attributes_for(:user) } }.to change(User, :count).by(1)
        end
      end
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
