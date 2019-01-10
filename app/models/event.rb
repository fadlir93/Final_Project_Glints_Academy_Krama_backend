# frozen_string_literal: true

class Event < ApplicationRecord
<<<<<<< HEAD
    has_one_attached :image
    has_many :rulesevent
    has_many :rules, through: :rulesevent
    validates :title, presence: true
    validates :desc, presence: true
    validates :img, presence: true
=======
  has_one_attached :image
  has_many :rulesevent
  has_many :rules, through: :rulesevent
  validates :title, presence: true
  validates :desc, presence: true
  mount_uploader :image, ImageUploader
>>>>>>> e5de5a8ab7ab55e24d63e1bdab063a587fa42bc5
end
