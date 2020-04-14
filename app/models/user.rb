class User < ApplicationRecord
    validates :name, presence: true, length: { maximum: 10 }
    validates :email, presence: true, uniqueness: true, length: { maximum: 255 }

    has_secure_password
end