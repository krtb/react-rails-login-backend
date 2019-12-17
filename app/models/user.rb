class User < ApplicationRecord
    # bcrypt uses an attribute called has_secure_password We need to include this in our User model in order for bcrypt to work. 
    has_secure_password

    # VALIDATIONS FOR => USERNAME
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: { minimum: 4 }

    # VALIDATIONS FOR => EMAIL
    validates :email, presence: true
    validates :email, uniqueness: true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
