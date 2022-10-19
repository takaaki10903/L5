class User < ApplicationRecord
    #has_many :tweets
    has_many :tweets, dependent: :destroy
    validates :uid, presence: true, uniqueness: true
    #validates :pass, presence: true
    validates :password, presence: true, confirmation: true
    attr_accessor :password, :password_confirmation
    def password=(val)
        if val.present?
            self.pass = BCrypt::Password.create(val)
        end
        @password = val
    end
    
    
    
    #has_many :likes
    has_many :likes, dependent: :destroy
    has_many :like_tweets, through: :likes, source: :tweet
end
