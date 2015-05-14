#NOTE: Factory Girl Expects that each class inherits from ActiveRecord

#All of our factory declarations get wrapped in a FactoryGirl.define block
FactoryGirl.define do

  #we define a factory name, and then we specify the class
  factory :a_user, class: User do

    #these setup the attributes, each declaration is a method call
    email "x@y.com"
    name "gemini"

  end
end