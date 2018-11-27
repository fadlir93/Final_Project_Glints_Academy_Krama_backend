class Rule < ApplicationRecord
    has_many :rulesplace
    has_many :place, through: :rulesplace
end
