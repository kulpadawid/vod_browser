class Movie < ApplicationRecord
  validates :title, :year, :time, :rating, presence: true
  validates :year, inclusion: {
    in: 1908..Time.now.year,
    message: 'wrong year'
  }
  validates :rating, inclusion: {
    in: 0..10,
    message: 'wrong rating'
  }
end
