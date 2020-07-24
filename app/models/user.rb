class User < ApplicationRecord
    has_many :logs
    # has_many :meals, through: :log
    # has_many :sleeps, through: :log
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false}


end
