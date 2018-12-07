class Place < ApplicationRecord
    has_many :rulesplace
    has_many :rules, through: :rulesplace
    validates :title, presence: true
    validates :desc, presence: true
    validates :img, presence:true
end
