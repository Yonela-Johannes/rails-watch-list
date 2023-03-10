class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6,maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }
    validates :movie_id, uniqueness: {scope: :list_id, message: "is already in the list"}
end
