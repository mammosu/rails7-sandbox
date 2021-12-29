class Post < ApplicationRecord
  belongs_to :category, optional: true
  has_many_attached :files

  validates :title, presence: true
end
