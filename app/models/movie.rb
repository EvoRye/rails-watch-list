class Movie < ApplicationRecord
  has_many :bookmarks
  # has_many :lists, through: :bookmarks

  validates :title, :overview, presence: true, uniqueness: true, allow_blank: false

  # before_destroy throw :abort if Bookmark.where(:movie_id).exists?
end
