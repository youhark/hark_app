class CreateJoinTableArticlePlaylist < ActiveRecord::Migration
  def change
    create_join_table :articles, :playlists do |t|
       t.index [:article_id, :playlist_id]
       t.index [:playlist_id, :article_id]
    end
  end
end
