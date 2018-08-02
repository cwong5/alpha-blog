class Article < ApplicationRecord
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true, length: {minimum: 2, maximum: 60}
  validates :description, presence: true, length: {minimum: 10, maximum: 600}
  validates :user_id, presence: true

  
end