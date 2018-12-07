# frozen_string_literal: true

class Event < ApplicationRecord
  has_many :rulesevent
  has_many :rules, through: :rulesevent
  validates :title, presence: true
  validates :desc, presence: true
  validates :img, presence: true
end
