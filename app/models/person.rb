class Person < ApplicationRecord
  validates :name, presence: true
  validates :date_of_passing, presence: true
  validates :about, presence: true, length: { minimum: 10 }
end
