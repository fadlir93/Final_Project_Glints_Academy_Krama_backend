# frozen_string_literal: true

class Place < ApplicationRecord
  has_one_attached :image
  has_many :rulesplace
  has_many :rules, through: :rulesplace
  validates :title, presence: true
  validates :desc, presence: true
  mount_uploader :image, ImageUploader
end
