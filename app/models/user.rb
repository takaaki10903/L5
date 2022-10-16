class User < ApplicationRecord
    has_many :tweets
    validates :uid, presence: true, uniqueness: true
    validates :pass, presence: true
end
