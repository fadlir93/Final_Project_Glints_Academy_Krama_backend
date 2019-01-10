<<<<<<< HEAD
class Place < ApplicationRecord
    has_one_attached :image
    has_many :rulesplace
    has_many :rules, through: :rulesplace
    validates :title, presence: true
    validates :desc, presence: true
    validates :img, presence:true
=======
# frozen_string_literal: true

class Place < ApplicationRecord
  has_one_attached :image
  has_many :rulesplace
  has_many :rules, through: :rulesplace
  validates :title, presence: true
  validates :desc, presence: true
  mount_uploader :image, ImageUploader
>>>>>>> e5de5a8ab7ab55e24d63e1bdab063a587fa42bc5
end
