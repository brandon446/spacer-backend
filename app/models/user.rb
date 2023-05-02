class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }

    # skip avatar validation during create
    validates :avatar, presence: true, on: :update
end
