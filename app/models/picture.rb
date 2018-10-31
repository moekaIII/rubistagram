class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :title, :content, length: { in: 1..140 }
  validates :image, presence: true
  belongs_to :user
  has_many :favorites, dependent: :destroy
end
