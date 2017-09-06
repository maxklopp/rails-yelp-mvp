class Restaurant < ApplicationRecord
  # validates :stars, inclusion: { in: [1, 2, 3], allow_nil: false }
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian", "spanish"] }
end
