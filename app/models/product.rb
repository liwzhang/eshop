class Product < ApplicationRecord
    has_many :lineitems
    before_destroy :empty_cart
    validates :name, :description, :image, presence: true
    validates :name, uniqueness: true
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :image, allow_blank: true, format: {with: %r{\.(gif|jpg|png)\Z}i, message: 'must be GIF, JPG, or PNG'}

    def empty_cart
        if self.lineitems.empty?
            return true
        else
            errors.add(:base, "Line Items Present")
            return false
        end
    end
end
