require "rails_helper"

## note that due to the way we included this in our gemfile
#  namely 'require: false', means that we must explicitly include
#  it here
require 'shoulda/matchers'

describe Hub do
   it "has a title" do
      hub = FactoryGirl.build(:a_hub)
      expect(hub.title).to_not be_nil
    end

    it "has a description" do
      hub = FactoryGirl.build(:a_hub)
      expect(hub.description).to_not be_nil
    end

    it "has a user_id" do
      hub = FactoryGirl.build(:a_hub)
      expect(hub.user_id).to_not be_nil
    end

     it "has a instagram_ids field" do
      hub = FactoryGirl.build(:a_hub)
      expect(hub.social_ids).to_not be_nil
    end

    context "when a Hub is initialized with a title of Test" do
      subject(:hub){Hub.new(title: "Test", description: "A description", user_id: 5)}

      it 'changes the number of Hubs by 1' do
        expect{subject.save!}.to change{Hub.count}.by(1)
      end
    end

 #add test for belong_to association
    it { is_expected.to belong_to(:user) }

end