class Post < ApplicationRecord
  CATEGORIES = %w[Rails StimulusJS TailwindCSS Heroku].freeze

  validates :title, :body, presence: true
end
