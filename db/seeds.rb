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

jason = User.new
jason.email = 'jason@email.com'
jason.encrypted_password = BCrypt::Password.create('password') 
jason.save!(:validate => false)


profile_1 = Profile.create(
  first_name: 'Doug',  
  last_name: 'Steinberg',
  bio: 'I am a web developer and I am going craxzy!',
  avatar: 'https://s3.amazonaws.com/uifaces/faces/twitter/sauro/128.jpg',
  location: 'Florida',
  link: 'www.mypage.com'
)

profile_2 = Profile.create(
  first_name: 'Jason',  
  last_name: 'Beaton',
  bio: 'I am a web developer also and I am going craxzy!',
  avatar: 'https://s3.amazonaws.com/uifaces/faces/twitter/rem/128.jpg',
  location: 'New Hampshire',
  link: 'www.jason.com'
)

doug.profile = profile_1 
jason.profile = profile_2 


article_1 = Article.create(author: 'Tom',title: '10 things',length_in_seconds: 250,image_url:'/images/featured-photo.jpeg')
article_2 = Article.create(author: 'Dave',title: '20 things',length_in_seconds: 250,image_url:'/images/featured-photo-2.jpeg')
article_3 = Article.create(author: 'Jen',title: '30 things',length_in_seconds: 250,image_url:'/images/featured-photo-2.jpeg')
article_4 = Article.create(author: 'Kim',title: '40 things',length_in_seconds: 250,image_url:'/images/featured-photo.jpeg')


playlist_1 = Playlist.create(user_id: doug.id, title: 'Playlist 1', description: 'Lorem ipsum dolor sit amet.', featured: true)
playlist_2 = Playlist.create(user_id: doug.id, title: 'Playlist 1', description: 'Lorem ipsum dolor sit amet, consectetur.', featured: true)
playlist_3 = Playlist.create(user_id: doug.id, title: 'Playlist 1', description: 'Lorem ipsum dolor sit amet, blahhh.', featured: false)

category_1 = Category.create(name: "Science")
category_2 = Category.create(name: "Health")

article_1.categories << category_1
article_2.categories << category_2
article_3.categories << category_2
article_4.categories << category_1

playlist_1.articles << article_1 
playlist_1.articles << article_2 
playlist_2.articles << article_3 
playlist_2.articles << article_4 

doug.playlists << playlist_1
jason.playlists << playlist_2
jason.playlists << playlist_3

