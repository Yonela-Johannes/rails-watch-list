class List < ApplicationRecord
  has_many :bookmarks
  has_many :movie
  validates :name, presence: true
  validates :name, uniqueness: true
end
