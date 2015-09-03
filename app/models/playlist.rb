class Playlist < ActiveRecord::Base

  def self.featured 
    where(featured: true)
  end

  private

  def playlist_params
    params.require(:playlist).permit(:featured, :description, :user_id, :title)
  end
end
