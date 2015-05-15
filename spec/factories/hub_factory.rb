#NOTE: Factory Girl Expects that each class inherits from ActiveRecord

#All of our factory declarations get wrapped in a FactoryGirl.define block
FactoryGirl.define do

  #we define a factory name, and then we specify the class
  factory :a_hub, class: Hub do

    #these setup the attributes, each declaration is a method call
    title "this is a new hub"
    description "This is a test hub"
     user_id 4
     social_ids  "twitter_id"

  end
end