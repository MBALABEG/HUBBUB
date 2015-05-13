#Note that we are using Postgres and therefore ActiveRecord
#we don't define attributes inside the classes but rather in the database tables
class User < ActiveRecord::Base
	has_secure_password
    has_many :hubs
end
