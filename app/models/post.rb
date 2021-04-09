class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }
  belongs_to :user
  validates :name, presence: true
end
