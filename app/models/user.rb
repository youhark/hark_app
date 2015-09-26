class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :omniauthable, :invitable, :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  devise :omniauth_providers => [:facebook, :twitter]


  has_many :playlists
  has_one :profile
end
