class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
    	t.integer :user_id
      t.string :title
      t.string :description
      t.boolean :featured
      t.timestamps
    end
  end
end
