class Association < ApplicationRecord
  serialize :clues, JSON
  belongs_to :user
end
