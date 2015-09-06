require 'bcrypt'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#uuu#
#

doug = User.new
doug.email = 'doug@email.com'
doug.encrypted_password = BCrypt::Password.create('password') 
doug.save!(:validate => false)

Article.create([
  {
    author: 'Tom',
    title: '10 things',
    length_in_seconds: 250,
    image_url:'/images/featured-photo.jpeg'  

  },
  {
    author: 'John',
    title: '10 awesome things',
    length_in_seconds: 250,
    image_url:'/images/featured-photo-2.jpeg'  
  },
  {
    author: 'Doug',
    title: '20 awesome things',
    length_in_seconds: 250,
    image_url:'/images/featured-photo.jpeg'  
  },
  {
    author: 'Jason',
    title: '30 awesome things',
    length_in_seconds: 250,
    image_url:'/images/featured-photo-2.jpeg'  
  }



])

playlist = Playlist.create([ 
	{
    user_id: doug.id, 
    title: 'Playlist 1', 
    description: 'Lorem ipsum dolor sit amet.', 
    featured: true
  },
  {
    user_id: doug.id, 
    title: 'Playlist 2', 
    description: 'Lorem ipsum dolor sit amet, consectetur.', 
    featured: true
  },
  {
    user_id: doug.id, 
    title: 'Playlist 3', 
    description: 'Lorem ipsum dolor sit amet, consectetur.', 
    featured: false
  }  
])
