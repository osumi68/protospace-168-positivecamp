class Prototype < ApplicationRecord
  has_many :comments
  has_one_attached :image
  belongs_to :user


  validates :title, :catch_copy, :concept, :image, presence: true

end
