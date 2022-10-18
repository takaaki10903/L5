class User < ApplicationRecord
    has_many :tweets
    validates :uid, presence: true, uniqueness: true
    validates :pass, presence: true
    
    has_many :likes
    has_many :like_tweets, through: :likes, source: :tweet
end
