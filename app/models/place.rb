<<<<<<< HEAD
# frozen_string_literal: true

class Place < ApplicationRecord 
  has_many :rulesplace
  has_many :rules, through: :rulesplace
  validates :title, presence: true
  validates :desc, presence: true
  validates :img, presence: true
=======
class Place < ApplicationRecord
    has_one_attached :image
    has_many :rulesplace
    has_many :rules, through: :rulesplace
    validates :title, presence: true
    validates :desc, presence: true
    validates :img, presence:true
>>>>>>> bd63236f287e824a7e600d5e8f2d2998a84825bc
end
