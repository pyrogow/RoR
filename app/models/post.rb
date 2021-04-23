# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3, message: 'should be at least 3 characters' }
  belongs_to :user
  # validates :name, presence: true
end
