class Prototype < ApplicationRecord
  has_many :comments
  has_one_attached :image


  validates :title, :catch_copy, :concept, :image, presence: true

end
