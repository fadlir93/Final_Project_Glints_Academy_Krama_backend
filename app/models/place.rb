class Place < ApplicationRecord
    has_many :rulesplace
    has_many :rules, through: :rulesplace
end
