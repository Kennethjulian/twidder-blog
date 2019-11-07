class Tweet < ApplicationRecord
    belongs_to :user
    has_many :tweet_tag
    has_many :tags, through: :tweet_tags
    validates :message, presence: true
    validates :message, length: {maximum: 220, too_long: "A tweet is only 220 max."}
end
