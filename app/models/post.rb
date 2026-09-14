class Post < ApplicationRecord
  belongs_to :user
  validates :title, :body, presence: true

  scope :published, -> { where("published_at <= ?", Time.current) }
  scope :visible_to, ->(user) { user ? published.or(where(user: user)) : published }
end
