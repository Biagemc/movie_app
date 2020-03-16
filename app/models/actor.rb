class Actor < ApplicationRecord
  validates :first_name, length: { minimum: 2 }, presence: true
  validates :last_name, length: { minimum: 2 }, presence: true
  validates :known_for, presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than: 13 }

  belongs_to :movie
end
