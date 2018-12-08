# frozen_string_literal: true

class Event < ApplicationRecord
<<<<<<< HEAD
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
    validates :img, presence: true
>>>>>>> bd63236f287e824a7e600d5e8f2d2998a84825bc
end
