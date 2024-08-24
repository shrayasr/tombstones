class Person < ApplicationRecord
  has_one_attached :photo

  validates :name, presence: true
  validates :date_of_passing, presence: true
  validates :about, presence: true, length: { minimum: 10 }
end
