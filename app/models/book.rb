class Book < ApplicationRecord
  # validates that each attribute isn't empty
    validates :title, presence: true
    validates :Author, presence: true
    #validates :Price, numericality: true,
    # validates that inputted price is a positive, real number
    validates_numericality_of :Price, :greater_than_or_equal => 0.0, presence: true
    validates :date, presence: true
end
