class Order < ApplicationRecord
    has_many :lineitems, dependent: :destroy
end
