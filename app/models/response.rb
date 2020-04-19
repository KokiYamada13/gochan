class Response < ApplicationRecord
  belongs_to :topic

  validates :name, presence: true, length: { maximum: 10 }
  validates :content, presence: true, length: { maximum: 50 }
end
