# frozen_string_literal: true

class Rule < ApplicationRecord
  has_many :rulesplace
  has_many :place, through: :rulesplace
  has_many :rulesevent
  has_many :event, through: :rulesevent
end
