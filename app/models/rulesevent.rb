class Rulesevent < ApplicationRecord
  belongs_to :event
  belongs_to :rule
end
