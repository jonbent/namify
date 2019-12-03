class Game < ApplicationRecord
  serialize :guesses, JSON
  serialize :checks, Array
  belongs_to :user



  def correct_checker
    counter = 0
    self.guesses.each do |key, value|
      if key == value
        counter += 1
        self.checks << 1
      else
        self.checks << 0
      end
    end
    self.correct = counter
    self.total = self.guesses.size

  end

  def check_ratio
    self.correct.to_f / self.total
  end
end
