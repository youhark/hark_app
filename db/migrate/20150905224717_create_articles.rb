class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string 'author'
      t.string 'title'
      t.integer 'length_in_seconds'
      t.string 'image_url'
      t.timestamps null: false
    end
  end
end
