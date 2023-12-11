class Dog < ApplicationRecord
  validates :breed, :size, presence: true
end
