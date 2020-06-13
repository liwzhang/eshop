class Product < ApplicationRecord
    validates :name, :description, :image, presence: true
    validates :name, uniqueness: true
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :image, allow_blank: true, format: {with: %r{\.(gif|jpg|png)\Z}i, message: 'must be GIF, JPG, or PNG'}
end
