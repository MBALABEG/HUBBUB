##the rails helper takes care of a lot of things that help us write tests
#in the rails enviorment, make sure to include it
require "rails_helper"

##here we use describe and pass the object name of HubsController
#followed by us explicity saying that this is a test of a controller.
include HubsHelper
describe HubsController, :type => :controller do
  # hub = FactoryGirl.build_stubbed(:a_hub) #factorygirl failed

  describe "GET show" do
     let!(:hub){Hub.create(title: "Melvin", description: "hi", social_ids: ['hi', 'hi'])}

      before(:each){
        get :show, id: hub.id
      }

      it "is successful" do
        expect(response).to be_success
      end

      it "renders the show view file" do
        expect(response).to render_template(:show)
      end

      it "assigns the requested hub to a variable Hub" do
        expect(assigns(:hub)).to be_a(Hub)
      end

       it "should get page for show" do
         expect(response).to be_success
         expect(response).to have_http_status(200)
      end
  end

  # describe "GET new" do

  #   before(:each){
  #     get :new
  #   }

  #   it "returns http success" do
  #     expect(response).to have_http_status(:success)
  #   end

  #   it "assigns a new hub to a variable Hub" do
  #     expect(assigns(:hub)).to be_a(Hub)
  #   end

  #   it "doesn't save any new records" do
  #     expect{get :new}.to change(Hub, :count).by(0)
  #   end
  # end

  describe "POST create" do
    context "when form is valid" do
      let!(:valid_attributes) do
        {title: "Melvin", description: "hi", social_ids: ['hi', 'hi']}
      end

      it "added a hub record" do
        expect{post :create, hub: valid_attributes}.to change(Hub, :count).by(1)
      end
    end
    end
  end

