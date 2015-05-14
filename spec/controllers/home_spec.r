##the rails helper takes care of a lot of things that help us write tests
#in the rails enviorment, make sure to include it
require "rails_helper"

##here we use describe and pass the object name of HomeController
#followed by us explicity saying that this is a test of a
#controller.
describe UsersController, :type => :controller do

  ##the syntax of these tests should be familiar, it's the same Behavior Driven
  #Development syntax we have seen with the Jasmine javascript
  #testing framework
  it "should get page for index" do

     ##Inside the it block is the meat of our tests
     #we use 'get' method to simulate a GET request,
     #asking for the view 'index'
     get :index

     ##expect is an example of how we assert something is true
     #in this case we expect the response from the get to be
     #a success
     expect(response).to be_success
     expect(response).to have_http_status(200)

  end
end