# frozen_string_literal: true

class Rulesplace < ApplicationRecord
  belongs_to :place
  belongs_to :rule
end
