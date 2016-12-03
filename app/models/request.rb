class Request < ApplicationRecord
  belongs_to :user
  validates :book_name, presence: true, length: {maximum: 50}
  validates :author, presence: true, length: {maximum: 50}
  validates :description, presence: true, length: {maximum: 60}

  scope :desc_created, -> {order created_at: :desc}
  self.per_page =2
end
