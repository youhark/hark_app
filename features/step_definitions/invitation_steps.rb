require 'bcrypt'

Given(/^There is a user "(.*?)"$/) do |emailAddress|
  user = User.new
  user.email = emailAddress
  user.encrypted_password = BCrypt::Password.create('password')
  user.save!(validate: false)
end
