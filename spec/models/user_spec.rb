require "rails_helper"

## note that due to the way we included this in our gemfile
#  namely 'require: false', means that we must explicitly include
#  it here
require 'shoulda/matchers'

describe User do

  # I am using both factoryGirl and the let to create a in memory.
  # We do not have to.
  #
  let!(:user_without_email){User.new(name: "Test")}

    it "has an email" do
      user = FactoryGirl.build(:a_user)
      expect(user.email).to_not be_nil
    end

    it "has a name" do
      user = FactoryGirl.build(:a_user)
      expect(user.name).to_not be_nil
    end

    it "has an email" do
      expect(subject).to respond_to(:email)
    end

    it "has a name" do
      expect(subject).to respond_to(:name)
    end

    it "raises an error without an email" do
      expect{user_without_email.save!}.to raise_error(ActiveRecord::RecordInvalid)
    end

    context "when a User is initialized with a name of Test" do
      subject(:user){User.new(name: "Test", email: "Test@yahoo.com",password: "Testing101")}

      it 'changes the number of User by 1' do
        expect{subject.save!}.to change{User.count}.by(1)
      end
    end

    ## our new tests that examine our User model to determine if
    #  a validation exists requiring the presence of the attribute
    it { is_expected.to validate_presence_of(:email) }

     #add test for have_many association
    it { is_expected.to have_many(:hubs) }

end