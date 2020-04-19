class Response < ApplicationRecord
  validates :name, presence: true, length: { maximum: 10 }
  validates :content, presence: true, length: { maximum: 50 }
end
