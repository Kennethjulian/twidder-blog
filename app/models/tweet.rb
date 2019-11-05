class Tweet < ApplicationRecord
    belongs_to :user
    validates :message, presence: true
    validates :message, length: {maximum: 220, too_long: "A tweet is only 220 max."}
end
