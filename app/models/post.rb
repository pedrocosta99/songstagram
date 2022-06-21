class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :artist, presence: true

  has_one_attached :photo
end
