class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true, numericality: { only_integer: true, less_than_or_equal_to: 2020 }
  validates :plot, presence: true, length: { in: 10..500 }
  validates :director, length: { minimum: 2 }, presence: true

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
end
