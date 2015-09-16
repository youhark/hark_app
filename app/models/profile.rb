class Profile < ActiveRecord::Base
  validates :bio, length: {max: 200}
  # Bio has max character limit of 200

  # Require Bio, First Name, Last Name

end
