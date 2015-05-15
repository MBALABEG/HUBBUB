##the rails helper takes care of a lot of things that help us write tests
#in the rails enviorment, make sure to include it
require "rails_helper"

##here we use describe and pass the object name of UsersController
#followed by us explicity saying that this is a test of a controller.
describe UsersController, :type => :controller do

 describe "GET new" do

    before(:each){
      get :new
    }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "renders the new template" do
      expect(response).to render_template("new")
    end

    it "assigns a new user to a variable User" do
      expect(assigns(:user)).to be_a(User)
    end

    it "doesn't save any new records" do
      expect{get :new}.to change(User, :count).by(0)
    end

  it "should get page for new" do
     get :new
     expect(response).to be_success
     expect(response).to have_http_status(200)

  end
end

  describe "POST create" do
    context "when form is valid" do
      let!(:valid_attributes) do
        {name: "Test", email: "Test@yahoo.com",password: "Testing101"}
      end

      it "added a user record" do
        expect{post :create, user: valid_attributes}.to change(User, :count).by(1)
      end
    end

    context "when form is invalid" do
      let!(:invalid_attributes) do
        {name: nil, email: nil, password: "Testing101"}
      end

      it "does not add a user record" do
        expect{post :create, user: invalid_attributes}.to change(User, :count).by(0)
      end

    end
  end
end