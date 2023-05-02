class Space < ApplicationRecord
    belongs_to :admin
    has_many :bookings
    has_many :users, through: :bookings
    has_many :reviews
    has_many :users, through: :reviews
    has_many :media
end
