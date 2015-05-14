class RemoveRowsFromHubs < ActiveRecord::Migration
  def change
    remove_column :hubs, :twitter_ids, :string
    remove_column :hubs, :instagram_ids, :string
    add_column :hubs, :social_ids, :text, array:true, default: []
  end
end
