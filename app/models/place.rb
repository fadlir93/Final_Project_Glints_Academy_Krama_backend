class Place < ApplicationRecord
    has_many :rulesplace
    has_many :rules, through: :rulesplace
    validates :title_place, presence: true
    validates :desc_place, presence: true
    validates :img_place, presence:true
end
