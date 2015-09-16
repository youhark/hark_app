class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|

      t.integer :user_id
      t.string :first_name
      t.string :last_name      
      t.string :avatar
      t.string :bio
      t.string :location
      t.string :link

      t.timestamps null: false
    end
  end
end
