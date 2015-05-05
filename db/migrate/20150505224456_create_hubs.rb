class CreateHubs < ActiveRecord::Migration
  def change
    create_table :hubs do |t|
      t.string :title
      t.string :twitter_ids
      t.string :instagram_ids
      t.string :description
      t.user :references

      t.timestamps null: false
    end
  end
end
