class Comment < ApplicationRecord
  belongs_to :post
  validates :content, presence: true, length: {minimum: 5}
  broadcasts_to :post
end
