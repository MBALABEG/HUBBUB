class Hub < ActiveRecord::Base
    belongs_to :user
    # serialize :social_ids, Array
end
