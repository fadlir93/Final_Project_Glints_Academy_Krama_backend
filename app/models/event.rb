class Event < ApplicationRecord
    has_one_attached :image
    has_many :rulesevent
    has_many :rules, through: :rulesevent
    validates :title_event, presence: true
    validates :desc_event, presence: true
    validates :img_event, presence: true
end
