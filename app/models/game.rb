class Game < ApplicationRecord
  serialize :guesses, Hash
  belongs_to :user

end
